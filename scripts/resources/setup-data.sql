CREATE TABLE products (
  id SERIAL UNIQUE NOT NULL,
  region_code NUMERIC,
  description TEXT,
  name TEXT NOT NULL
);


insert into products (
    region_code, description, name
)
select
    i/200,
    md5(random()::text),
    md5(random()::text)
from generate_series(1, 1000000) s(i);