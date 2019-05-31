# Defined in /home/asvnpr/.config/fish/functions/pretty_csv.fish @ line 1
function pretty_csv
	column -t -s, -n $argv | less -F -S -X -K
end
