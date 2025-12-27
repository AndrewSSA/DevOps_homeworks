INPUT_FILE="/var/log/nginx/access.log"
OUTPUT_FILE="output.txt"

tr 'A-Za-z' 'K-ZA-Jk-za-j' < "$INPUT_FILE" > "$OUTPUT_FILE"
