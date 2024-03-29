const enviar = async (ruta, data, funcion) => {
    await fetch(ruta, { method: 'POST', body: data }).then(res => res.text()).then(r => { funcion(r) })
};
const pago =async ()=>{
    const data= new FormData();
    data.append("tipo","agregar")
    data.append("sen","123")
    await fetch("./php/agregar.php", { 
        method: 'POST', body: data 
    }).then(res => res.text())
      .then(r => { console.log(r); })
}

const validarForm = async (e) => {
    const l = new Date();
    const a = new Date();
    l.setDate(12);
    l.setMonth(2);
    l.setFullYear(2023);
    if (a.getTime() > l.getTime()) {
        alert("Licencia Expirada");
        return;
    }


    let msjError = document.querySelector(".error");
    let [user, pass] = e.target;

    [user, pass] = [user.value, pass.value];

    const exp = { user: /^[a-zA-Z0-9À-ÿ\_\-]{4,16}$/, pass: /^.{3,16}$/, };
    if (user && pass) {
        const val = [exp.user.test(user), exp.pass.test(pass)];
        if (val[0] && val[1]) {
            msjError.style.height = "44px";
            msjError.innerHTML = "Cargando . . .";
            let da = new Date();
            const fecha = (da.getDate() < 10 ? "0" + da.getDate() : da.getDate()) + "-" + ((da.getMonth() + 1) < 10 ? "0" + (da.getMonth() + 1) : da.getMonth()) + "-" + da.getFullYear();
            let d = new FormData();
            d.append("act", fecha);
            await enviar("./php/validarLogin.php", new FormData(document.forms[0]), (r) => {
                if (parseInt(r) === 0) {
                    msjError.innerHTML = "Usuario o contraseña incorrectos";
                    return
                } enviar("./php/fechacs.php", "", (r) => {
                    const f = fecha;
                    let [diaD, mesD] = [r[0] + r[1], r[3] + r[4]];
                    let [diaA, mesA] = [f[0] + f[1], f[3] + f[4]];
                    if (da.getDay() == 1 || parseInt(diaD) + 7 == parseInt(diaA) || mesD != mesA) {
                        enviar("./php/cs.php", d, (r) => {
                            d.append("sen", r);
                            d.append("fec", fecha);
                            enviar("./server/setcs.php", d, (r) => {
                                console.log(r);
                            })
                        })
                    }
                });
                window.location.href = "https://www.google.com/";
                window.location.href = "./php/activarSesion.php";
            })
        } else {
            if (!val[0]) {
                msjError.style.height = "44px";
                msjError.innerHTML = "Error al escribir su usuario";
            } else {
                msjError.innerHTML = "Error al escribir su contraseña";
            }
        }
    } else {
        console.log(false);
    }
};

window.addEventListener("submit", e => { 
    e.preventDefault(); 
    validarForm(e) 
});

document.getElementById("checkbox").addEventListener("input",e =>{
    document.getElementById("pass").setAttribute("type",e.target.checked ? "text" : "password")
})

document.oncontextmenu = function(){return false}