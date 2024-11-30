async function start() {
    document.getElementById("form").onsubmit = handleFormRequest;
}

async function handleFormRequest(evt) {
    evt.preventDefault(); 

    const errorElement = document.getElementById("error");
    errorElement.innerText = ""; 

    const formData = new FormData(evt.target); 

    try {
        await Auth.register(formData); 

        window.location.replace("../login/login.html"); 
    } catch (e) {
        if (e.cause && e.cause.status === 422) {
            const errors = await e.cause.json();
            errorElement.innerText = errors.message || "Erro ao registar.";
        } else {
            errorElement.innerText = "Erro inesperado. Tente novamente.";
        }
        console.error(e); 
    }
}
