CREATE VIEW POSTADRES AS
    SELECT SP.id AS ID,
    IF(SP.p_address<>'', SP.p_address, CONCAT(SP.straat, '', SP.huisnr)) AS Adres,
    IF(SP.p_address<>'', SP.p_postcode, SP.postcode) AS Postcode,
    IF(SP.p_address<>'', P_CI.name, CI.name) AS Stad
    FROM mhl_suppliers AS SP
    LEFT JOIN mhl_cities AS CI ON SP.city_ID = CI.id
    LEFT JOIN mhl_cities AS P_CI ON SP.p_city_ID = P_CI.id
