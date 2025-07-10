
## 📦 Product Refund Analysis (Using Pareto Chart)

In this analysis, I examined real order and refund data from **Maven Fuzzy Factory**, an e-commerce business selling plush toys. My goal is to identify which products contribute most to refund issues and prioritize actions based on the **Pareto Principle (80/20 Rule)**.

I calculated the **refund rate** per product and sorted them by total refund volume to visualize the top drivers of refund problems.

### 🔢 Summary Table

| Product Name               | Total Orders | Refund Count | Refund Rate | % of Total Refunds | Cumulative % |
|---------------------------|--------------|--------------|-------------|--------------------|--------------|
| 🎂 Birthday Sugar Panda    | 3,068        | 209          | 7%          | 40%                | 40%          |
| 🐻 Original Mr. Fuzzy      | 23,861       | 1,382        | 6%          | 34%                | 75%          |
| 💘 Forever Love Bear       | 4,803        | 131          | 3%          | 16%                | 91%          |
| 🧸 Hudson River Mini Bear  | 581          | 9            | 2%          | 9%                 | 100%         |

> 📌 **Total Refunds** across all products: **1,731 items**

----------

![enter image description here](https://github.com/SethSterlin/Product-Refund-Analysis-Maven-Fuzzy-Factory/blob/main/Refund%20Rate%20Analysis.png?raw=true)

### 📊 Insights from Pareto Chart

-   **Just two products** — _Birthday Sugar Panda_ and _Original Mr. Fuzzy_ — account for **over 75% of all refunds**, despite not being the majority of total sales.
    
-   This confirms the **Pareto Principle**: a small portion of products generates the majority of issues.
    
-   **Reducing refunds for just these two items** could significantly improve customer satisfaction and reduce operational costs.

----------

### ✅ Recommended Actions

-   Investigate **why these products have high refund rates** (e.g., product quality, unmet customer expectations, unclear descriptions).
    
-   Improve **product content and imagery** on the website to better align with customer expectations.
    
-   Introduce **stricter quality checks** before shipping high-risk items.
    
-   Monitor customer feedback and reviews for early signals of dissatisfaction.

----------

This analysis provides a **data-driven approach to product quality control** and highlights where the company should focus its efforts to reduce returns and increase efficiency.

---

## Resources

- SQL Scripts:  
  [Product Refund Analysis SQL](https://github.com/SethSterlin/Product-Refund-Analysis-Maven-Fuzzy-Factory/blob/main/Product%20Refund%20Analysis.sql)  

- Tableau Dashboard:  
  [Pareto Chart Refund Rate Analysis](https://public.tableau.com/views/ParetoChartRefundRateAnalysis/Sheet1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

- Excel Data File:  
  [Product Refund Analysis CSV](https://github.com/SethSterlin/Product-Refund-Analysis-Maven-Fuzzy-Factory/blob/main/Product%20Refund%20Analysis.csv)
