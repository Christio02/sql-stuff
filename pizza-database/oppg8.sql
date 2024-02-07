-- SQLite
--Spørring 8
--Finn alle pizzatyper som kunden ”Kari” ikke har kjøpt ennå. -> pizza nr 5
SELECT DISTINCT pizzatyper.navn, pizzatyper.pid
FROM pizzatyper
WHERE pizzatyper.pid NOT IN (
    SELECT ordrelinje.pizza
    FROM ordrelinje
    INNER JOIN ordre ON ordrelinje.ordrenr = ordre.ordrenr
    INNER JOIN kunde ON ordre.kunde = kunde.kid
    WHERE kunde.navn = "Kari"
)


