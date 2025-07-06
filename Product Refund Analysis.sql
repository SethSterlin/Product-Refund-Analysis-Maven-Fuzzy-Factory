USE mavenfuzzyfactory;

SELECT
	*
FROM
	order_item_refunds;
    
SELECT
	*
FROM
	orders;
    
SELECT
	*
FROM
	products;

-- Product Refund Analysis
-- COUNT REFUND ORDERS
WITH CRO AS (SELECT
	o.primary_product_id,
    COUNT(otf.order_item_refund_id) AS total_refund
FROM
	order_item_refunds otf
    JOIN
    orders o ON otf.order_id = o.order_id
GROUP BY
	o.primary_product_id)
SELECT
	c.primary_product_id,
    p.product_name,
    c.total_refund
FROM
	CRO c
    LEFT JOIN
    products p ON c.primary_product_id = p.product_id;

-- total order
WITH COI AS (SELECT
	primary_product_id,
	COUNT(order_id) AS total_order
FROM
	orders
GROUP BY
	primary_product_id)
SELECT
	coi.primary_product_id,
    p.product_name,
    coi.total_order
FROM
	COI coi
    JOIN
    products p ON coi.primary_product_id = p.product_id;
    
WITH
-- COUNT REFUND ORDERS
CRO AS (
  SELECT
    o.primary_product_id,
    COUNT(otf.order_item_refund_id) AS total_refund
  FROM
    order_item_refunds otf
    JOIN orders o ON otf.order_id = o.order_id
  GROUP BY
    o.primary_product_id
),

-- TOTAL ORDERS
COI AS (
  SELECT
    primary_product_id,
    COUNT(order_id) AS total_order
  FROM
    orders
  GROUP BY
    primary_product_id
)

-- JOIN ALL
SELECT
  coi.primary_product_id,
  p.product_name,
  coi.total_order,
  COALESCE(cro.total_refund, 0) AS total_refund,
  ROUND(CAST(COALESCE(cro.total_refund, 0) AS FLOAT) / coi.total_order, 4) AS refund_rate
FROM
  COI coi
  LEFT JOIN CRO cro ON coi.primary_product_id = cro.primary_product_id
  JOIN products p ON coi.primary_product_id = p.product_id;