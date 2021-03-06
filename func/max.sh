# max(${array[@]} => $largest)
max() {
    local array=("$@")
    if (( ${#array[@]} > "1" )); then # If array consists of one single element it's already the largest one
	for (( i=0; i < ${#array[@]}; i++ )); do
	    gtoe "${array[$i]}" "${largest}" && largest="${array[$i]}"
	done
    else
	largest="${array[0]}"
    fi
    echo "$largest"
}
