var NumerodePagina = 1 
var TamanodePagina = 1
var Noticia = []
for (let i = 0; i != 100; i++) {
    Noticia[i] = ` Noticia ${i+1} `
}
var Paginacion
var NoticiaHtml=""
var NoticiaMaxima = Math.ceil(Noticia.length/TamanodePagina)

function Paginacion_7(array) {
    return array.slice((NumerodePagina-1)*TamanodePagina, NumerodePagina*TamanodePagina)
}

function Sig() {
    NumerodePagina++
    VerNoticias(Paginacion)
}
function Ant() {
    NumerodePagina--
    VerNoticias(Paginacion)
}
function PedirPag(value) {
    NumerodePagina = value
    VerNoticias(Paginacion)
}
function PedirCaso(value) {
    return NumerodePagina == value ? ` (${value}) `:` <button onclick='PedirPag(${value})'> ${value} </button> `
}
function VerNoticias(_Arg) {
    Paginacion = Paginacion_7(Noticia)
    NoticiaHtml = "<ul>"
    Paginacion.forEach(element => {
        NoticiaHtml += `<li>${element}</li>`
    });
    NoticiaHtml += NumerodePagina > 1 ? " <button onclick='PedirPag(1)'> << </button> ":" <button> << </button> "
    NoticiaHtml += NumerodePagina > 1 ? " <button onclick='Ant()'> < </button> ":" <button> < </button> "
    if (NumerodePagina < 6) {
        NoticiaHtml += NumerodePagina ? 
        ` ${PedirCaso(1)} `+
        ` ${PedirCaso(2)} `+
        ` ${PedirCaso(3)} `+
        ` ${PedirCaso(4)} `+
        ` ${PedirCaso(5)} `+
        ` ... `+
        ` ${PedirCaso(NoticiaMaxima)} `:""
    } else if (NumerodePagina > 5 && NumerodePagina < NoticiaMaxima-4){
        NoticiaHtml += NumerodePagina ? 
        ` ${PedirCaso(1)} `+
        ` ... `+
        ` ${PedirCaso(NumerodePagina-1)} `+
        ` ${PedirCaso(NumerodePagina)} `+
        ` ${PedirCaso(NumerodePagina+1)} `+
        ` ... `+
        ` ${PedirCaso(NoticiaMaxima)} `:""
    }else{
        NoticiaHtml += NumerodePagina ? 
        ` ${PedirCaso(1)} `+
        ` ... `+
        ` ${PedirCaso(NoticiaMaxima-4)} `+
        ` ${PedirCaso(NoticiaMaxima-3)} `+
        ` ${PedirCaso(NoticiaMaxima-2)} `+
        ` ${PedirCaso(NoticiaMaxima-1)} `+
        ` ${PedirCaso(NoticiaMaxima)} `:""
    }
    NoticiaHtml += NumerodePagina < NoticiaMaxima ? " <button onclick='Sig()'> > </button> ":" <button> > </button> "
    NoticiaHtml += NumerodePagina < NoticiaMaxima ? ` <button onclick='PedirPag(${NoticiaMaxima})'> >> </button> `:" <button> >> </button> "
    document.getElementById("Noticia").innerHTML=NoticiaHtml
    NoticiaHtml += "</ul>"
}
VerNoticias(Noticia)