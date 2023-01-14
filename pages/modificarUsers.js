const fe = async (data) =>{
    return await fetch("../php/update.php",{
        method:"POST",
        body: data,
    })  .then(res => res.text())
        .then(r => {
            if(r==="1"){
                return r;
            }
            /* ACA IRA EL MENSAJE DE ERROR QUE VIENE DE PHP */
            console.log(r);
        })
};
const eventosDOM = () =>{
    document.querySelectorAll(".updateTit").forEach(u =>{
        u.addEventListener("click", () =>{
            let padre = u.parentElement;
            padre.classList.toggle("scroll");
            padre.style.height=`${padre.classList.contains("scroll") ? padre.scrollHeight+40 : 70}px`;
        })
    });
    document.querySelector(".descuentos").addEventListener("input", e =>{
        e.target.previousElementSibling.innerHTML=`${
            e.target.value.replace("0.","").padEnd(2,"0")
        }%`;
    });
    document.querySelectorAll(".del").forEach(u =>{
        u.addEventListener("click",async () =>{
            if(!window.confirm("Seguro de eliminar este Usuario?")) {return;}
            let padre = u.parentElement;
            let ide = padre.getAttribute("data-id");
            let d= new FormData();
            d.append("tipo","eliminar");
            d.append("ide",ide);
            const w = window.location;
            w.href=(w.origin+w.pathname)+"?de="+(await fe(d) ? "t":"f");
        })
    })
};
const eventosFetch = async () =>{
    const validarInp = (tar,type)=>{
        const exp = { 
            name: /[a-zA-ZÀ-ÿ\ ]{4,30}$/, 
            user: /[a-zA-Z0-9À-ÿ\_\-]{4,16}$/, 
            pass: /.{8,30}$/,
            nombre: /[a-zA-ZÀ-ÿ\ ]{4,30}$/, 
            condonacion: /[a-zA-Z0-9À-ÿ\ ]{8,30}$/, 
            minLong: {
                name: 4, 
                user: 4, 
                pass: 8,
                nombre: 4,
                condonacion: 8,
            },
            maxLong:{
                name: 30, 
                user: 16, 
                pass: 30,
                nombre: 30, 
                condonacion: 30, 
            }
        };
        let mensajes=[
            `Error nombre invalido solo se permiten letras y espacios \nMinimo ${exp.minLong.name} caracteres \nMaximo de ${exp.maxLong.name} caracteres`,
            `Error nombre de usuario invalido solo se permiten letras guines bajo y guines medios \nMinimo ${exp.minLong.user} caracteres \nMaximo de ${exp.maxLong.user} caracteres`,
            `Contraseña invalida minimo ${exp.minLong.pass} caracteres y maximo ${exp.maxLong.pass}`,
            `Error nombre invalido solo se permiten letras y espacios \nMinimo ${exp.minLong.nombre} caracteres \nMaximo de ${exp.maxLong.nombre} caracteres`,
            `Error contraseña de condonacion invalida \nMinimo ${exp.minLong.condonacion} caracteres \nMaximo de ${exp.maxLong.condonacion} caracteres`
        ];
        let campos=['name','user','pass','nombre','condonacion'];
        let c=-1;
        let retorno = type.map(t =>{
            c++;
            if(t==campos[0]) return exp.name.test(tar[c].value);
            if(t==campos[1]) return exp.user.test(tar[c].value);
            if(t==campos[2]) return exp.pass.test(tar[c].value);
            if(t==campos[3]) return exp.nombre.test(tar[c].value);
            if(t==campos[4]) return exp.condonacion.test(tar[c].value);
        })
        return [(!retorno.includes(false)),(mensajes[type.length!=1 ? retorno.findIndex(r => r==false) : campos.findIndex(r=> r==type[0])])];

    };
    const fecha= () =>{
        let d = new Date();
        return `${((d.getMonth()+1).toString()).padStart(2,"0")}/${((d.getDate()).toString()).padStart(2,"0")}/${((d.getFullYear()).toString())}`;
    };
    const refresh = (ruta)=>{
        const w = window.location;
        w.href=(w.origin+w.pathname)+"?"+ruta;
    };
    document.addEventListener("submit",async e =>{
        e.preventDefault();
        const tar = e.target;
        const type = tar.getAttribute("data-form");
        const tipo = tar.getAttribute("data-tipo");
        
        let d = new FormData();
        d.append("tipo",tipo);

        /* Acciones de los formularios */
        if(type=='updUser'){
            let dataType=tar.getAttribute("data-type");
            if(dataType=="pass" && tar[0].value!==tar[1].value){alert("Las contraseñas no coinciden");return;}
            const valinp = validarInp(tar,[dataType]);
            if(!valinp[0]){ alert(valinp[1]); return;}

            d.append('campo',dataType);
            d.append('valor',tar[0].value);
            d.append('ide',tar.parentElement.getAttribute("data-id"));
            refresh((await fe(d) ? "u=t&campo=" : "u=f&campo=")+tar.getAttribute("data-campo"));
        } else if(type=='agrUser'){
            if(tar[2].value!==tar[3].value){ alert("Las contraseñas no coinciden"); return;}
            const valinp = validarInp(tar,["name","user","pass"]);
            if(!valinp[0]){ alert(valinp[1]); return;}
            
            d.append('nombre',tar[0].value);
            d.append('usuario',tar[1].value);
            d.append('contra',tar[2].value);
            refresh(await fe(d) ? "a=t" : "a=f");
        } else if(type=='modDes'){
            d.append("desEne",tar[0].value);
            d.append("desFeb",tar[1].value);
            d.append("desMar",tar[2].value);
            refresh(await fe(d) ? "d=t" : "d=f");
        } else if(type=='agrCuo'){
            d.append("cuota",tar[0].value);
            d.append("fecha",fecha());
            refresh(await fe(d) ? "c=t" : "c=f");
        } else if(type=='modVal'){
            if(tar[1].value!==tar[2].value){ refresh("v=n"); return;}

            const valinp = validarInp(tar,["condonacion"]);
            console.log(valinp);
            if(!valinp[0]){ console.log(valinp[1]); return;}

            d.append("actual",tar[0].value);
            d.append("nueva",tar[1].value);
            refresh(await fe(d) ? "v=t" : "v=f");
        }
    })
};
eventosFetch();
eventosDOM();