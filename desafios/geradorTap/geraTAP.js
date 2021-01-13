const gerar = document.getElementById("gera");

function geraPDF() {
    var doc = new jsPDF()
    doc.text("gera", 10, 10)
    doc.save('TAP.pdf')
}