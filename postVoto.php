<?php
    include("conexion.php");

    function insertVoto($conexion, $table_voto, $data) {
        $nombre_apellido = mysqli_real_escape_string($conexion, $data['nombre_apellido']);
        $alias = mysqli_real_escape_string($conexion, $data['alias']);
        $rut = mysqli_real_escape_string($conexion, $data['rut']);
        $email = mysqli_real_escape_string($conexion, $data['email']);
        $region = mysqli_real_escape_string($conexion, $data['region']);
        $comuna = mysqli_real_escape_string($conexion, $data['comuna']);
        $candidato = mysqli_real_escape_string($conexion, $data['candidato']);
        $arribo = implode(",", $data['arribo']);

        $query = "INSERT INTO $table_voto (name, alias, rut, mail, region_id, commune_id, candidate_id, arrival) 
                  VALUES ('$nombre_apellido', '$alias', '$rut', '$email', '$region', '$comuna', '$candidato', '$arribo')";

        $result = mysqli_query($conexion, $query);

        if (!$result) {
            die('Error en la inserción: ' . mysqli_error($conexion));
        }

        return "Voto Relizado exitosamente";
    }

    function validarRut($conexion,$table_voto,$rut){
        $puede_votar = true;
        $resultados = mysqli_query($conexion, "SELECT * FROM $table_voto WHERE rut = '$rut'");

        if ($resultados && mysqli_num_rows($resultados) > 0) {
            $puede_votar = false;
        }
        return $puede_votar;
    }

    if(validarRut($conexion,$table_voto,$_POST['rut'])){
        $response = insertVoto($conexion, $table_voto, $_POST);
        mysqli_close($conexion);
        header('Content-Type: application/json');
        echo json_encode(array("message" => $response));
    }else{
        mysqli_close($conexion);
        header('Content-Type: application/json');
        echo json_encode(array("message" => "Rut ya registrado"));
    } 
?>