document.getElementById("editPDF").addEventListener("keyup", e => {
    let t = e.target;
    document.getElementById(t.getAttribute("data-element")).innerHTML = t.value
});
document.getElementById("pdf").addEventListener("click", e => {
    let t = e.target;
    let ta = t.tagName;
    if (ta == "path" || ta == "svg" || ta == "SPAN") {
        t = ta == "svg" ? t.parentElement : ta == "path" ? t.parentElement.parentElement : t
        document.getElementById(t.getAttribute("data-element")).focus()
    }
})