xquery version "3.0";

declare namespace xs = "http://www.w3.org/2001/XMLSchema";
	 
declare variable $name external := $name;
declare variable $characters external := $characters;
declare variable $usd external := $usd; 
declare variable $eur external := $eur;
declare variable $gbp external := $gbp;
declare variable $jpy external := $jpy;
declare variable $language1 external := $language1;
declare variable $artistName external := $artistName;

let $newSet :=
    <set id="{generate-id()}" released="true">
        <name>{$name}</name>
        <numbCharacters>{xs:integer($characters)}</numbCharacters>
        <price>
            <USD>{xs:decimal($usd)}</USD>
            <EUR>{xs:decimal($eur)}</EUR>
            <GBP>{xs:decimal($gbp)}</GBP>
            <JPY>{xs:decimal($jpy)}</JPY>
        </price>
        <language>{if ($language1 ne "") then $language1 else "English"}</language>
        <artist>{$artistName}</artist>
    </set>

return
    insert nodes $newSet into /unmatched/sets
 