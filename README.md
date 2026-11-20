# TOP-15-K-nda-Lag

SQL Server-projekt med de 15 största fotbollsklubbarna efter Instagram-följare (data från 2026).

## Tabellen LagInfo

Namn, Arena, ArenaKapacitet, TitlarUCL (inklusive Europacupen), TitlarLiga, Liga, KändasteSpelare, AntalFöljare (miljoner) och BallonDor.

## Köra projektet

Öppna `Fotboll.sql` i SSMS och kör hela filen en gång.

## Exempelfråga

```sql
SELECT Liga, SUM(TitlarUCL) AS LigansUCL FROM LagInfo
GROUP BY Liga
ORDER BY LigansUCL DESC
```
