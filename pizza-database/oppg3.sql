-- SQLite
--Finn alle poststeder. Hver poststed skal være med bare en gang, og resultatet
--skal sorteres alfabetisk.

SELECT DISTINCT poststeder.postnr, poststeder.poststed
FROM poststeder
ORDER BY poststed ASC