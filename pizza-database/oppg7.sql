-- SQLite
--Finn kid, navn og adresse for alle personer 
--som bor på adresser som inneholder
--”gata”.
SELECT k.kid, k.navn, k.adresse
FROM kunde AS K
WHERE k.adresse LIKE "%gata%"