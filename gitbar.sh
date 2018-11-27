#!/bin/bash
ICON=$(cat "/home/arjvik/.local/share/icons/Git-Icon-White.png" | base64 -w 0)
dir=$(cat ~/.gitbar-save)
name="$(echo $dir|rev|cut -d/ -f2|rev)"
branch="$(cat $dir/HEAD|cut -d/ -f3)"
echo "$name | image='$ICON' imageWidth=24"
echo "---"
echo "On branch <span color='yellow'>$branch</span>"

lastcommit="$(git -C $dir/.. log --oneline | head -n1 | cut -d" " -f2-)"
echo "Last commit: <span color='lightblue'>$lastcommit</span>"

echo "Checkout branch"
branches=($(git -C $dir/.. branch | cut -c 3-))
for nbranch in ${branches[@]}; do
	nb="${nbranch}"
	if [ "$nb" != "$branch" ]; then
		echo "--$nb | refresh=true terminal=false bash='git -C $dir/.. checkout $nb'"
	fi
done

if [ ${#branches[@]} -eq 1 ]; then
	echo "--No other branches available"
fi


# PLEASE FIX STATUS
echo "---"
echo -n "Status: "
[[ $(git -C $dir/.. diff --shortstat 2> /dev/null | tail -n1) != "" ]] && echo "dirty" || echo "clean"


echo "---"
staged=($(git -C $dir/.. status --porcelain | grep "^\w" | cut -c 4-))
stagedcount=${#staged[@]}
echo "Staged changes: $stagedcount"
for stagedfile in ${staged[@]}; do
	echo "--$stagedfile"
done

unstaged=($(git -C $dir/.. status --porcelain | grep "^ \w" | cut -c 4-))
unstagedcount=${#unstaged[@]}
echo "Unstaged changes: $unstagedcount"
echo "--(Click to stage)"
for unstagedfile in ${unstaged[@]}; do
	echo "--$unstagedfile | refresh=true terminal=false bash='git -C $dir/.. add $dir/../$unstagedfile'"
done

untracked=($(git -C $dir/.. status --porcelain | grep "^??" | cut -c 4-))
untrackedcount=${#untracked[@]}
echo "Untracked changes: $untrackedcount"
echo "--(Click to stage)"
for untrackedfile in ${untracked[@]}; do
	echo "--$untrackedfile | refresh=true terminal=false bash='git -C $dir/.. add $dir/../$untrackedfile'"
done

echo "---"
echo "Add all files | refresh=true terminal=false bash='git -C $dir/.. add .'"
echo "Commit | refresh=true terminal=true bash='git -C $dir/.. commit && exit'"
echo "Push | refresh=true terminal=true bash='git -C $dir/.. push origin $branch' && exit"
echo "Pull | refresh=true terminal=false bash='git -C $dir/.. pull origin $branch'"

echo "---"
echo "Switch repository"
gitdirs=($(find ~/ -name ".git" 2>/dev/null))
for ndir in ${gitdirs[@]}; do
	name="$(echo $ndir|rev|cut -d/ -f2|rev)"
	echo "--$name | refresh=true terminal=false bash='echo $ndir > ~/.gitbar-save'"
	branch="$(cat $ndir/HEAD|cut -d/ -f3)"
done

echo "Refresh | refresh=true"
