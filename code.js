const enviar = async (ruta,data,funcion) =>{
    await fetch(ruta,{
        method: 'POST',
        body: data
    })
        .then(res => res.text() )
        .then(r => {funcion(r)})
}

const funAdmin = () =>{
    document.querySelector(".admin").style.transform=`scale(1)`
    let a=10
    let time= setInterval(()=>{
        document.querySelector("#charge i").style.width=`${a}%`
        a=a+10;
    }, 100);    
    
    setTimeout(() => {
        clearInterval(time)
        document.querySelector("#charge").classList.add("charge")
    }, 1300);
    setTimeout(() => {
        document.querySelector("#charge").classList.add("charges")
    }, 2000);
    setTimeout(() => {
        window.location.href="./pages/dashboard.html"
    }, 3000);
}

const validarForm = async (e) =>{
    let msjError = document.querySelector(".error")
    let [user, pass] = e.target
    user= user.value
    pass= pass.value
    const exp = {
        user: /^[a-zA-Z0-9À-ÿ\_\-]{4,16}$/,
        pass: /^.{3,16}$/,
    }
    if(user && pass){
        const val = [exp.user.test(user), exp.pass.test(pass)]   
        if(val[0] && val[1]){
            msjError.style.height=`44px`
            msjError.innerHTML="Cargando . . ."
            await enviar(
                    "./php/validarLogin.php",
                    new FormData(document.forms[0]),
                    (r)=>{
                        console.log(r);
                        if(r=="1"){
                            // window.location.href="https://www.google.com/";
                            window.location.href="./php/activarSesion.php";
                        } else{
                            msjError.innerHTML="Usuario o contraseña incorrectos"
                        }
                    })
            // funAdmin()
            // console.log(true);
        } else{
            if(!val[0]){
                msjError.style.height=`44px`
                msjError.innerHTML="Error al escribir su usuario"
            } else {
                msjError.innerHTML="Error al escribir su contraseña"
            }
        }
    } else{
        console.log(false);
    }}
document.forms[0].addEventListener("submit", e=>{
    e.preventDefault()
    validarForm(e)
})