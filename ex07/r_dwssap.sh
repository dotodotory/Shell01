cat /etc/passwd | grep -v '#' | awk -F : 'NR%2 == 0 {print $1}' | rev | sort -r | tr "\n" " " | sed 's+ +, +g' | sed 's+, $+.+g' | tr -d '\n'
