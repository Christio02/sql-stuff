-- SQLite
--Hvor mange ”Thai Chicken” er solgt og for hvor mange kroner til sammen?
SELECT navn, COUNT(ordrelinje.antall) AS Antall_Thai_Chicken, SUM(ordrelinje.delsum) AS Totalt
FROM ordrelinje
INNER JOIN pizzatyper ON ordrelinje.pizza = pizzatyper.pid
WHERE pizzatyper.navn = "Thai Chicken"
