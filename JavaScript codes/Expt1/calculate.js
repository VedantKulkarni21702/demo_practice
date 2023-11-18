function triangle()
{
    var b= parseInt(document.getElementById("b").value)
    var h= parseInt(document.getElementById("h").value)
    var area = 0.5 * b * h;
    if(b<0 || h<0)
    {
        alert("Enter proper dimensions to calculate area");
    }
    else
    {
        alert("Area of Triangle is "+area);
    }  
}

function rectangle()
{
    var len= parseInt(document.getElementById("l").value)
    var bre= parseInt(document.getElementById("w").value)
    var area = bre * len;
    if(bre<0 || len<0)
    {
        alert("Enter proper dimensions to calculate area");
    }
    else
    {
        alert("Area of Rectangle is "+area);
    }  
}

function Circle()
{
    var radius= parseInt(document.getElementById("r").value)
    
    var area = 3.142 * radius * radius;
    if(radius<0 )
    {
        alert("Enter proper dimensions to calculate area");
    }
    else
    {
        alert("Area of Circle is "+area);
    }  
}