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
				style="background-color: #4338CA;">
				<h4 class="fw-bold mb-4">
					<i class="bi bi-person-badge me-2"></i> Department Manager
				</h4>
				<div class="nav flex-column nav-pills gap-2">
					<a class="nav-link text-white rounded-3" href="departmentmanager.jsp">
						<i class="bi bi-speedometer2 me-2"></i> Dashboard
					</a>
					<a class="nav-link text-white rounded-3" href="departmentmanager-budget.jsp">
						<i class="bi bi-wallet2 me-2"></i> Budget Management
					</a>
					<a class="nav-link text-white rounded-3" href="departmentmanager-verification.jsp">
						<i class="bi bi-hourglass-split me-2"></i> Pending Verification
					</a>
					<a class="nav-link text-white rounded-3" href="departmentmanager-history.jsp">
						<i class="bi bi-list-ul me-2"></i> Transaction History
					</a>
					<a class="nav-link active text-white rounded-3"
						style="background-color: #312E81;" href="departmentmanager-aiadvisory.jsp">
						<i class="bi bi-robot me-2"></i> AI Advisory
					</a>
					<a class="nav-link text-danger rounded-3 mt-4" href="index.jsp">
						<i class="bi bi-box-arrow-right me-2"></i> <b>Logout</b>
					</a>
				</div>
			</aside>

			<main class="col-12 col-lg-10 p-4">
				<div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
					<div>
						<h1 class="fw-bold mb-1">AI Advisory Module</h1>
						<p class="text-secondary mb-0">
							Chatbot-based financial suggestion based on department budget usage.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>Department Manager</strong>
						</div>
					</div>
				</div>

				<!-- Budget Usage Calculation -->
				<section class="row g-4 mb-4">
					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<div>
										<p class="text-secondary mb-1">Allocated Budget</p>
										<h3 class="fw-bold mb-0">RM 50,000.00</h3>
									</div>
									<i class="bi bi-wallet2 fs-2 text-primary"></i>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<div>
										<p class="text-secondary mb-1">Used Budget</p>
										<h3 class="fw-bold mb-0">RM 31,250.00</h3>
									</div>
									<i class="bi bi-arrow-up-circle fs-2 text-danger"></i>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<div>
										<p class="text-secondary mb-1">Remaining Budget</p>
										<h3 class="fw-bold text-success mb-0">RM 18,750.00</h3>
									</div>
									<i class="bi bi-piggy-bank fs-2 text-success"></i>
								</div>
							</div>
						</div>
					</div>
				</section>

				<!-- AI Suggestion Based on Budget Usage -->
				<section class="card border-0 shadow-sm rounded-4 mb-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-lightbulb me-2"></i> AI Suggestion Based on Budget Usage
							</h5>
							<span class="badge text-bg-warning rounded-pill">Monitor Status</span>
						</div>

						<div class="alert alert-warning rounded-4 mb-3">
							<h6 class="fw-bold mb-2">Budget Usage Status: 62.5% Used</h6>
							<p class="mb-0">
								The department has used 62.5% of the monthly budget. Marketing and training
								expenses should be monitored carefully to avoid exceeding the allocated budget.
							</p>
						</div>

						<div class="alert alert-primary rounded-4 mb-0">
							<h6 class="fw-bold mb-2">AI Advisory Suggestion</h6>
							<p class="mb-0">
								Verify only high-priority expenses and review pending transactions based on
								department budget availability and business importance.
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
							<span class="badge text-bg-primary rounded-pill">Recommendation</span>
						</div>

						<div class="row g-3">
							<div class="col-md-6">
								<div class="border rounded-4 p-3 h-100">
									<div class="d-flex gap-3">
										<i class="bi bi-hourglass-split fs-3 text-warning"></i>
										<div>
											<h6 class="fw-bold mb-1">Verify pending transactions</h6>
											<p class="text-secondary mb-0">
												Check staff submissions and approve only transactions with clear business purpose.
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
											<h6 class="fw-bold mb-1">Control remaining budget</h6>
											<p class="text-secondary mb-0">
												Use the remaining RM 18,750.00 for high-priority department needs only.
											</p>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="border rounded-4 p-3 h-100">
									<div class="d-flex gap-3">
										<i class="bi bi-graph-down fs-3 text-danger"></i>
										<div>
											<h6 class="fw-bold mb-1">Reduce non-essential expenses</h6>
											<p class="text-secondary mb-0">
												Delay spending that is not urgent to prevent the department from exceeding budget.
											</p>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="border rounded-4 p-3 h-100">
									<div class="d-flex gap-3">
										<i class="bi bi-search fs-3 text-success"></i>
										<div>
											<h6 class="fw-bold mb-1">Review high cost categories</h6>
											<p class="text-secondary mb-0">
												Focus on marketing, training, and supplies because these categories affect budget usage.
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<!-- Department Advisory Summary -->
				<section class="row g-4 mb-4">
					<div class="col-lg-6">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<h5 class="fw-bold mb-3">
									<i class="bi bi-pie-chart me-2"></i> Expense Focus Area
								</h5>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Marketing</span>
									<strong class="text-danger">High Usage</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Training</span>
									<strong class="text-warning">Monitor</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Supplies</span>
									<strong class="text-primary">Review</strong>
								</div>

								<div class="d-flex justify-content-between py-3">
									<span>Utilities</span>
									<strong class="text-success">Acceptable</strong>
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

								<div class="alert alert-warning rounded-4 mb-3">
									<h6 class="fw-bold mb-1">Risk Level: Medium Risk</h6>
									<p class="mb-0">
										The department still has remaining budget, but more than half of the monthly
										allocation has already been used.
									</p>
								</div>

								<p class="text-secondary mb-0">
									The system recommends stricter review for new expenses until the next budget period.
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
										Hi! I can suggest department actions based on budget usage.
									</p>
								</div>
							</div>

							<div class="d-flex justify-content-end mb-3">
								<div class="bg-primary text-white rounded-4 p-3 shadow-sm">
									<p class="mb-0">
										My department has used 62.5% of the monthly budget. What should I do?
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
										Monitor high expense categories, verify only priority transactions, and control
										spending to protect the remaining department budget.
									</p>
								</div>
							</div>
						</div>

						<form action="#" method="post">
							<div class="input-group">
								<input type="text" class="form-control rounded-start-pill"
									name="question"
									placeholder="Ask AI for department financial suggestion...">

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

	<jsp:include page="chatbot-widget.jsp" />
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/chatbot-widget.js?v=2"></script>
</body>
</html>
