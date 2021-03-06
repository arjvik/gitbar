#!/bin/bash
ICON="iVBORw0KGgoAAAANSUhEUgAAAX8AAAF/CAMAAACWmjlVAAAAM1BMVEX////////////////////////////////////////////////////////////////////lEOhHAAAAEHRSTlMA8DAQ0KDAQGCA4CCQUHCw+BUOAQAACLtJREFUeAHs0YNhRQEAwMBv4+0/bW0zxWWE3Oi3tl8vNsN548VuPx19Y1rOx8PdjntXvqvVZnikzcqZ72iyGJ5otnTny1sPz7Tz52ubHodnm009+sr9s+GFZluXkv1XjSc+BfsBBPsBBPsBZPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBtPt7APt7APt7APt7APt7APt7APt7APt7APt7APt7APt7APt7APt7APt7APt7APt7APt7APt7APt7APt7AP8BAAAgAAAEAIAABAEAIAAABACAAAD4N38BpPtncwBNV28BpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsBpPsB1PsB9PsB9PsB9PsB9Ps/DnDC3n0gWYoDURR9QgaE+7n/1c6Eb28yWnGJRG8FXed28W2J1s7ee21lBvDx+wOkun1ps96fGcDB7wjws+WtAAHC8fsDSGsLEIDn9wfQWgIE4Pn9AdRngC/4gQDLHiAAz29W5+HdJL8/gGqgAH7+GQDlRwMUOADPzwbIOxqA56cDLAYG4Pn5ADcZgOfnAxQwAM/PB1gNDMDz8wEaGIDn5wOsBgSIyG92ybMGBAjJn7I824wLwPPzDwDZgAAB+e2Sbx8gQEB+y9xrMD4Az1/k3GJAgHD8dso7AwKE47cu7woQIBy/rfKuGReA5+f9TwMCROO3Rd51AwJE4zdx/nwAnt8y588H4PltBf39AXh+3v9jQIBo/LZxzz/5ADy/dXmXDAgQjd8+cu4wAwJE47ck5y7jAvD8/AuwakCAePx2y7fduAA8P/8BQDIuAM/PX4AWIEBEfquaAUB+s2MGIPmtagYA+c2WGYDkt6YZAOQ3u2cAkt9smQFIfkt5BgD5zcoMwPDPADz/DMDzm+1LgAA0/3wayvP7144IAXh+/84cIADP71+qOUAAnt+/VXED+Pl5/yVAAD8/79+2AAH8/Ly/RQjg5+f9IwTw8/P+EQL4+Xn/CAH8/Lx/hAB+ft4/QgA/P+8fIYCfn/ePEMDPz/tHCODn5/0jBPDz8/4RAvj5ef8IAfz8vH+EAH5+3j9CAD8/7x8hgJ+f948QwM/P+wcIkIsF8H9iAIAf8H9wAIAf8H9wAIAf8PcFKLVv6/+7+tmAAAP4AX9ngHau+mrruQMBcrGI/rbJsaUOCQDwo/7+ADrOEQEAftbfH0BHGxAA4If9/QG0pQEBAH7Y3x9gKQMCAPywvz9AbgMCAPyAvyMAcDtbgB/wf1gAgB/w9wcY7JOOEef08v6jAqSRf8vcLYz/qADrwBN1FovjPyzAOe5Y5RbIf1iAvI86UWezQP7jAmyjrkB7JP+BAfYx91VcLZK/IwD8C1Df55/k2phHgPQ+//qUp0BVuux9/stTbueZpP4+/yQ95wLU3uf/eczbcHZrf5//LT3lJUCVvc9/1XPeBHqjf37O/ZzTG/31HH97of8u8n5607+F8/dv+ifjNv3LgKSBr//F/vGaTuM2n/+cuozbfP6/KRu3+fr3kD6v8+9y7h5xY8vLqM33P+9Xfv6eHnM78/zG75+YXXJtGXRXxTI//2UuP4fjYT2Cf8qP+A7u6fhgP4S/3U/49GvPjtfVMfx3ObaP+yFyeZe/df7J/+04giKMf8r01b9KQADa3/8a7DOAHwjA+vu/g3sN4AcD8P5pAW+cVCU2AO9vJWN//1gdkcP5W8kcPx+A97eSOX4+AO9vJXP8fADe39JKPPQCAWh//wvhbsP4+QC8v5VVv9haRvLzAXh/s/bTAsfHBvPzAXh/s7bpB7uaAfxAANzfLNXt0BfLV00G8AMBUP8vt7fe73W9e2+7mQH8QADAH1qVuADTv0pcgOlfJS7A9K8SF2D6V4kLMP2rxAWY/lXiAkz/KnEBpn+VuADTv0pcgOlfJS7A9K8SF2D6V4kLMP2rxAWY/lXiAkz/KnEBpn+VuADTv0pcgOlfJS7A9K8SF2D6V4kLMP2rxAWY/lUKHWDv2eEP8IcMkLrk+MImwB8ywCfrV1t3nj9wgHTpN8snzR84QDkcd0wG+IMGaNn7L+T5+QDxv79dpcABmuNfCPBHDVAydlInz88HSAt3Wg/Pzwe4gKPKaX4+gP+8niMB/GEDpEN/uw7whw3QkfPyeH4+gP/Azg3gDxrglGcJ4I8Z4JBnHeAPGaDItQPgDxnglm8F4I8Y4JBvJ8AfMMAu51aAP2CAj7wD+AMG6PJuB/jjBbjkXQP44wVY5d0J8vMBeP8O8McLIMSf5+cD8P48Px9gAf15fj7A6vcH+fkAvH8D+OMF6PKugPx8AP7njcDPByhybgH4IwbI8u0G+CMG2OTbh+PnA/A/dA7CzwfI8mwD+fkA/AWoAPwxA+xybAX5+QD8L0AD+KMG2DP435/n5wN08rNfnp8PsIBvffL8fICSwasPz88HqOBfv1RpBujs/XpngO3p/DPA5OcfAw6AP1wA/wkcVxrHPwOky3H8D8AfNoC1Qz/fto/mnwGsHg59gD9sAGtb1rc7+m6T3xHAt09fv7C/zmI2+V0B/Ev/tUcXBw5AARBCiUzc+q927bTufyJQAm/x1OlfCgjQKyCA+8cDuF+AgADuHw/gfgECArh/PID7BQgI4P7xAO4XICCA+8cDuF+AgADuHw/gfgECArh/PID7BQjcKID7BQgIcKP7BQgIcKP7BQgIcKP7BQjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjFBAjfzLZz91ebza9ivwChmAChmAChmAChmAChmAChmAChmAChmAChmAChmAChmAChmAChmAChmAChmAChmAChmAChmAChmADhPxNgcfqwA/+brU/vt1ny39l0cXqn3YwB2fJNgWwZlE0zOT1rfpgxNAkOWTwizBe71ZYL7Q7H02m600+YOAAAAABJRU5ErkJggg=="
dir=$(cat ~/.gitbar-save)
name="$(echo "$dir"|rev|cut -d/ -f2|rev)"
branch="$(cat "$dir/HEAD"|cut -d/ -f3)"
echo "$name | image='$ICON' imageWidth=24"
echo "---"
echo "On branch <span color='yellow'>$branch</span>"

lastcommit="$(git -C "$dir/.." log --oneline | head -n1 | cut -d" " -f2-)"
echo "Last commit: <span color='cyan'>$lastcommit</span>"

echo "Checkout branch"
readarray -t branches < <(git -C "$dir/.." branch | cut -c 3-)
for nbranch in ${branches[@]}; do
	nb="${nbranch}"
	if [ "$nb" != "$branch" ]; then
		echo "--$nb | refresh=true terminal=false bash='git -C \"$dir/..\" checkout $nb'"
	fi
done

if [ ${#branches[@]} -eq 1 ]; then
	echo "--No other branches available"
fi


# PLEASE FIX STATUS
echo "---"
echo -n "Status: "
[[ $(git -C "$dir/.." diff --shortstat 2> /dev/null | tail -n1) != "" ]] && echo "<span color='red'>dirty</span>" || echo "<span color='green'>clean</span>"


echo "---"
readarray -t staged < <(git -C "$dir/.." status --porcelain | grep "^\w" | cut -c 4-)
stagedcount=${#staged[@]}
echo "Staged changes: $stagedcount"
if [ "$stagedcount" -ne 0 ]; then
	echo "--(Click to unstage)"
fi
for stagedfile in "${staged[@]}"; do
	stagedfile=$(sed -e 's/^"//' -e 's/"$//' <<<"$stagedfile")
	echo "--$stagedfile | refresh=true terminal=false bash='git -C \"$dir/..\" reset HEAD \"$dir/../$stagedfile\"'"
done

readarray -t unstaged < <(git -C "$dir/.." status --porcelain | grep "^.\w" | cut -c 4-)
unstagedcount=${#unstaged[@]}
echo "Unstaged changes: $unstagedcount"
if [ "$unstagedcount" -ne 0 ]; then
	echo "--(Click to stage)"
fi
for unstagedfile in "${unstaged[@]}"; do
	unstagedfile=$(sed -e 's/^"//' -e 's/"$//' <<<"$unstagedfile")
	echo "--$unstagedfile | refresh=true terminal=false bash='git -C \"$dir/..\" add \"$dir/../$unstagedfile\"'"
done

readarray -t untracked < <(git -C "$dir/.." status --porcelain | grep "^??" | cut -c 4-)
untrackedcount="${#untracked[@]}"
echo "Untracked changes: $untrackedcount"
if [ "$untrackedcount" -ne 0 ]; then
	echo "--(Click to stage)"
fi
for untrackedfile in "${untracked[@]}"; do
	untrackedfile=$(sed -e 's/^"//' -e 's/"$//' <<<"$untrackedfile")
	echo "--$untrackedfile | refresh=true terminal=false bash='git -C \"$dir/..\" add \"$dir/../$untrackedfile\"'"
done

echo "---"
echo "Add all files to index | refresh=true terminal=false bash='git -C \"$dir/..\" add -A'"
echo "Commit changes | refresh=true terminal=true bash='git -C \"$dir/..\" commit && exit'"
echo "Amend to previous commit | refresh=true terminal=true bash='git -C \"$dir/..\" commit --amend && exit'"
echo "Push to origin | refresh=true terminal=true bash='git -C \"$dir/..\" push origin $branch && exit'"
echo "Pull from origin | refresh=true terminal=false bash='git -C \"$dir/..\" pull origin $branch'"

echo "More options"
echo "--Delete repo from gitbar | refresh=true terminal=false bash='echo \"$dir\" >> ~/.gitbar-ignore'"

echo "---"
echo "Launch repo in terminal | refresh=true terminal=true bash='cd $dir/..'"

echo "---"
echo "Switch repository"
readarray -t gitdirs < <(find ~/ -name ".git" 2>/dev/null)
for ndir in "${gitdirs[@]}"; do
	if ! grep -Fxq "$ndir" ~/.gitbar-ignore ; then
		name="$(echo $ndir|rev|cut -d/ -f2|rev)"
		echo "--$name | refresh=true terminal=false bash='echo \"$ndir\" > ~/.gitbar-save'"
	fi
done

echo "Refresh | refresh=true"
