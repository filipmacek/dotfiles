mdpdf() {
 pandoc --variable urlcolor=cyan $1 --pdf-engine wkhtmltopdf -o $2
}
