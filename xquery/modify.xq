 xquery version "3.1";

declare variable $selectSet external := $selectSet;
declare variable $price external := $price;
declare variable $selectCoin external := $selectCoin;

replace value of node
/unmatched/sets/set[@id=$selectSet]/price/USD with $price


