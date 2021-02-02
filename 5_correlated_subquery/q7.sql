---- online answer
SELECT continent, name, area
FROM world x
WHERE area >= ALL
    (SELECT area FROM world y
    WHERE y.continent=x.continent
    AND area>0);


---- modified
select continent, name, area
from world as x
where area >= all (
  select area
  from world
  where continent = x.continent
  and area > 0
);

---- personal answer
select continent, name, area
from world as x
where area = (
  select max(area) from world
  where continent = x.continent
);