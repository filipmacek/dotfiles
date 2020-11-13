mdpdf() {
 pandoc --variable urlcolor=cyan $1 --pdf-engine wkhtmltopdf -o $2
}

mem() {
    pmap $(pgrep $1 -n) | gawk '/total/ { a=strtonum($2); b=int(a/1024); printf b"MB" };'
}

helm_delete_deployed(){
    
}
