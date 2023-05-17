# Plato-s-Pizza

This SQL code is designed to analyze the sales data of a pizza restaurant. The code consists of a series of SQL statements that join multiple tables to create a new table, and then perform various analysis on that data.

## Table of Contents

1. Join all tables into one
2. Create new table from joined tables
3. View new table
4. Find busiest day
5. Find busiest time
6. Find number of pizzas being sold during peak hours
7. Order pizzas from Best to Worst Selling Pizzas
8. Order pizzas from Best to Worst Selling Pizzas According to size
9. Show only the best and worst selling pizzas
10. Average Pizza order
11. Seat Utilization

## Usage

The SQL code can be used to analyze the sales data of any pizza restaurant, provided that the data is organized in the same format as the tables used in the code.

To use the code, copy and paste it into a SQL editor or command-line interface that is connected to the database containing the relevant data.

## Statements

1. `Join all tables into one`: This statement joins all the relevant tables together to create a single table containing all the necessary data.

2. `Create new table from joined tables`: This statement creates a new table from the joined tables, with columns for each relevant piece of data.

3. `View new table`: This statement displays the newly created table.

4. `Find busiest day`: This statement groups the orders by day of the week and calculates the number of orders for each day. The results are sorted in descending order by the number of orders.

5. `Find busiest time`: This statement groups the orders by hour of the day and calculates the number of orders for each hour. The results are sorted in descending order by the number of orders.

6. `Find number of pizzas being sold during peak hours`: This statement groups the orders by hour of the day and calculates the total number of pizzas sold during each hour. The results are sorted in descending order by the total number of pizzas sold.

7. `Order pizzas from Best to Worst Selling Pizzas`: This statement groups the orders by pizza name and calculates the total number of pizzas sold for each pizza. The results are sorted in descending order by the total number of pizzas sold.

8. `Order pizzas from Best to Worst Selling Pizzas According to size`: This statement groups the orders by pizza size and calculates the total number of pizzas sold for each size. The results are sorted in descending order by the total number of pizzas sold.

9. `Show only the best and worst selling pizzas`: This statement shows only the best and worst selling pizzas, based on the total number of pizzas sold.

10. `Average Pizza order`: This statement calculates the average value of a pizza order, based on the total value of each order.

11. `Seat Utilization`: This statement calculates the percentage of seats in the restaurant that are utilized during business hours, based on the number of customers served during that time.

The data is then visualised using Tableau(https://public.tableau.com/app/profile/selete/viz/Pizzashopanalysis/Dashboard1?publish=yes)

## Recommendations

Based on the analysis of the pizza store's data, the following recommendations would improve business operations and drive growth:

1. Staffing and Inventory Management:
   - Increase staffing levels and inventory during peak periods, particularly on Thursdays and Fridays between 12 noon and 1 pm, as these are our busiest days and times. This will ensure that we can efficiently handle the higher demand and provide faster service to our customers. This would also apply for the evenings during weekends

2. Menu Optimization:
   - Promote the best-selling pizzas, such as the Classic Deluxe pizza, to further increase their popularity and drive sales. Highlight their unique features and flavors to attract more customers.
   - Evaluate the performance of the worst-selling pizzas, particularly The Brie Carre Pizza and the Green Garden Pizza. Consider removing them from the menu or exploring recipe revisions to make them more appealing and boost their sales.

3. Size and Variety:
   - Focus on promoting our large-sized pizzas, especially the Thai Chicken Pizza and the Classic Deluxe Pizza in large size, as they are the top sellers in their respective categories. Highlight the value for money and shareable nature of larger pizzas to encourage upselling.
   - Assess the performance of XXL size category, as it consistently underperforms. Consider revising the offerings or potentially phasing out this size to streamline the menu and optimize profitability.

4. Pricing and Value Perception:
   - Maintain competitive pricing to ensure the customers perceive the pizzas as a good value for their money. Regularly evaluate pricing strategies to balance profitability with customer satisfaction.
   - Introduce special offers or promotions, such as combo deals or loyalty programs, to encourage repeat customers, drive customer loyalty, and increase overall order value.

