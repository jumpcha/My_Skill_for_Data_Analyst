# all song names from composer with the most sales in 5 years
SELECT name, composer
from tracks
WHERE composer = (
    SELECT composer_name
    FROM (
        SELECT
        t.composer AS composer_name,
        ROUND(SUM(inv.total), 2) AS total_sales
        from tracks AS t
        JOIN invoice_items 
        ON t.trackid = invoice_items.trackid
        JOIN invoices AS inv 
        ON invoice_items.invoiceid = inv.invoiceid
        WHERE t.composer IS NOT NULL
        GROUP BY 1
        ORDER by SUM(inv.total) DESC)
    LIMIT 1);

# all song names from composer with the most sales in 2013
SELECT tracks.name, tracks.composer
FROM tracks
JOIN invoice_items 
ON tracks.trackid = invoice_items.trackid
JOIN invoices AS inv 
ON invoice_items.invoiceid = inv.invoiceid
WHERE composer = (
    SELECT composer_name
    FROM (
        SELECT
        t.composer AS composer_name,
        ROUND(SUM(inv.total), 2) AS total_sales
        from tracks AS t
        JOIN invoice_items 
        ON t.trackid = invoice_items.trackid
        JOIN invoices AS inv 
        ON invoice_items.invoiceid = inv.invoiceid
        WHERE t.composer IS NOT NULL
        GROUP BY 1
        ORDER by SUM(inv.total) DESC)
    LIMIT 1)
 AND STRFTIME('%Y', inv.invoicedate) = '2013';

# song name in album that is the best selling in 5 year
SELECT albumid, name FROM tracks
WHERE albumid = (
        SELECT albumid
        FROM (
          SELECT
              t.albumid AS albumid,
              inv.total AS total
          FROM tracks AS t 
          JOIN invoice_items
          ON t.trackid = invoice_items.trackid
          JOIN invoices AS inv 
          on invoice_items.invoiceid = inv.InvoiceId
          GROUP by 1
          ORDER by inv.total DESC)
          LIMIT 1);
