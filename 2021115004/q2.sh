while IFS= read line; do
    var2="$(echo $line | cut -d "~" -f 2-)"
    var3="$(echo $var2 | cut -d " " -f 2-)"
    var1="$(echo $line | cut -d "~" -f 1)"
    var2=" once said,\""
    var4="\""
    echo "${var3}${var2}${var1}${var4}"
done < quotes.txt 