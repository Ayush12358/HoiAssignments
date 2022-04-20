sed -i '/^$/d' quotes.txt
uniq quotes.txt > quotes1.txt && cp quotes1.txt quotes.txt && rm quotes1.txt