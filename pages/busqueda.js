console.log("HIKA");
const obtDescuento = ()=>{
    let val = parseFloat(document.getElementById("descuento").value)
    let cuo = document.getElementById("cuota")

    document.getElementById("paga").value=cuo.value - (cuo.value * val);
}
document.getElementById("descuento").addEventListener("click",e=>{
    obtDescuento()
})
const ultFe = document.getElementById("ultPago")
const month = document.getElementById("month")
const d = new Date();
month.value=d.getFullYear()+"-"+((d.getMonth()+1)+"").padStart(2,"0");

document.getElementById("nur").addEventListener("submit",async e =>{
    e.preventDefault()
    const meses=["","ENE","FEB","MAR","ABR","MAY","JUN","JUL","AGO","SEP","OCT","NOV","DIC"]
    const rec= document.getElementById("recargos").checked ? 1 : 0;
    let arrUltFe= ultFe.value.split("/")
    let arrMonth= month.value.split("-")
    let ultPago = (meses[parseInt(arrUltFe[1])]+" "+(arrUltFe[2]))+" - "+(meses[parseInt(arrMonth[1])]+" "+arrMonth[0])
    const paga = parseInt(document.getElementById("paga").value);
    const descuento = parseInt(document.getElementById("cuota").value) - paga
    const fecHoy=((d.getDate())+"").padStart(2,"0")+"/"+((d.getMonth()+1)+"").padStart(2,"0")+"/"+d.getFullYear()
    const data = new FormData();
    data.append("fecHoy",fecHoy);
    data.append("nur",document.getElementById("camNur").value);
    data.append("ultPag",ultPago);
    data.append("ultMes","1"+"/"+arrMonth[1]+"/"+arrMonth[0]);
    data.append("cuota",document.getElementById("cuotas").value);
    data.append("descuento",descuento);
    data.append("cobranza",paga);
    data.append("conexion","0");
    data.append("rezagos","0");
    data.append("recargos",parseInt(rec ? (paga*.2) : 0));
    data.append("coperacion","0");
    data.append("anticipos","0");
    data.append("varios","0");
    data.append("condona",paga);
    data.append("importT",parseInt(rec ? (paga*.2)+paga : paga) - descuento);
    data.append("fondoNR","0");
    data.append("fecha",fecHoy+" "+(d.getHours()+"").padStart(2,"0")+":"+(d.getMinutes()+"").padStart(2,"0")+":"+(d.getSeconds()+"").padStart(2,"0"));
    await fetch("confirmarPago.php",{
        method:"POST",
        body:data
        })
        .then(r => r.text())
        .then(res => {
            console.log(res);
            if(res != 1){ console.log(res); return;}

            (window.open(`../pdf/printPDF.php?ide=${document.getElementById("camNur").value}`,"_blank")).focus()

            window.location.href=window.location
    })
})

// month.value="2021-07"
const rellenar = (mesesAdeudo,timeAde,cuotas,cuota)=>{
    console.log(mesesAdeudo);
    console.log(timeAde);
    console.log(cuotas);
    console.log(cuota.replace("\n",""));

    if(cuota.replace("\n","")=="0"){
        [mesesAdeudo,timeAde]=[0,"0 años con 0 meses"]
        document.getElementById("confirmPago").setAttribute("disabled","true")
        // document.getElementById("confirmPago").disabled
    } else{
        document.getElementById("confirmPago").removeAttribute("disabled")
    }
    cuotas=cuotas.replaceAll("/","-");
    document.getElementById("timeAde").value=timeAde;
    let textCuotas="";
    let arrCuotas = cuotas.split("#")
    document.querySelector("#cuo div div").innerHTML="";
    arrCuotas.pop()
    arrCuotas.map(cuo =>{
        let c = cuo.split("!");

        let [f0,f1] =[c[0].split("-"),c[1].split("-")];
        let b= f0[0].length==2
        f0=f0[b?0:2]+" - "+f0[1]+" - "+f0[b?2:0];
        b= f1[0].length==2
        f1=f1[b?0:2]+" - "+f1[1]+" - "+f1[b?2:0];

        document.querySelector("#cuo div div").innerHTML+=`
            <section>
                <label>${f0}</label>
                <label>${f1}</label>
                <label>${c[2]}</label>
                <label>${c[3]}</label>
                <label>${c[4]}</label>
            </section>
        `;
        textCuotas+=`${c[3]} - `;
    })
    document.getElementById("mesesAdeudo").value=mesesAdeudo;
    document.getElementById("cuota").value=cuota;
    document.getElementById("paga").value=cuota;
    document.getElementById("cuotas").value=textCuotas;
}

const moreInfo = async(mes)=>{
    const da= new FormData()
    da.append("ultFe",ultFe.value)
    da.append("ultPa",mes+"-01");
    await fetch("./busquedaUltPago.php",{
        method:"POST",
        body: da
    })  .then(res => res.text())
        .then(r => {
            // console.log(r)
            r=r.split("|")
            rellenar(r[0],r[1],r[2],r[3])
        })
        
    obtDescuento()
}
moreInfo(month.value)


document.getElementById("month").addEventListener("input",e =>{
    moreInfo(e.target.value);
})

document.getElementById("validarCondonacion").addEventListener("change", async e => {
    if (!e.target.checked) return;

    e.target.checked = false;
    let pass = window.prompt("Escriba la contraseña");

    if(pass==null) return;

    let d = new FormData();
    d.append("sub", pass);
    await fetch("../php/subPassword.php", {
            method: 'POST',
            body: d
        }).then(res => res.text())
        .then(r => {
            if (r != "0") {
                e.target.checked = true;
                e.target.previousElementSibling.removeAttribute("disabled");
                return
            }
        })
})
