 xquery version "3.1";

declare variable $selectedBoss external := $selectedBoss;

delete node //boss[@id=$selectedBoss]

