CREATE VIEW DIRECTIE AS
	SELECT C.supplier_ID AS ID, C.name AS contact, C.contacttype AS functie, D.name AS department
	FROM mhl_contacts AS C
	JOIN mhl_departments AS D ON C.department = D.id
	WHERE D.id = 3 OR C.contacttype LIKE '%directeur%'