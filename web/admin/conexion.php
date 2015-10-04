<?
//datos de conexion
$GLOBALS['DB_IP'] = '194.140.168.201';
$GLOBALS['DB_USER'] = 'UPC_HACK';
$GLOBALS['DB_PASS'] = 'HACK_2015';
$GLOBALS['DB_NAME'] = 'upcreative_HACK2015';

//Funciones
function get_db_conn($idUsuario){
  $conn = mysql_connect($GLOBALS['DB_IP'], $GLOBALS['DB_USER'], $GLOBALS['DB_PASS']);
  mysql_select_db($GLOBALS['DB_NAME'], $conn);
  if (!$conn){
    echo "No pudo conectarse a la BD: " . mysql_error();
    exit;
  }
  return $conn;
}
//PARA PROTEGER SQL INJECT
function cleanQuery($string)
{
  if(get_magic_quotes_gpc())  // prevents duplicate backslashes
  {
    $string = stripslashes($string);
  }if (phpversion() >= '4.3.0')
    {
      $string = mysql_real_escape_string($string);
    }
    else
    {
      $string = mysql_escape_string($string);
  }
  return $string;
}
?>