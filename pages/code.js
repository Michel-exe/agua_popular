document.getElementById("inpSearch").addEventListener("submit",e=>{
    e.preventDefault();
    let [inpV, selV] = e.target
    if(inpV.value.length>0 && selV.value.length>0){
        console.log(inpV.value);
        console.log(selV.value);
        window.location.href=`./busqueda.php?ide=${inpV.value}&opc=${selV.value}`
    } else{
        e.target.style.border=`2px solid #ff0000`
        e.target[0].focus()
    }
})

// document.getElementById("inpSearch").addEventListener('keyup', e=>{})

document.querySelector("#inpSearch select").addEventListener('change', e=>{
    const select = e.target
    if(select.value==="nombre" || select.value==="apellido"){
        const d = document.createElement("DATALIST");
        d.setAttribute("id","autocomplet");
        d.innerHTML=`
            <option value="val1"></option>
            <option value="val2"></option>
            <option value="val3"></option>
            <option value="val4"></option>
            <option value="val5"></option>
        `
        document.getElementById("inpSearch").appendChild(d)
    } else {
        document.getElementById("inpSearch").removeChild(document.getElementById("autocomplet"))
    }
})

