var NumPag = 1
var TamPag = 1
var revista = []
for (let i = 0; i != 10; i++) {
    revista[i] = `Revista ${i+1}`  
}
var RevistaHtml=""
var paginacion
var RevistaCont = Math.ceil(revista.length/TamPag)
function Paginar(array) {
    return array.slice((NumPag-1)*TamPag, NumPag*TamPag)
}
function Siguiente() {
    NumPag++
    VerRevista(paginacion)
}
function Anterior() {
    NumPag--
    VerRevista(paginacion)
}
function PagPedida(value) {
    NumPag = value
    VerRevista(paginacion)
}
function CasoPedido(value) {
    return NumPag == value ? ` (${value}) `:` <button onclick='PagPedida(${value})'>${value}</button> `
}
function VerRevista(_revista) {
    paginacion = Paginar(revista)
    RevistaHtml="<ul>"
    paginacion.forEach(element => {
        RevistaHtml+= "<li>"+element+"</li>"
    });
    RevistaHtml+= NumPag > 1 ? " <button onclick='PagPedida(1)'><<</button>" :" <button><<</button> "
    RevistaHtml+= NumPag > 1 ? " <button onclick='Anterior()'><</button>" :" <button><</button> "
    if (NumPag < 6) {
        RevistaHtml+= NumPag ? 
        ` ${CasoPedido(1)} `+
        ` ${CasoPedido(2)} `+
        ` ${CasoPedido(3)} `+
        ` ${CasoPedido(4)} `+
        ` ${CasoPedido(5)} `+
        ` ... `+
        ` ${CasoPedido(RevistaCont)} `:""
    }else{
        RevistaHtml+= NumPag ? 
        ` ${CasoPedido(1)} `+
        ` ... `+
        ` ${CasoPedido(RevistaCont-4)} `+
        ` ${CasoPedido(RevistaCont-3)} `+
        ` ${CasoPedido(RevistaCont-2)} `+
        ` ${CasoPedido(RevistaCont-1)} `+
        ` ${CasoPedido(RevistaCont)} `:""
    }
    RevistaHtml+= NumPag < RevistaCont ? " <button onclick='Siguiente()'>></button> ":" <button>></button> "
    RevistaHtml+= NumPag < RevistaCont ? ` <button onclick='PagPedida(${RevistaCont})'>>></button> `:` <button>>></button> `
    document.getElementById("revista").innerHTML=RevistaHtml
    RevistaHtml+="</ul>"
}
VerRevista(revista)