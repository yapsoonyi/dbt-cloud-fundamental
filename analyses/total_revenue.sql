WITH payments AS (
    SELECT *
    FROM {{ ref("stg_payments") }}
),
total_revenue AS (
    SELECT SUM(AMOUNT) AS total_revenue
    FROM payments
    WHERE STATUS = 'success'
)

SELECT *
FROM total_revenue