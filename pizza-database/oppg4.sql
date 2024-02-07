-- SQLite
--Skriv ut kid, navn, adresse, postnummer og poststed for alle kunder
SELECT kunde.kid, kunde.navn, kunde.adresse, kunde.postnr, poststeder.poststed
FROM kunde
INNER JOIN poststeder USING(postnr)