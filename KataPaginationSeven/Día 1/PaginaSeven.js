var PageNumber = 1
var PageSize = 1
var Pages = [
    "Pagina 1",
    "Pagina 2",
    "Pagina 3",
    "Pagina 4",
    "Pagina 5",
    "Pagina 6",
    "Pagina 7"   
]
var PaginaHtml=""
var pagination
var PageCont = Math.ceil(Pages.length/PageSize)

function paginate(array) {
    return array.slice((PageNumber-1)*PageSize, PageNumber*PageSize)
}

function nextPage() {
    PageNumber++;
    ShowPage(pagination)
}

function previusPage() {
    PageNumber--;
    ShowPage(pagination)
}

function pageOrder(number) {
    PageNumber = number
    ShowPage(pagination)
}

function PageCase(value) {
    return PageNumber == value ? ` (${value}) `:` <button onclick='pageOrder(${value})'>${value}</button> `
}

function ShowPage(_pages) {
    var pagination = paginate(Pages);
    PaginaHtml ="<ul>"
    pagination.forEach(element => {
        PaginaHtml+="<li>"+element+"</li>"
    });
    PaginaHtml+= PageNumber > 1 ? ` <button onclick='pageOrder(1)'><<</button> `:" <button><<</button> "
    PaginaHtml+= PageNumber > 1 ? " <button onclick='previusPage()'><</button> ":" <button><</button> "
    PaginaHtml+= PageNumber ? 
    ` ${PageCase(1)} `+
    ` ${PageCase(2)} `+
    ` ${PageCase(3)} `+
    ` ${PageCase(4)} `+
    ` ${PageCase(5)} `+
    ` ${PageCase(6)} `+
    ` ${PageCase(7)} `:"" 
    PaginaHtml+= PageNumber < PageCont ? " <button onclick='nextPage()'>></button> ":" <button>></button> "
    PaginaHtml+= PageNumber < PageCont ? ` <button onclick='pageOrder(${PageCont})'>>></button> `:" <button>>></button> "
    document.getElementById("Pages").innerHTML=PaginaHtml;
    PaginaHtml+="</ul>"
}
ShowPage(Pages)