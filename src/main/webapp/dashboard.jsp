<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Dashboard - Financial Advisory System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

<!-- Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body class="bg-light">

	<div class="container-fluid">
		<div class="row min-vh-100">

			<!-- Sidebar -->
			<aside class="col-12 col-lg-2 text-white p-4"
				style="background-color: #005EB8;">
				<h4 class="fw-bold mb-4">
					<i class="bi bi-wallet2 me-2"></i> Financial Advisory
				</h4>

				<div class="nav flex-column nav-pills gap-2">
					<a class="nav-link active text-white bg-primary rounded-3"
						href="dashboard.jsp">
						<i class="bi bi-speedometer2 me-2"></i> Dashboard
					</a>

					<a class="nav-link text-white rounded-3" href="transaction.jsp">
						<i class="bi bi-cash-coin me-2"></i> Transactions
					</a>

					<a class="nav-link text-white rounded-3" href="aiadvisory.jsp">
						<i class="bi bi-robot me-2"></i> AI Advisory
					</a>

					<a class="nav-link text-danger rounded-3 mt-4" href="index.jsp">
						<i class="bi bi-box-arrow-right me-2"></i> <b>Logout</b>
					</a>
				</div>
			</aside>

			<!-- Main Content -->
			<main class="col-12 col-lg-10 p-4">

				<!-- Header -->
				<div
					class="d-flex flex-wrap justify-content-between align-items-center mb-4">
					<div>
						<h1 class="fw-bold mb-1">Financial Dashboard</h1>
						<p class="text-secondary mb-0">
							Overview of company cashflow and financial performance.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>User</strong>
						</div>
					</div>
				</div>

				<!-- KPI Cards -->
				<section class="row g-4 mb-4">
					<div class="col-md-6 col-xl-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Total Revenue</p>
									<i class="bi bi-graph-up-arrow fs-3 text-success"></i>
								</div>

								<h3 class="fw-bold mb-2">RM 24,500.00</h3>
								<small class="text-success">+67% from last month</small>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-xl-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Total Expenses</p>
									<i class="bi bi-wallet2 fs-3 text-danger"></i>
								</div>

								<h3 class="fw-bold mb-2">RM 15,200.00</h3>
								<small class="text-danger">+6.7% from last month</small>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-xl-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Net Profit</p>
									<i class="bi bi-cash-stack fs-3 text-success"></i>
								</div>

								<h3 class="fw-bold mb-2">RM 9,300.00</h3>
								<small class="text-success">Positive cashflow</small>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-xl-3">
						<div
							class="card border-0 shadow-sm rounded-4 h-100 border-start border-primary border-5">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Risk Status</p>
									<i class="bi bi-shield-check fs-3 text-primary"></i>
								</div>

								<h3 class="fw-bold mb-2">Low Risk</h3>
								<small class="text-primary">Spending is under control</small>
							</div>
						</div>
					</div>
				</section>

				<!-- Chart and Categories -->
				<section class="row g-4 mb-4">
					<div class="col-lg-8">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<h5 class="fw-bold mb-0">Cashflow Trend</h5>
									<span
										class="badge text-bg-primary-subtle text-primary rounded-pill">
										Monthly
									</span>
								</div>

								<canvas id="cashflowChart" height="120"></canvas>
							</div>
						</div>
					</div>

					<div class="col-lg-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<h5 class="fw-bold mb-0">Expense Categories</h5>
									<span
										class="badge text-bg-primary-subtle text-primary rounded-pill">
										This Month
									</span>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Rent</span>
									<strong>RM 4,000</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Utilities</span>
									<strong>RM 1,200</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Salary</span>
									<strong>RM 7,500</strong>
								</div>

								<div class="d-flex justify-content-between py-3">
									<span>Marketing</span>
									<strong>RM 2,500</strong>
								</div>
							</div>
						</div>
					</div>
				</section>

				<!-- Recent Transactions and AI Advisor -->
				<section class="row g-4">
					<div class="col-lg-8">
						<div class="card border-0 shadow-sm rounded-4">
							<div class="card-body p-4">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<h5 class="fw-bold mb-0">Recent Transactions</h5>
									<a href="transaction.jsp" class="text-decoration-none">
										View All
									</a>
								</div>

								<div class="table-responsive">
									<table class="table table-hover align-middle">
										<thead>
											<tr>
												<th>Title</th>
												<th>Type</th>
												<th>Category</th>
												<th class="text-end">Amount</th>
											</tr>
										</thead>

										<tbody>
											<tr>
												<td>Product Sales</td>
												<td>
													<span class="badge rounded-pill text-bg-success">
														Income
													</span>
												</td>
												<td>Sales</td>
												<td class="text-end">RM 8,500</td>
											</tr>

											<tr>
												<td>Office Rent</td>
												<td>
													<span class="badge rounded-pill text-bg-danger">
														Expense
													</span>
												</td>
												<td>Rent</td>
												<td class="text-end">RM 4,000</td>
											</tr>

											<tr>
												<td>Internet Bill</td>
												<td>
													<span class="badge rounded-pill text-bg-danger">
														Expense
													</span>
												</td>
												<td>Utilities</td>
												<td class="text-end">RM 200</td>
											</tr>

											<tr>
												<td>ABC Supplier Sdn Bhd - INV-0001</td>
												<td>
													<span class="badge rounded-pill text-bg-danger">
														Expense
													</span>
												</td>
												<td>Supplies</td>
												<td class="text-end">RM 477</td>
											</tr>
										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>

					<div class="col-lg-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<h5 class="fw-bold mb-0">AI Financial Advisor</h5>
									<span class="badge text-bg-primary rounded-pill">
										Suggestion
									</span>
								</div>

								<p class="text-secondary">
									Your company currently has a positive cashflow. However,
									salary and rent expenses represent a large portion of monthly
									spending. Consider reviewing fixed costs to improve future
									profitability.
								</p>

								<a href="aiadvisory.jsp"
									class="btn btn-primary w-100 rounded-pill">
									Open Advisory Chatbot
								</a>
							</div>
						</div>
					</div>
				</section>

			</main>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Dashboard JS -->
	<script src="js/dashboard.js"></script>

</body>
</html>