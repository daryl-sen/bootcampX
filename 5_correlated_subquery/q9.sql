select name, continent, population
from world as w
where (
  select max(population) from world
  where continent = w.continent
) <= 25000000;