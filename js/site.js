
//Evento para enviar y recibir informacion de la base de datos
document.getElementById('formRegistro').addEventListener('submit', function(event) {
    event.preventDefault();
    const nombre = document.getElementById('entradaNombre').value;

    //fetch('https://localhost:5001/registrar/Usuario', {
    fetch('C:/Users/Usuario/OneDrive/Escritorio/ProyectoMascotasModernas/Vistas/Registro.html/registrar/Usuario', {    
    
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ Nombre: nombre })
    })
    .then(response => response.json())
    .then(data => {
        alert(data.mensaje);
    })
    .catch(error => console.error('Error:', error));
});