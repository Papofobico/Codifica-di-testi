function gestoreInterpretativa10() {
    try{
            nodoInterpretativa10.setAttribute("class","visible10");
            nodoDichiarativa10.setAttribute("class","invisible");
    } catch(e) {
        alert("GestoreDichiarativa10" + e);
    }
}
function gestoreDiplomatica10() {
    try{
            nodoInterpretativa10.setAttribute("class","invisible");
            nodoDichiarativa10.setAttribute("class","visible10");
    } catch(e) {
        alert("GestoregestoreDiplomatica10" + e);
    }
    
}

function gestoreDiplomatica11() {
    try{
            nodoInterpretativa11.setAttribute("class","invisible");
            nodoDichiarativa11.setAttribute("class","visible11");
    } catch(e) {
        alert("GestoregestoreDiplomatica11" + e);
    }
    
}
function gestoreInterpretativa11() {
    try{
            nodoInterpretativa11.setAttribute("class","visible11");
            nodoDichiarativa11.setAttribute("class","invisible");
    } catch(e) {
        alert("GestoregestoreInterpretativa11" + e);
    }
    
}


var nodoBottoneInterpretativa10;
var nodoBottoneDiplomatica10;
var nodoBottoneInterpretativa11;
var nodoBottoneDiplomatica11;  

var nodoInterpretativa10;
var nodoDichiarativa10;
var nodoInterpretativa11;
var nodoDichiarativa11;

function gestoreLoad(){
    try {
        nodoBottoneInterpretativa10= document.getElementById("bottonePaginaIn10");
        nodoBottoneDiplomatica10= document.getElementById("bottonePaginaDi10");
        nodoBottoneInterpretativa11 = document.getElementById("bottonePaginaDi11");
        nodoBottoneDiplomatica11 = document.getElementById("bottonePaginaIn11"); 
        nodoInterpretativa10 = document.getElementById("Interpretativa10");
        nodoDichiarativa10 = document.getElementById("Dichiarativa10");
        nodoInterpretativa11 = document.getElementById("Interpretativa11");
        nodoDichiarativa11 = document.getElementById("Dichiarativa11");
        nodoBottoneInterpretativa10.onclick = gestoreInterpretativa10;
        nodoBottoneDiplomatica11.onclick = gestoreDiplomatica11;
        nodoBottoneDiplomatica10.onclick= gestoreDiplomatica10;
        nodoBottoneInterpretativa11.onclick = gestoreInterpretativa11; 
    } catch (e) {
        alert("gestoreLoad" + e);
    }
}
window.onload = gestoreLoad;