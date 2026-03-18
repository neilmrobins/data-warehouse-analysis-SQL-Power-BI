WITH base AS (
    SELECT 
        DATETRUNC(year, order_date) AS order_year,
        sales_amount,
        price
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
),
agg AS (
    SELECT 
        order_year,
        SUM(sales_amount) AS total_sales,
        AVG(price) AS avg_price,
        GROUPING(order_year) AS is_total
    FROM base
    GROUP BY ROLLUP(order_year)
)
SELECT
    CASE 
        WHEN is_total = 1 THEN NULL
        ELSE order_year
    END AS order_date,

    total_sales,

    -- ✅ FIX: exclude total row from window calculation
    CASE 
        WHEN is_total = 1 THEN NULL
        ELSE SUM(CASE WHEN is_total = 0 THEN total_sales END) 
             OVER (ORDER BY order_year ROWS UNBOUNDED PRECEDING)
    END AS running_total_sales,

    CASE 
        WHEN is_total = 1 THEN NULL
        ELSE AVG(CASE WHEN is_total = 0 THEN avg_price END) 
             OVER (ORDER BY order_year ROWS UNBOUNDED PRECEDING)
    END AS moving_average_price

FROM agg
ORDER BY 
    is_total,         -- puts total last (0 first, 1 last)
    order_year;