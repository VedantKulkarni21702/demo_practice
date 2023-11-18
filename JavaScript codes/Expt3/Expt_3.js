function reverse() {
    var input1 = document.getElementById("origStr1").value;
    var reversed1 = input1.split('').reverse().join('');
    document.getElementById("output1").innerHTML = reversed1;
}

function palindrome() {
    var input2 = document.getElementById("origStr2").value;
    var reversed2 = input2.split('').reverse().join('');
    var palindrome;
    if (reversed2 == input2) {
        palindrome = "String Is Palindrome";
    }
    else if (reversed2 != input2) {
        palindrome = "String Is Not Palindrome";
    }
    document.getElementById("output2").innerHTML = palindrome;
}


function replaceChar() {
    var input3 = document.getElementById("origStr3").value;
    var toReplace = document.getElementById("toReplace").value;
    var withReplace = document.getElementById("replaceWith").value;
    var replaced = input3.replace(toReplace, withReplace);
    document.getElementById("output3").innerHTML = replaced;
}