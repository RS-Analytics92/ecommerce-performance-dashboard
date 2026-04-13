CREATE OR REPLACE TABLE `analityka-dla-firm.01_SANDBOX_2026.WORKING_sales_clean` AS

SELECT
  InvoiceNo,
  DATE(InvoiceDate) AS InvoiceDate,
  Quantity,
  UnitPrice,
  UnitPrice * Quantity AS Revenue
FROM
  `analityka-dla-firm.01_SANDBOX_2026.RAW`
WHERE Quantity > 0