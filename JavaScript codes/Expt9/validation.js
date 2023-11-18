function validate() {    
    var fname = document.reg_form.fname;    
    var lname = document.reg_form.lname;    
    var address = document.reg_form.address;    
    var gender = document.reg_form.gender;    
    var email = document.reg_form.email;    
    var mobile = document.reg_form.mobile;    
    var course = document.reg_form.course;  
    alert(mobile.value.length);
    alert(typeof(mobile.value.length));
    if (fname.value.length <= 0) {    
        alert("Name is required");    
        fname.focus();    
        return false;    
    }    
    if (fname.value.length > 0 && !isNaN(parseInt(fname.value))) {    
        alert("Enter string value in First Name");    
        fname.focus();    
        return false;    
    }  
    if (lname.value.length <= 0) {    
        alert("Last Name is required");    
        lname.focus();    
        return false;    
    }  
    if (lname.value.length > 0 && !isNaN(parseInt(lname.value))) {    
        alert("Enter string value in Last Name");    
        lname.focus();    
        return false;    
    }    
    if (address.value.length <= 0) {    
        alert("Address is required");    
        address.focus();    
        return false;    
    }    
    if (gender.value.length <= 0) {    
        alert("Gender is required");    
        gender.focus();    
        return false;    
    }    
    if (email.value.length <= 0) {    
        alert("Email Id is required");    
        email.focus();    
        return false;    
    }
    if(email.value.length > 0)
    {
        var atSymbol = email.value.indexOf("@"); 
        var dotSymbol = email.value.lastIndexOf("."); 
        var spaceSymbol = email.value.indexOf(" "); 

        if ((atSymbol != -1) && 
        (atSymbol != 0) && 
        (dotSymbol != -1) && 
        (dotSymbol != 0) && 
        (dotSymbol > atSymbol + 1) && 
        (email.value.length > dotSymbol + 1) && 
        (spaceSymbol == -1)) { 
        
        //return true; 
        } else { 
        alert("Error !!! Email address is not valid."); 
        return false; 
    } 
    }    
    if (mobile.value.length != 10) {    
        alert("Enter valid mobile number");    
        mobile.focus();    
        return false;    
    }    
    if (course.value == "select course") {    
        alert("Course is required");    
        course.focus();    
        return false;    
    }    
   // return false;    
}    