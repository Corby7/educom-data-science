SELECT mhl_cities.name, mhl_cities.commune_id
FROM mhl_cities
LEFT JOIN mhl_communes ON mhl_communes.id = mhl_cities.commune_ID
WHERE ISNULL(mhl_communes.id);