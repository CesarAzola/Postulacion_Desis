<?php
    include("conexion.php");

    function getCommune($conexion, $table_commune,$id) {
        $resultados = mysqli_query($conexion, "SELECT * FROM $table_commune WHERE region_id = $id");

        if (!$resultados) {
            die('Error en la consulta: ' . mysqli_error($conexion));
        }

        $data = array();

        while ($fila = mysqli_fetch_assoc($resultados)) {
            $data[] = $fila;
        }

        return $data;
    }

    $id = isset($_GET['id']) ? $_GET['id'] : null;

    $data = array(
        "commune" => getCommune($conexion, $table_commune,$id),
    );
    mysqli_close($conexion);
    header('Content-Type: application/json');
    echo json_encode($data);
?>