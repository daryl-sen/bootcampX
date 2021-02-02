select name, continent from world as w
where name = any(
  select name from world
  -- divide highest in continent by second highest
  where (
    select max(population) from world
    where continent = w.continent
  ) / (
    select max(population)
    from world
    where population < (
      select max(population)
      from world
      where continent = w.continent
    ) and continent = w.continent
  ) >= 3
)