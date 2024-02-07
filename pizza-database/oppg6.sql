-- SQLite
--Finn alle pizzatyper som noen har kjøpt. 
--Unngår å gjenta pizzanavn i resultatet
--og sorter resultatet alfabetisk.

--Misforstod oppgaven hehe
-- SELECT DISTINCT p.navn, k.kid, k.navn, o.ordrenr, SUM(ol.antall) AS Antall
-- FROM kunde AS k
-- INNER JOIN ordre AS o ON (o.kunde = k.kid)
-- INNER JOIN ordrelinje AS ol ON (ol.ordrenr = o.ordrenr)
-- INNER JOIN pizzatyper AS p ON (p.pid = ol.pizza)
-- GROUP BY k.kid, p.pid
-- ORDER BY p.navn

SELECT DISTINCT navn
FROM ordrelinje INNER JOIN pizzatyper ON (pizza = pid)
ORDER BY navn
