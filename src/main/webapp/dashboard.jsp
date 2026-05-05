<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Financial Advisory System</title>
    <link rel="stylesheet" href="css/style.css">

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="dashboard-body">

<aside class="sidebar">
    <div class="sidebar-logo">Hazrel <3 Zul</div>

    <a href="dashboard.jsp" class="active">Dashboard</a>
    <a href="#">Transactions</a>
    <a href="#">Invoice Upload</a>
    <a href="#">AI Advisory</a>
    <a href="index.jsp">Logout</a>
</aside>

<main class="dashboard-main">
    <div class="dashboard-header">
        <div>
            <h1>Financial Dashboard</h1>
            <p>Overview of company cashflow and financial performance.</p>
        </div>

        <div class="user-box">
            <span>Welcome, User</span>
        </div>
    </div>

    <section class="stats-grid">
        <div class="stat-card">
            <span>Total Revenue</span>
            <h2>RM 24,500.00</h2>
            <p class="positive">+12% from last month</p>
        </div>

        <div class="stat-card">
            <span>Total Expenses</span>
            <h2>RM 15,200.00</h2>
            <p class="negative">+5% from last month</p>
        </div>

        <div class="stat-card">
            <span>Net Profit</span>
            <h2>RM 9,300.00</h2>
            <p class="positive">Positive cashflow</p>
        </div>

        <div class="stat-card warning">
            <span>Risk Status</span>
            <h2>Low Risk</h2>
            <p>Spending is under control</p>
        </div>
    </section>

    <section class="dashboard-grid">
        <div class="panel chart-panel">
            <div class="panel-header">
                <h3>Cashflow Trend</h3>
                <span>Monthly</span>
            </div>

            <canvas id="cashflowChart"></canvas>
        </div>

        <div class="panel">
            <div class="panel-header">
                <h3>Expense Categories</h3>
                <span>This Month</span>
            </div>

            <div class="category-list">
                <div>
                    <span>Rent</span>
                    <strong>RM 4,000</strong>
                </div>
                <div>
                    <span>Utilities</span>
                    <strong>RM 1,200</strong>
                </div>
                <div>
                    <span>Salary</span>
                    <strong>RM 7,500</strong>
                </div>
                <div>
                    <span>Marketing</span>
                    <strong>RM 2,500</strong>
                </div>
            </div>
        </div>
    </section>

    <section class="dashboard-grid bottom-grid">
        <div class="panel">
            <div class="panel-header">
                <h3>Recent Transactions</h3>
                <a href="#">View All</a>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Type</th>
                        <th>Category</th>
                        <th>Amount</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>Product Sales</td>
                        <td><span class="tag income-tag">Income</span></td>
                        <td>Sales</td>
                        <td>RM 8,500</td>
                    </tr>
                    <tr>
                        <td>Office Rent</td>
                        <td><span class="tag expense-tag">Expense</span></td>
                        <td>Rent</td>
                        <td>RM 4,000</td>
                    </tr>
                    <tr>
                        <td>Internet Bill</td>
                        <td><span class="tag expense-tag">Expense</span></td>
                        <td>Utilities</td>
                        <td>RM 200</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="panel ai-panel">
            <div class="panel-header">
                <h3>AI Financial Advisor</h3>
                <span>Suggestion</span>
            </div>

            <p>
                Your company currently has a positive cashflow. However, salary and rent
                expenses represent a large portion of monthly spending. Consider reviewing
                fixed costs to improve future profitability.
            </p>

            <a href="#" class="btn primary full-btn">Open Advisory Chatbot</a>
        </div>
    </section>
</main>

<script src="js/dashboard.js"></script>
</body>
</html>