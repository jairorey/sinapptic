<table border="1" cellspacing="0" cellpadding="5" width="100%">
  <tr>
    <td height="65" colspan="20"></td>
  </tr>
  <tr>
    <td colspan="20" bgcolor="#eee"><p align="center"><strong>SOLICITUD DE AUTORIZACIÓN PARA CUMPLIMIENTO DE SERVICIOS INSTITUCIONALES</strong></p></td>
  </tr>
  <tr>
    <td colspan="12"><p>Nro. SOLICITUD DE AUTORIZACIÓN PARA CUMPLIMIENTO DE SERVICIOS INSTITUCIONALES<br /> {{ $numero_solicitud }}</p></td>
    <td colspan="8"><p>FECHA DE SOLICITUD (dd-mmm-aaaa) <br /> {{ $fecha_solicitud }}</p></td>
  </tr>
  <tr>
    <td colspan="20"><p><strong>P. PRESUPUESTARIA: {{ $partida }}</strong></p></td>
  </tr>
  
  <tr>
    <td colspan="4"><p align="center">VIÁTICOS</p></td>
    <td colspan="1"><p align="center">x</p></td>
    <td colspan="4"><p align="center">MOVILIZACIONES</p></td>
    <td colspan="1"><p align="center">&nbsp;</p></td>
    <td colspan="4"><p align="center">SUBSISTENCIAS</p></td>
    <td colspan="1"><p align="center">&nbsp;</p></td>
    <td colspan="4"><p align="center">ALIMENTACIÓN</p></td>
    <td colspan="1"><p align="center">&nbsp;</p></td>
  </tr>
  <tr>
    <td colspan="20" bgcolor="#eee"><p align="center"><strong>DATOS GENERALES</strong></p></td>
  </tr>
  <tr>
    <td colspan="10"><p>APELLIDOS - NOMBRES DE LA O EL SERVIDOR: <br /><strong>{{ $nombre }}</strong></p></td>
    <td colspan="10"><p>PUESTO QUE OCUPA: <br />{{ $cargo }}</p></td>
  </tr>
  <tr>
    <td colspan="10"><p>CIUDAD - PROVINCIA DEL SERVICIO INSTITUCIONAL: <br />{{ $ciudad }}</p></td>
    <td colspan="10"><p>NOMBRE DE LA UNIDAD A LA QUE PERTENECE LA O EL SERVIDOR: <br />{{ $departamento }}</p></td>
  </tr>
  <tr>
    <td colspan="5"><p align="center">FECHA SALIDA (dd-mmm-aaaa)</p><p class="valor">{{ $fecha_salida }}</p></td>
    <td colspan="5"><p align="center">HORA SALIDA (hh:mm)</p><p class="valor">{{ $hora_salida }}</p></td>
    <td colspan="5"><p align="center">FECHA LLEGADA (dd-mm-aaaa)</p><p class="valor">{{ $fecha_retorno }}</p></td>
    <td colspan="5"><p align="center">HORA LLEGADA (hh:mm)</p><p class="valor">{{ $hora_retorno }}</p></td>
  </tr>
  <tr>
    <td colspan="20"><p>SERVIDORES QUE INTEGRAN LOS SERVICIOS INSTITUCIONALES: {{ $integrantes }}</p></td>
  </tr>
  <tr>
    <td colspan="20"><p><strong>DESCRIPCIÓN DE LAS ACTIVIDADES A EJECUTARSE:</strong>{{ $descripcion }}</p></td>
  </tr>
  <tr>
    <td colspan="20" bgcolor="#eee"><p align="center"><strong>TRANSPORTE</strong></p></td>
  </tr>
  <tr>
    <td colspan="4" rowspan="2"><p align="center"><strong>TIPO DE TRANSPORTE</strong><br />
      (Aéreo, terrestre, marítimo, otros)</p></td>
    <td colspan="4" rowspan="2"><p align="center"><strong>NOMBRE DE TRANSPORTE </strong></p></td>
    <td colspan="4" rowspan="2"><p align="center"><strong>RUTA</strong></p></td>
    <td colspan="4"><p align="center"><strong>SALIDA</strong></p></td>
    <td colspan="4"><p align="center"><strong>LLEGADA</strong></p></td>
  </tr>
  <tr>
    <td colspan="2"><p align="center"><strong>FECHA</strong><br />
      <strong>dd-mm-aaaa</strong></p></td>
    <td colspan="2"><p align="center"><strong>HORA hh:mm</strong></p></td>
    <td colspan="2"><p align="center"><strong>FECHA </strong><br />
      <strong>dd-mm-aaaa</strong></p></td>
    <td colspan="2"><p align="center"><strong>HORA</strong><br />
      <strong> hh:mm</strong></p></td>
  </tr>
    @if(isset($aut_trans))
      @foreach($aut_trans as $trans)
        <tr>
          <td colspan="4"><p align="center">{{ $trans->tipo_transporte }}</p></td>
          <td colspan="4"><p align="center">{{ $trans->referencia }}</p></td>
          <td colspan="4"><p align="center">{{ $trans->origdest }}</p></td>
          <td colspan="2"><p align="center">{{ $trans->fecha_origen_transporte }}</p></td>
          <td colspan="2"><p align="center">{{ $trans->hora_origen_transporte }}</p></td>
          <td colspan="2"><p align="center">{{ $trans->fecha_destino_transporte }}</p></td>
          <td colspan="2"><p align="center">{{ $trans->hora_destino_transporte }}</p></td>
        </tr>
      @endforeach
    @endif
  <tr>
    <td colspan="20" bgcolor="#eee"><p align="center"><strong>DATOS PARA TRANSFERENCIA</strong></p></td>
  </tr>
  <tr>
    <td colspan="8"><p>NOMBRE DEL BANCO: {{ $banco }}</p></td>
    <td colspan="6"><p>TIPO DE CUENTA: {{ $tipo_cuenta }}</p></td>
    <td colspan="6"><p>No. DE CUENTA: {{ $numero_cuenta }}</p></td>
  </tr>
  <tr>
    <td colspan="10" bgcolor="#eee"><p align="center"><strong>FIRMA DE LA O EL SERVIDOR SOLICITANTE</strong></p></td>
    <td colspan="10" bgcolor="#eee"><p align="center"><strong>FIRMA DE LA O EL RESPONSABLE DE LA UNIDAD SOLICITANTE</strong></p></td>
  </tr>
  <tr>
    <td height="75" colspan="10"></td>
    <td height="75"colspan="10"></td>
  </tr>
  <tr>
    <td colspan="10"><p align="center">{{ $solicitante_nombres {{ $solicitante_apellidos</p></td>
    <td colspan="10"><p align="center">VARjefeDepartamento->nombres VARjefeDepartamento->apellidos</p></td>
  </tr>
  <tr>
    <td colspan="20" bgcolor="#eee"><p align="center"><strong>FIRMA MAXIMA AUTORIDAD</strong></p></td>
  </tr>
   <tr>
    <td height="75" colspan="20"></td>
  </tr>
  <tr>
    <td colspan="20"><p align="center"><strong>DR. EDWIN MIÑO <br />DIRECTOR EJECUTIVO</strong></p></td>
  </tr>
</table>
<p class="nota"><p><strong>NOTA: Esta solicitud deberá ser presentada para su Autorización, con por lo menos 72 horas de anticipación al cumplimiento de los servicios institucionales; salvo el caso de que por necesidades institucionales la Autoridad Nominadora autorice.</strong></p>
<ul>
    <li>De no existir disponibilidad presupuestaria, tanto la solicitud como la autorización quedarán insubsistentes</li>
    <li>El informe de Servicios Institucionales deberá presentarse dentro del término de 4 días de cumplido el servicio institucional</li>
</ul>
<p>Está prohibido conceder servicios institucionales durante los días de descanso obligatorio, con excepción de las Máximas Autoridades o de casos excepcionales debidamente justificados por la Máxima Autoridad o su Delegado.<strong> </strong></p></p>
<style type="text/css">
    td {
        font-family: Arial;
        font-size: .6em;
        font-style: normal;
        font-weight: normal;
        font-variant: normal;
    }
    .nota {
        font-size: .5em;
    }
</style>