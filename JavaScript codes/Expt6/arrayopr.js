const Arr = new Array();

            function AddElement() {
                let Element = document.getElementById("arrEle").value;
                let len = document.getElementById("arrlen").value;
                if(Arr.length >= len) {
                    alert("You are trying to Add more elements than the Array Length!")
                } else {
                    Arr.push(Element);
                    document.getElementById("ArrOut").innerHTML = Arr.toString();
                }
            }

            function SearchElement1() {
                let Element = document.getElementById("searchEle1").value;
                let len = document.getElementById("arrlen").value;
                var flag = 0;
                for(let i = 0; i < len; i++) {
                    if(Element == Arr[i]) {
                        document.getElementById("SearchOut1").innerHTML = i;
                        flag = 1;
                        break;
                    }
                }
                if(!flag) {
                    document.getElementById("SearchOut1").innerHTML = "Element Not Found";
                    alert("Element not found in the Array");
                }
            }

            function SearchElement2() {
                let Element = document.getElementById("searchEle2").value;
                let len = document.getElementById("arrlen").value;
                if(Arr.indexOf(Element) < 0) {
                    document.getElementById("SearchOut2").innerHTML = "Element Not Found";
                    alert("Element not found in the Array");
                } else {
                    document.getElementById("SearchOut2").innerHTML = Arr.indexOf(Element);
                }
            }

            function DelElement1() {
                const ArrTemp = new Array();
                let Element = document.getElementById("delEle1").value;
                let len = document.getElementById("arrlen").value;
                for(let i = 0; i < len; i++) { 
                    if(Arr[i] != Element) {
                        ArrTemp.push(Arr[i]);
                    }
                }
                document.getElementById("DelOut1").innerHTML = ArrTemp.toString();
            }

            function DelElement2() {
                let Element = document.getElementById("delEle2").value;
                let len = document.getElementById("arrlen").value;
                if(Arr.indexOf(Element) < 0) {
                    alert("Element not found in the Array");
                } else {
                    Arr.splice(Arr.indexOf(Element), 1);

                }
                document.getElementById("DelOut2").innerHTML = Arr.toString();
            }

            function empty1() {
                let len = document.getElementById("arrlen").value;
                for(let i = 0; i < len; i++) {
                    Arr.pop();
                }
                document.getElementById("emptyOut1").innerHTML = Arr.toString();
            }

            function empty2() {
                let len = document.getElementById("arrlen").value;
                Arr.splice(0, len);
                document.getElementById("emptyOut1").innerHTML = Arr.toString();
            }