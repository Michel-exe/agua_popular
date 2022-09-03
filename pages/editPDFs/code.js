
CapaPDF();
document.getElementById("rangeScale").addEventListener("input", e => CapaPDF());

document.getElementById("editPDF").addEventListener("keyup", e => {
    let t = e.target
    document.getElementById(t.getAttribute("data-element")).innerHTML = t.value
})
document.getElementById("pdf").addEventListener("click", e => {
    let t = e.target
    let ta = t.tagName;
    if (ta == "path" || ta == "svg" || ta == "SPAN") {
        t = ta == "svg" ? t.parentElement : ta == "path" ? t.parentElement.parentElement : t
        document.getElementById(t.getAttribute("data-element")).focus()
    }
})

window.addEventListener("submit",async e =>{
    e.preventDefault()
    let f = document.forms[1]
    let obj=[];
    for (let i = 0; i < f.length; i++) {
        obj.push({
            ide: f[i].getAttribute("data-ide"),
            val: f[i].value,
        })
    }
    const d = new FormData()
    d.append("arr",JSON.stringify(obj))
    await fetch("../../php/updatePDF.php",{
        method: "POST",
        body: d
    }).then(res => res.text())
      .then(r=>console.log(r))
    // d.append("ide1",f[0].value)
    // d.append("val1",f[0].value)

    // d.append("ide1",f[0].value)
    // d.append("ide1",f[0].value)
    // d.append("ide1",f[0].value)
    // d.append("ide1",f[0].value)
    // d.append("ide1",f[0].value)
    // d.append("ide1",f[0].value)
    // d.append("ide1",f[0].value)
    // console.log(document.forms[1][0].getAttribute("data-ide"));
})