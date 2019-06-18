window.onload = function()
{
    var tipo = document.getElementById("tipo").value;
    if(tipo == 3)
    {
        document.getElementById("aut").style.display = "block";
        document.getElementById("computarVotos").style.display = "block";
    }
    else if(tipo == 2)
    {
        
        document.getElementById("aut").style.display = "block";  
        document.getElementById("computarVotos").style.display = "none";
    }
    else
    {        
        document.getElementById("aut").style.display = "none";
        document.getElementById("computarVotos").style.display = "none";
    }
};

function redirect(action)
{
    var permissao = document.getElementById("permissao").value;
    var historico = document.getElementById("historico").value;
    
    if(historico == "Y"){ alert('Usuario já votou'); }

    if(permissao == "N"){ alert('Voto não autorizado'); }

    if(historico == "N"){ if(permissao == "Y"){
        var url = "/" + action + "/" + action + ".view.jsp";
        document.getElementById("pagina").value = url;
    }}
};

function autorizar(action)
{
    var url = "/" + action + "/" + action + ".view.jsp";
    document.getElementById("pagina").value = url;
};