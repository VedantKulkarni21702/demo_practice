
    const prompt = require('prompt-sync')({sigint: true});
    var n = prompt('Enter a number?');
  
    
    console.log("Using for loop");
    var out = "";
    for (var i = 1; i < 11; i++) {
    out = out + i + " * " + n + " = " + i * n + "\n";
    //console.log(out);
    //console.log("");
    }
    console.log(out);
    

    console.log("Using while loop");
    var i = 1;
    var out = "";
    while (i<11) {
    out = out + i + " * " + n + " = " + i * n + "\n";
    
    i++;
    }
    console.log(out);

    console.log("Using do-while loop");
    var i = 1;
    var out = "";
    do{
    out = out + i + " * " + n + " = " + i * n + "\n";
    i++; 
    
    }while (i<11)
    console.log(out);
