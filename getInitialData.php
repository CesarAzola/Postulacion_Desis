<?php
    include("conexion.php");

    function getRegion($conexion, $table_region) {
        $resultados = mysqli_query($conexion, "SELECT * FROM $table_region");

        if (!$resultados) {
            die('Error en la consulta: ' . mysqli_error($conexion));
        }

        $data = array();

        while ($fila = mysqli_fetch_assoc($resultados)) {
            $data[] = $fila;
        }

        return $data;
    }

    function getCandidate($conexion, $table_candidate) {
        $resultados = mysqli_query($conexion, "SELECT * FROM $table_candidate");

        if (!$resultados) {
            die('Error en la consulta: ' . mysqli_error($conexion));
        }

        $data = array();

        while ($fila = mysqli_fetch_assoc($resultados)) {
            $data[] = $fila;
        }

        return $data;
    }
    

    $data = array(
        "region" => getRegion($conexion, $table_region),
        "candidate" => getRegion($conexion, $table_candidate)
    );
    mysqli_close($conexion);
    header('Content-Type: application/json');
    echo json_encode($data);
?>