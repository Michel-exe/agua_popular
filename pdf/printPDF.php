<?php
    require("../php/validarSesion.php");
    require("../php/cn.php");
    require("./barcode/barcode.php");

    function formatMoney($number, $fractional=false) {
        if ($fractional) {$number = sprintf('%.2f', $number);}
        while (true) {
            $replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
            if ($replaced != $number) {
                $number = $replaced;
            } else {
                break;
            }
        }
        return $number;
    }
    try {
        $nur = $_GET['ide'];
        $senPagos = "SELECT * FROM pagos WHERE numRegistro = '$nur' ORDER BY id DESC LIMIT 1";
        $valPagos = mysqli_query($con,$senPagos);

        while ($row = mysqli_fetch_array($valPagos)){
            $numRecibo = $row['numRecibo'];
            $fecha = $row['fecha'];
            $cobranza = formatMoney($row['cobranza'].".00");
            $cuotas = $row['cuota'];
            $mesPaga = $row['mesPaga'];
            $anticipos = formatMoney($row['anticipos'].".00");
            $descuento = formatMoney($row['descuento'].".00");
            $rezagos = formatMoney($row['rezagos'].".00");
            $recargos = formatMoney($row['recargos'].".00");
            $conexion = formatMoney($row['conexion'].".00");
            $reconexion=formatMoney("0".".00");
            $varios = formatMoney($row['varios'].".00");
            $total = formatMoney($row['importT'].".00");
        }

        $senTomas = "SELECT * FROM tomas WHERE numRegistro = '$nur' LIMIT 1 ";
        $valTomas = mysqli_query($con,$senTomas);
        while ($row = mysqli_fetch_array($valTomas)){
            $nom=$row['nombre'];
            $contrato=$row['contrato'];
            $dir="Calle: ".$row['calle']." Mz: ".$row['mzn']." num: ".$row['num'].".";
            $dir2="Entre calle: ".$row['calle1']." y calle: ".$row['calle2'].". Colonia: ".$row['colonia'];
            $dir3="Nanacamlpa Tlaxcala de Mariano Arista, Tlaxcala C.P. 90280";
            $tipo = $row['tipo'];
            $periodo = $row['concepto'];
        }

        $senPdf = "SELECT * FROM pdfrecibodecobro";
        $valPdf = mysqli_query($con,$senPdf);
        $campos= array();
        while ($row = mysqli_fetch_array($valPdf)){
            array_push($campos , $row['campo']);
        }
        require('./pdf/fpdf.php');
        $pdf=new FPDF('P','mm','A4');
        $pdf->AddPage();

        $pdf->Image("../documents/recibo.jpg",0,0,210,330);
        $pdf->SetFont('Arial','',8);
        $pdf->SetFontSize(9);

        $pdf->Text(169,65,"RECIBO N.".$numRecibo);
        $pdf->Text(169,80,"Fecha: ".$fecha);
        
        $pdf->SetFontSize(16);
        $pdf->Text(36,112,$contrato);
        
        $pdf->SetFontSize(7);
        $pdf->Text(70,106,$nom);
        $pdf->Text(70,109.5,$dir);
        $pdf->Text(70,113,$dir2);
        $pdf->Text(70,116.5,$dir3);

        $pdf->Text(73,131,$tipo);
        $pdf->Text(108,131,$cuotas);
        $pdf->Text(145,131,$mesPaga);
        
        $pdf->SetFontSize(8);
        $pdf->Text(117,162.5,"$ ".$cobranza);
        $pdf->Text(117,170,"$ ".$anticipos);
        $pdf->Text(117,178,"$ ".$anticipos);
        $pdf->Text(117,186.5,"$ ".$recargos);

        $pdf->Text(173,162.5,"$ ".$conexion);
        $pdf->Text(173,170,"$ ".$descuento);
        $pdf->Text(173,178,"$ ".$reconexion);
        $pdf->Text(173,186.5,"$ ".$varios);

        $pdf->SetFont('Arial','B',13);
        $pdf->Text(62,215,"$ ".$total);
        
        /** Textos del PDF **/
        $pdf->SetFont('Arial','B',10.5);
        $pdf->Text(56,39,$campos[0]);
        $pdf->Text(100,47,$campos[1]);
        $pdf->SetFont('Arial','',8);
        $pdf->Text(29,67,$campos[2]);
        $pdf->Text(29,76,$campos[3]);
        $pdf->Text(29,84,$campos[4]);



        // $pdf->SetDrawColor(0,255,0);
        // for ($i=0; $i <340 ; $i=$i+10) {$pdf->Line(0,$i,210,$i);}
        // $pdf->SetDrawColor(255,0,255);
        // for ($i=0; $i <210 ; $i=$i+10) {$pdf->Line($i,0,$i,340);}
        
        $pdf->Output();
    } catch (\Throwable $th) {
        echo $th."<br>";
        echo "Error al hacer el PDF verifique que el nur sea correcto <br>Si es correcto resportarlo lo antes posible";
    }

?>
<!-- <h1>Adios</h1>
<img src="barcode/barcode.php?text=123&size=50&orientation=horizontal&codetype=code128&sizefactor=1" alt="imagen"> -->