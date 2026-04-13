CREATE OR REPLACE TABLE `analityka-dla-firm.01_SANDBOX_2026.WORKING_returns_clean` AS

SELECT
  InvoiceNo,
  DATE(InvoiceDate) AS InvoiceDate,
  ABS(Quantity) AS Quantity,
  UnitPrice,
  ABS(UnitPrice * Quantity) AS ReturnValue
FROM
  `analityka-dla-firm.01_SANDBOX_2026.RAW`
WHERE Quantity < 0