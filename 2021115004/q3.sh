## a
wc -c quotes.txt | awk '{print $1}'

## b
wc -l quotes.txt | awk '{print $1}'

## c
wc -w quotes.txt | awk '{print $1}'

## d
i=0
while IFS= read line; do
    ((i=i+1))
    echo "Line No: $i - Count of Words: $(echo $line | wc -c)"
done < quotes.txt 

## e
cat quotes.txt | tr ' ' '\n' | tr -d '~' | tr "[A-Z]" "[a-z]" | tr -d '[:punct:]' | sort | uniq -c > quotes1.txt
while IFS= read line; do
    a=$(echo $line | awk '{print $1}')
    b=$(echo $line | awk '{print $2}')
    echo "Word: $b - Count of repetition: $a"
done < quotes1.txt
rm quotes1.txt