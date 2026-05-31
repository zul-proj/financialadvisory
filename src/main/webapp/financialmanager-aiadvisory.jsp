<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>AI Financial Advisory System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="css/chatbot-widget.css?v=2">
</head>

<body class="bg-light">
	<div class="container-fluid">
		<div class="row min-vh-100">
			<aside class="col-12 col-lg-2 text-white p-4"
				style="background-color: #0F766E;">
				<h4 class="fw-bold mb-4">
					<i class="bi bi-briefcase me-2"></i> Financial Manager
				</h4>
				<div class="nav flex-column nav-pills gap-2">
					<a class="nav-link text-white rounded-3" href="financialmanager.jsp">
						<i class="bi bi-speedometer2 me-2"></i> Dashboard
					</a>
					<a class="nav-link active text-white bg-success rounded-3"
						href="financialmanager-aiadvisory.jsp">
						<i class="bi bi-robot me-2"></i> AI Advisory
					</a>
					<a class="nav-link text-white rounded-3" href="financialmanager-settings.jsp">
						<i class="bi bi-gear me-2"></i> Account Settings
					</a>

					<a class="nav-link text-danger rounded-3 mt-4" href="index.jsp">
						<i class="bi bi-box-arrow-right me-2"></i> <b>Logout</b>
					</a>
				</div>
			</aside>

			<main class="col-12 col-lg-10 p-4">
				<div
					class="d-flex flex-wrap justify-content-between align-items-center mb-4">
					<div>
						<h1 class="fw-bold mb-1">AI Advisory Module</h1>
						<p class="text-secondary mb-0">
							Chatbot-based financial suggestion based on company net profit calculation.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0 role-welcome-card">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>Financial Manager</strong>
						</div>
					</div>
				</div>

				<!-- Net Profit Calculation -->
				<section class="row g-4 mb-4">
					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<div>
										<p class="text-secondary mb-1">Total Revenue</p>
										<h3 class="fw-bold mb-0">RM 67,676,767.00</h3>
									</div>
									<i class="bi bi-graph-up-arrow fs-2 text-success"></i>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<div>
										<p class="text-secondary mb-1">Total Expenses</p>
										<h3 class="fw-bold mb-0">RM 676,767.00</h3>
									</div>
									<i class="bi bi-wallet2 fs-2 text-danger"></i>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<div>
										<p class="text-secondary mb-1">Net Profit</p>
										<h3 class="fw-bold text-success mb-0">RM 67,000,000.00</h3>
									</div>
									<i class="bi bi-cash-stack fs-2 text-primary"></i>
								</div>
							</div>
						</div>
					</div>
				</section>

				<!-- AI Suggestion Based on Net Profit -->
				<section class="card border-0 shadow-sm rounded-4 mb-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-lightbulb me-2"></i> AI Suggestion Based on Net Profit
							</h5>
							<span class="badge text-bg-success rounded-pill">Positive Status</span>
						</div>

						<div class="alert alert-success rounded-4 mb-3">
							<h6 class="fw-bold mb-2">Net Profit Status: Positive</h6>
							<p class="mb-0">
								The company currently has a positive net profit because total revenue is
								higher than total expenses. This indicates that the company is generating
								profit for the current period.
							</p>
						</div>

						<div class="alert alert-warning rounded-4 mb-0">
							<h6 class="fw-bold mb-2">AI Advisory Suggestion</h6>
							<p class="mb-0">
								Although the company has positive net profit, operational costs should still
								be monitored. The system suggests reducing unnecessary expenses to improve
								future profitability.
							</p>
						</div>
					</div>
				</section>

				<!-- Suggested Actions -->
				<section class="card border-0 shadow-sm rounded-4 mb-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-check2-square me-2"></i> Suggested Actions
							</h5>
							<span class="badge text-bg-success rounded-pill">Recommendation</span>
						</div>

						<div class="row g-3">
							<div class="col-md-6">
								<div class="border rounded-4 p-3 h-100">
									<div class="d-flex gap-3">
										<i class="bi bi-scissors fs-3 text-danger"></i>
										<div>
											<h6 class="fw-bold mb-1">Reduce operational cost</h6>
											<p class="text-secondary mb-0">
												Review recurring expenses such as utilities, rent, supplies,
												and other operational spending.
											</p>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="border rounded-4 p-3 h-100">
									<div class="d-flex gap-3">
										<i class="bi bi-wallet2 fs-3 text-primary"></i>
										<div>
											<h6 class="fw-bold mb-1">Control monthly expenses</h6>
											<p class="text-secondary mb-0">
												Set expense limits to prevent unnecessary spending and protect
												company profit.
											</p>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="border rounded-4 p-3 h-100">
									<div class="d-flex gap-3">
										<i class="bi bi-graph-up fs-3 text-success"></i>
										<div>
											<h6 class="fw-bold mb-1">Increase revenue activities</h6>
											<p class="text-secondary mb-0">
												Focus on sales or services that generate higher revenue and better
												profit margin.
											</p>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="border rounded-4 p-3 h-100">
									<div class="d-flex gap-3">
										<i class="bi bi-search fs-3 text-warning"></i>
										<div>
											<h6 class="fw-bold mb-1">Review high expense categories</h6>
											<p class="text-secondary mb-0">
												Check categories with high spending and identify which expenses can
												be reduced.
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<!-- Financial Advisory Summary -->
				<section class="row g-4 mb-4">
					<div class="col-lg-6">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<h5 class="fw-bold mb-3">
									<i class="bi bi-pie-chart me-2"></i> Expense Focus Area
								</h5>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Rent</span>
									<strong class="text-danger">High Fixed Cost</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Salary</span>
									<strong class="text-warning">Monitor</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Utilities</span>
									<strong class="text-success">Acceptable</strong>
								</div>

								<div class="d-flex justify-content-between py-3">
									<span>Marketing</span>
									<strong class="text-primary">Review ROI</strong>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<h5 class="fw-bold mb-3">
									<i class="bi bi-shield-check me-2"></i> Risk Evaluation
								</h5>

								<div class="alert alert-primary rounded-4 mb-3">
									<h6 class="fw-bold mb-1">Risk Level: Low Risk</h6>
									<p class="mb-0">
										The company is currently in a healthy position because income is still
										higher than expenses.
									</p>
								</div>

								<p class="text-secondary mb-0">
									The system recommends continuous monitoring of fixed costs, especially rent
									and salary expenses, to maintain positive cashflow.
								</p>
							</div>
						</div>
					</div>
				</section>

				<!-- Chatbot-based Advisory -->
				<section class="card border-0 shadow-sm rounded-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-robot me-2"></i> Chatbot-Based Advisory
							</h5>
							<span class="badge text-bg-primary rounded-pill">AI Chatbot</span>
						</div>

						<div class="bg-light rounded-4 p-3 mb-3" style="min-height: 300px;">
							<div class="d-flex mb-3">
								<div class="bg-primary text-white rounded-circle d-flex align-items-center justify-content-center me-2"
									style="width: 35px; height: 35px;">
									<i class="bi bi-robot"></i>
								</div>

								<div class="bg-white border rounded-4 p-3 shadow-sm">
									<p class="mb-0">
										Hi! I can suggest financial actions based on your company net profit calculation.
									</p>
								</div>
							</div>

							<div class="d-flex justify-content-end mb-3">
								<div class="bg-primary text-white rounded-4 p-3 shadow-sm">
									<p class="mb-0">
										My company net profit is RM 67,000,000. What should I do?
									</p>
								</div>
							</div>

							<div class="d-flex mb-3">
								<div class="bg-primary text-white rounded-circle d-flex align-items-center justify-content-center me-2"
									style="width: 35px; height: 35px;">
									<i class="bi bi-robot"></i>
								</div>

								<div class="bg-white border rounded-4 p-3 shadow-sm">
									<p class="mb-0">
										Your company net profit is positive. Continue monitoring expenses,
										review fixed costs, and protect future profitability.
									</p>
								</div>
							</div>
						</div>

						<form action="#" method="post">
							<div class="input-group">
								<input type="text" class="form-control rounded-start-pill"
									name="question"
									placeholder="Ask AI for financial suggestion...">

								<button class="btn btn-primary rounded-end-pill px-4" type="submit">
									<i class="bi bi-send me-2"></i> Send
								</button>
							</div>
						</form>
					</div>
				</section>
			</main>
		</div>
	</div>

	<jsp:include page="notification-widget.jsp" />

	<jsp:include page="chatbot-widget.jsp" />
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/chatbot-widget.js?v=2"></script>
</body>
</html>
