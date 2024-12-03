SELECT * FROM clienti WHERE nome = 'Mario';

SELECT nome, cognome FROM clienti WHERE anno_nascita = 1982;

SELECT COUNT (*) FROM fatture WHERE iva = 20;

SELECT descrizione FROM prodotti WHERE EXTRACT(YEAR FROM data_attivazione) = 2017 AND (in_produzione OR in_commercio = true);

SELECT fatture.*,clienti.nome, clienti.cognome FROM fatture JOIN clienti ON fatture.id_cliente = numero_cliente WHERE fatture.importo < 1000;

SELECT numero_fattura, importo, iva, data_fattura, numero_fornitore FROM fatture ;

SELECT EXTRACT(YEAR FROM data_fattura), COUNT(*) FROM fatture WHERE iva = 20 GROUP BY EXTRACT (YEAR FROM data_fattura);

SELECT EXTRACT(YEAR FROM data_fattura), COUNT(*), SUM(importo) FROM fatture GROUP BY EXTRACT(YEAR FROM data_fattura);

--EXTRAS

SELECT EXTRACT (YEAR FROM data_fattura), COUNT(*) FROM fatture WHERE fatture.tipologia = 'A' GROUP BY EXTRACT(YEAR FROM data_fattura) HAVING COUNT(*) > 2;

SELECT clienti.regione_residenza, SUM(fatture.importo) FROM fatture JOIN clienti ON fatture.id_cliente = numero_cliente GROUP BY clienti.regione_residenza;

SELECT COUNT(*) FROM clienti JOIN fatture ON numero_cliente = fatture.id_cliente WHERE clienti.anno_nascita = 1980 AND fatture.importo > 50;

