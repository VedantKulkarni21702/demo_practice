function multiplyfor() {
    var n = document.getElementById('numfor').value;
    var out = "";
    for (var i = 1; i < 11; i++) {
    out = out + i + " * " + n + " = " + i * n + "<br/>";
    }
    document.getElementById("displayfor").innerHTML = out;
}
function multiplywhile() {
    var n = document.getElementById('numwhile').value;
    var i = 1;
    var out = "";
    while (i<11) {
    out = out + i + " * " + n + " = " + i * n + "<br/>";
    i++;
    }
    document.getElementById("displaywhile").innerHTML = out;
}
function multiplydowhile() {
    var n = document.getElementById('numdowhile').value;
    var i = 1;
    var out = "";
    do{
    out = out + i + " * " + n + " = " + i * n + "<br/>";
    i++; 
    }while (i<11)
    document.getElementById("displaydowhile").innerHTML = out;
}