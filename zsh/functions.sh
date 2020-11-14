mdpdf() {
 pandoc --variable urlcolor=cyan $1 --pdf-engine wkhtmltopdf -o $2
}

mem() {
    pmap $(pgrep $1 -n) | gawk '/total/ { a=strtonum($2); b=int(a/1024); printf b"MB" };'
}

du_sort_path(){
    input=$1
    echo "INPUT $input"
    command=$(du -hs "$1"/* | sort -h)
    echo $command
    
}
