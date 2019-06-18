function validar()
{
	alert('Campos validados');
    document.getElementById("javotou").value = "-1";   
}

function autorizar()
{
	alert('Usuario autorizado a votar');  
}

function backPage(valueName)
{
    valueName += '';
    var url = "&";
    

    document.forms[0].action = "/Eleicao/redirect?pagina=/dashboards/Dashboard.view.jsp" + url;
    document.forms[0].method = "POST";

}