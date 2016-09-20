/*Question 1 */
SELECT titrealb, datealb
	FROM album
	WHERE ((datealb >= '1930-01-01') AND (datealb <'1976-12-31'))
	ORDER BY datealb;

/*Question 2*/
SELECT nompers, prenompers, fonctpers
	FROM personnage
	WHERE (gentilpers = 'non');

/*Question 3*/
SELECT *
	FROM personnage
	WHERE ( nompers LIKE '%HADDOCK%');

/*Question 4*/
SELECT *
	FROM personnage
	WHERE ( nompers LIKE '%HADDOCK%') OR (nompers LIKE '%TOURNESOL %');

/*Question 5*/
SELECT nompays
	FROM pays;

/*Question 6*/
SELECT COUNT(DISTINCT nopays) 'Nombres de pays'
	FROM derouler;

/*Question 7*/



/*Question 8*/
SELECT titrealb
	FROM album a, participer p, personnage pe
	WHERE ((a.noalb = p.noalb) AND (p.nopers = pe.nopers) AND (pe.nompers LIKE '%CASTAFIORE%'));

/*Question 9*/
SELECT titrealb
	FROM album a, derouler d, pays p
	WHERE (
	((a.noalb = d.noalb) AND (d.nopays = p.nopays))
	AND ((p.nompays LIKE 'SYLDAVIE') OR (p.nompays LIKE 'BORDURIE'))
	);

/*Question 10*/
SELECT nompers,prenompers,titrealb
	FROM personnage p, album a, participer pa, derouler d, pays ps
	WHERE (((a.noalb = pa.noalb) AND (a.noalb = d.noalb) AND (pa.nopers= p.nopers) AND (ps.nopays=d.nopays)
	AND (ps.nompays LIKE '%FRANCE%')));

/*Question 11*/
SELECT *
	FROM personnage
	WHERE (sexepers = 'F');

/*Question 12*/
SELECT *
	FROM personnage
	WHERE (sexepers IS NULL);

/*Question 13*/
SELECT *
	FROM personnage
	ORDER BY fonctpers;

/*Question 14*/
SELECT nompers
	FROM personnage
	WHERE (fonctpers LIKE 'ENFANT');

/*Question 15*/


/*Question 16*/

/*Question 17*/
SELECT nompers, prenompers, fonctpers
FROM personnage p, participer pt, album a
WHERE ((p.nopers = pt.nopers) AND (pt.noalb = a.noalb)
AND (titrealb LIKE 'L%AFFAIRE TOURNESOL'));

/*Question 18*/
SELECT a.noalb, titrealb
FROM album a, derouler d, pays p
WHERE ((a.noalb = d.noalb) AND (d.nopays=p.nopays) AND (p.nompays LIKE 'CHINE'));

/*Question 19*/
SELECT nompers
FROM personnage
WHERE (fonctpers LIKE '%bandit%');

/*Question 20*/
SELECT nojuron, nomjuron
FROM juron
WHERE (nomjuron LIKE '%espece%');

/*Question 21*/
SELECT j.nomjuron
FROM juron j
INNER JOIN prononcer prn ON j.nojuron= prn.nojuron
INNER JOIN personnage ps ON prn.nopers=ps.nopers
INNER JOIN participer pt ON ps.nopers=pt.nopers
INNER JOIN album a ON pt.noalb=a.noalb
WHERE ((a.titrealb LIKE '%tresor%rackham%rouge%') AND (prn.numpage = 29));

/*Question 22*/
SELECT titrealb, datealb
FROM album
WHERE (datealb < '1950-01-01');

/*Question 23*/

/*Question 24*/
SELECT DISTINCT j.nomjuron, a.titrealb
FROM juron j
INNER JOIN prononcer prn ON j.nojuron= prn.nojuron
INNER JOIN personnage ps ON prn.nopers=ps.nopers
INNER JOIN participer pt ON ps.nopers=pt.nopers
INNER JOIN album a ON pt.noalb=a.noalb
WHERE (ps.nompers LIKE 'tintin')
ORDER BY (j.nomjuron);

/*Question 25*/
SELECT j.nomjuron, ps.nompers
FROM juron j
INNER JOIN prononcer prn ON j.nojuron= prn.nojuron
INNER JOIN personnage ps ON prn.nopers=ps.nopers
WHERE (ps.sexepers='F');

/*Question 26*/
SELECT ps.nopers,ps.nompers, ps.prenompers, COUNT (j.nojuron) 'NBjuron'
FROM personnage ps
INNER JOIN prononcer prn
ON ps.nopers=prn.nopers
INNER JOIN juron j
ON prn.nojuron=j.nojuron
GROUP BY ps.nopers,ps.nompers, ps.prenompers
ORDER BY NBjuron desc;

/*Question 27*/


/*Question 28*/


/*Question 29*/
SELECT a.titrealb, COUNT(*)'nb de jurons prononcés par le capitaine Haddock'
FROM prononcer pr
INNER JOIN personnage ps
ON pr.nopers=ps.nopers
INNER JOIN album a
ON pr.noalb=a.noalb
WHERE (ps.nompers LIKE 'Haddock')
GROUP BY a.titrealb
ORDER BY [nb de jurons prononcés par le capitaine Haddock] DESC;

/*Question 30*/
SELECT a.noalb, a.titrealb, Count(*)'Nb de personnage par album'
FROM album a
INNER JOIN participer pt
ON a.noalb=pt.noalb
GROUP BY a.noalb,a.titrealb
ORDER BY [Nb de personnage par album] DESC;

/*Question 31*/
SELECT a.noalb,a.titrealb, COUNT(*) 'Nombre de méchants par album'
FROM album a
INNER JOIN participer pt
ON a.noalb=pt.noalb
INNER JOIN personnage ps
ON pt.nopers=ps.nopers
WHERE (ps.gentilpers LIKE 'non')
GROUP BY a.noalb, a.titrealb
ORDER BY [Nombre de méchants par album] Desc;

/*Question 33*/


/*Question 36*/
SELECT pa.nompays,COUNT(*) 'nbalbum'
FROM pays pa
INNER JOIN derouler d
ON pa.nopays=d.nopays
INNER JOIN album a
ON d.noalb=a.noalb
GROUP BY pa.nompays;

/*Question 37*/
SELECT pa.nompays,COUNT(*) 'nbalbum'
FROM pays pa
INNER JOIN derouler d
ON pa.nopays=d.nopays
INNER JOIN album a
ON d.noalb=a.noalb
GROUP BY pa.nompays
WHERE (((a.titrealb LIKE '%crabe%pince%or%') or (a.titrealb LIKE 'coke%stock'))
	and (a.titrealb NOT LIKE 'tintin%congo') and (a.titrealb NOT LIKE '%oreille%cass%'));