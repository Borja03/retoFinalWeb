<?php

require_once("./ServerConexion/BDConexion.php");

try{
$session = new Session();        
// open database
$session->execute("open saga");
// query
$xmlStr = $session->execute("xquery /");
// close session
$session->close();
$xml = new DOMDocument;           
$xml->loadXML($xmlStr);

$xsl = new DOMDocument;

$xsl->load('./xslt/index.xsl');

$proc = new XSLTProcessor;


$proc->importStyleSheet($xsl); 

echo $proc->transformToXML($xml);

} catch(Exception $e) {

    echo $e->getMessage();

}

?>