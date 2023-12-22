<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

    <title>Document</title>
</head>
<body>
        <main class="card">
            <h1>FORMULARIO DE VOTACIÓN</h1>
            <form>
                <div class="card-input">
                    <label for="nombre_apellido">Nombre y Apellido</label>
                    <input id="nombre_apellido" type="text" require placeholder="Ingrese su nombre y apellido">
                    <span id="errorNombreApellido" class="error"></span>
                </div>
                <div class="card-input">
                    <label for="alias">Alias</label>
                    <input id="alias" type="text" placeholder="Ingrese su alias">
                    <span id="errorAlias" class="error"></span>
                </div>
                <div class="card-input">
                    <label for="rut">RUT</label>
                    <input id="rut" type="text" placeholder="Ingrese su rut">
                    <span id="errorRut" class="error"></span>
                </div>
                <div class="card-input">
                    <label for="email">Email</label>
                    <input id="email" type="text" placeholder="ejemplo@gmail.com">
                    <span id="errorEmail" class="error"></span>
                </div>
                <div class="card-input">
                    <label for="region">Region</label>
                    <select name="region" id="region">
                        <option value="" selected disabled hidden>Escoge una region</option>
                    </select>
                    <span id="errorRegion" class="error"></span>
                </div>
                <div class="card-input">
                    <label for="comuna">Comuna</label>
                    <select name="comuna" id="comuna">
                    <option value="" selected disabled hidden>Selecciona una comuna primero</option>
                    </select>
                    <span id="errorComuna" class="error"></span>
                </div>
                <div class="card-input">
                    <label for="candidato">Candidato</label>
                    <select name="candidato" id="candidato">
                    <option value="" selected disabled hidden>Escoge un candidato</option>
                    </select>
                    <span id="errorCandidato" class="error"></span>
                </div>
                <div class="checkbox">
                    <p>Como se enteró de nosotros</p>
                    <div>
                    <input id="web" type="checkbox">
                    <label for="web">Web</label>
                    <input id="TV" type="checkbox">
                    <label for="TV">TV</label>
                    <input id="redes_sociales" type="checkbox">
                    <label for="redes_sociales">Redes sociales</label>
                    <input id="amigo" type="checkbox">
                    <label for="amigo">Amigo</label>
                    
                    </div>
                    <span id="errorCheckbox" class="error"></span>
                </div>
                <button id="submit" type="submit">Enviar</button>
            </form>
        </main>
</body>

<script>
    $( document ).ready(function() { 
        $.ajax({
                url: 'getInitialData.php',
                type: 'GET',
                dataType: 'json',
                success: function(data) {
                    console.log(data);
                    $.each(data.region, function(index, region) {
                        $('#region').append(new Option(region.name, region.id));
                    });
                    $.each(data.candidate, function(index, candidate) {
                        $('#candidato').append(new Option(candidate.name, candidate.id));
                    });
                },
                error: function(xhr, status, error) {
                    console.error('Error fetching data:', xhr, status, error);
                }
            });
    });
    function validarFormulario() {
        var error = 0;
            var nombreApellido = document.getElementById('nombre_apellido').value.trim();
            var alias = document.getElementById('alias').value.trim();
            var rut = document.getElementById('rut').value.trim();
            var email = document.getElementById('email').value.trim();
            var region = document.getElementById('region').value.trim();
            var comuna = document.getElementById('comuna').value.trim();
            var candidato = document.getElementById('candidato').value.trim();

            var errorNombreApellido = document.getElementById('errorNombreApellido');
            var errorAlias = document.getElementById('errorAlias');
            var errorRut = document.getElementById('errorRut');
            var errorEmail = document.getElementById('errorEmail');
            var errorRegion = document.getElementById('errorRegion');
            var errorCandidato = document.getElementById('errorCandidato');
            var errorComuna = document.getElementById('errorComuna');
            var errorCheckbox = document.getElementById('errorCheckbox');


            
            // Validación Nombre y Apellido
            if (nombreApellido  === '') {
                error++;
                errorNombreApellido.innerHTML = 'Por favor, ingrese su Nombre y Apellido.';
            } else {
                errorNombreApellido.innerHTML = '';
            }

            // Validación Alias
            if (alias.length <= 5 || !/^[a-zA-Z0-9]+$/.test(alias)) {
                error++;
                errorAlias.innerHTML = 'El Alias debe tener más de 5 caracteres y contener solo letras y números.';
            } else {
                errorAlias.innerHTML = '';
            }

            // Validación RUT 
            if (!/^[0-9]+-[0-9kK]{1}$/.test(rut)) {
                error++;
                errorRut.innerHTML = 'Por favor, ingrese un RUT válido (Ejemplo: 12345678-9).';
            } else {
                errorRut.innerHTML = '';
            }

            // Validación Email
            if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
                error++;
                errorEmail.innerHTML = 'Por favor, ingrese un correo electrónico válido.';
            } else {
                errorEmail.innerHTML = '';
            }
            // Validación Region
            if (region  === '') {
                error++;
                errorRegion.innerHTML = 'Por favor, seleccione una región.';
            } else {
                errorRegion.innerHTML = '';
            }
            // Validación Comuna
            if (comuna  === '') {
                error++;
                errorComuna.innerHTML = 'Por favor, seleccione una comuna.';
            } else {
                errorComuna.innerHTML = '';
            }
            // Validación Candidato
            if (candidato  === '') {
                error++;
                errorCandidato.innerHTML = 'Por favor, seleccione un candidato.';
            } else {
                errorCandidato.innerHTML = '';
            }

            // validacion checkbox
            if(validateCheckBox().length > 1 ){
                errorCheckbox.innerHTML = '';
            }else{
                error++;
                errorCheckbox.innerHTML = 'Por favor, seleccione al menos 2 opciones.';
                
            }
            
            return error > 0? false: true;
    }
    $('#region').on('change', function() {
        $.ajax({
                url: 'getCommune.php',
                type: 'GET',
                data: { id: this.value},
                dataType: 'json',
                success: function(data) {
                    console.log(data);
                    $.each(data.commune, function(index, commune) {
                        $('#comuna').append(new Option(commune.name, commune.id));
                    });
                },
                error: function(xhr, status, error) {
                    console.error('Error fetching data:', xhr, status, error);
                }
            });
    });

    function validateCheckBox(){
        let checkbox = [];
        checkbox.push($( "input[type=checkbox][id=web]:checked" ).val()?"web": 0);
        checkbox.push($( "input[type=checkbox][id=TV]:checked" ).val()?"TV":0);
        checkbox.push($( "input[type=checkbox][id=redes_sociales]:checked" ).val()?"redes_sociales": 0);
        checkbox.push($( "input[type=checkbox][id=amigo]:checked" ).val()?"amigo": 0);

        return checkbox.filter(e => e != 0)
    }

    $('#submit').click(function(event){
        event.preventDefault();
        var isValid = validarFormulario();
        
            if (isValid) {
                
            let checkbox = [...validateCheckBox()]
            var data = {
                "nombre_apellido" :$( "input#nombre_apellido" ).val(),
                "alias" : $( "input#alias" ).val(),
                "rut" : $( "input#rut" ).val(),
                "email" : $( "input#email" ).val(),
                "region" : $( "select#region" ).val(),
                "comuna" : $( "select#comuna" ).val(),
                "candidato" : $( "select#candidato" ).val(),
                "arribo":checkbox
            };
            $.ajax({
                url: 'postVoto.php',
                type: 'POST',
                data: data,
                dataType: 'json',
                success: function(response) {
                    alert(response.message);
                    console.log(response);
                },
                error: function(xhr, status, error) {
                    console.error('Error sending data:', xhr, status, error);
                }
            });
            } else {
                console.log("Form is not valid. Please correct the errors.");
            }


        
        console.log(data);
    });
</script>
</html>