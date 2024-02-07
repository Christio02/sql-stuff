-- SQLite

--Spørring 1
-- Finn kunder på postnummer 7000. Ta med navn og adresse.
SELECT navn, adresse
FROM kunde
WHERE postnr = 7000