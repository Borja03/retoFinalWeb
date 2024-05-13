xquery version "3.1";

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";

declare variable $id external := $id; 
declare variable $juego external := $juego;
declare variable $nombre external := $nombre;
declare variable $genero external := $genero; 
declare variable $lore external := $lore; 
declare variable $arma1 external := $arma1; 
declare variable $arma2 external := $arma2; 
declare variable $imagen external := $imagen; 
declare variable $localizacion external := $localizacion;

declare variable $newBoss :=
    <boss id="{$id}" juego="{$juego}">
        <nombre>{$nombre}</nombre>
        <genero>{$genero}</genero>
        <lore>{$lore}</lore>
        <armas>
            <arma>{$arma1}</arma>
            <arma>{$arma2}</arma>
        </armas>
        <imagen>{$imagen}</imagen>
        <localizacion>{$localizacion}</localizacion>
    </boss>;

insert node $newBoss as last into /saga/bosses


  /// 
this an example working in basex 


insert node 
    <boss id="{ max(//boss/@id) + 1}" juego="DM">
        <nombre>NOMBRE2</nombre>
        <genero>GENERO</genero>
        <lore>LORE</lore>
        <armas>
            <arma>AR1</arma>
            <arma>AR2</arma>
        </armas>
        <imagen>BLA0.pnj</imagen>
        <localizacion>rabat</localizacion>
    </boss>
 
as last into /saga/bosses
