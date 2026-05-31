<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>AI Financial Advisory System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

<!-- Chatbot Widget CSS -->
<link rel="stylesheet" href="css/chatbot-widget.css?v=2">

<!-- Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>
	html {
		scroll-behavior: smooth;
	}

	section {
		scroll-margin-top: 20px;
	}
</style>
</head>

<body class="bg-light">

	<div class="container-fluid">
		<div class="row min-vh-100">

			<!-- Sidebar -->
			<aside class="col-12 col-lg-2 text-white p-4"
				style="background-color: #4338CA;">
				<h4 class="fw-bold mb-4">
					<i class="bi bi-person-badge me-2"></i> Department Manager
				</h4>

				<div class="nav flex-column nav-pills gap-2">
					<a class="nav-link active text-white rounded-3" style="background-color: #312E81;"
						href="departmentmanager.jsp">
						<i class="bi bi-speedometer2 me-2"></i> Dashboard
					</a>

					<a class="nav-link text-white rounded-3"
						href="departmentmanager-budget.jsp">
						<i class="bi bi-wallet2 me-2"></i> Budget Management
					</a>

					<a class="nav-link text-white rounded-3"
						href="departmentmanager-history.jsp">
						<i class="bi bi-receipt me-2"></i> Transactions
					</a>

					<a class="nav-link text-white rounded-3" href="aiadvisory.jsp?role=departmentmanager">
						<i class="bi bi-robot me-2"></i> AI Advisory
					</a>

					<a class="nav-link text-white rounded-3" href="account-settings.jsp?role=departmentmanager">
						<i class="bi bi-gear me-2"></i> Account Settings
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
						<h1 class="fw-bold mb-1">Department Manager Dashboard</h1>
						<p class="text-secondary mb-0">
							Verify staff transactions, set department budget, and view department analytics.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0 role-welcome-card">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>Department Manager</strong>
						</div>
					</div>

				</div>

				<!-- Summary Cards -->
				<section class="row g-4 mb-4">
					<div class="col-md-6 col-xl-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Department Budget</p>
									<i class="bi bi-wallet2 fs-3 text-primary"></i>
								</div>
								<h3 class="fw-bold mb-2">RM 50,000.00</h3>
								<small class="text-secondary">Monthly budget allocation</small>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-xl-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Used Budget</p>
									<i class="bi bi-arrow-up-circle fs-3 text-danger"></i>
								</div>
								<h3 class="fw-bold mb-2">RM 31,250.00</h3>
								<small class="text-danger">62.5% used this month</small>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-xl-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Remaining Budget</p>
									<i class="bi bi-piggy-bank fs-3 text-success"></i>
								</div>
								<h3 class="fw-bold mb-2">RM 18,750.00</h3>
								<small class="text-success">Available balance</small>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-xl-3">
						<div
							class="card border-0 shadow-sm rounded-4 h-100 border-start border-warning border-5">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Pending Verification</p>
									<i class="bi bi-hourglass-split fs-3 text-warning"></i>
								</div>
								<h3 class="fw-bold mb-2">5</h3>
								<small class="text-warning">Staff transactions pending</small>
							</div>
						</div>
					</div>
				</section>

				<!-- Department Budget Management -->
				<section class="card border-0 shadow-sm rounded-4 mb-4"
					id="department-budget-management">
					<div class="card-body p-4">
						<div class="d-flex flex-wrap justify-content-between align-items-center mb-3">
							<div>
								<h5 class="fw-bold mb-1">
									<i class="bi bi-wallet2 me-2"></i> Department Budget Management
								</h5>
								<p class="text-secondary mb-0">
									View allocated budget, monitor usage, and set monthly department budget.
								</p>
							</div>

							<span class="badge text-bg-primary rounded-pill mt-3 mt-md-0">
								Sales Department
							</span>
						</div>

						<!-- Budget Overview -->
						<div class="row g-4 mb-4">
							<div class="col-lg-4">
								<div class="border rounded-4 p-3 h-100 bg-white">
									<div class="d-flex justify-content-between align-items-center mb-2">
										<p class="text-secondary mb-0">Allocated Budget</p>
										<i class="bi bi-wallet2 fs-4 text-primary"></i>
									</div>

									<h3 class="fw-bold mb-2">RM 50,000.00</h3>

									<div class="progress rounded-pill mb-2" style="height: 10px;">
										<div class="progress-bar bg-primary" style="width: 100%;"></div>
									</div>

									<small class="text-secondary">
										Monthly budget assigned to this department.
									</small>
								</div>
							</div>

							<div class="col-lg-4">
								<div class="border rounded-4 p-3 h-100 bg-white">
									<div class="d-flex justify-content-between align-items-center mb-2">
										<p class="text-secondary mb-0">Used Budget</p>
										<i class="bi bi-arrow-up-circle fs-4 text-danger"></i>
									</div>

									<h3 class="fw-bold text-danger mb-2">RM 31,250.00</h3>

									<div class="progress rounded-pill mb-2" style="height: 10px;">
										<div class="progress-bar bg-danger" style="width: 62.5%;"></div>
									</div>

									<small class="text-danger">
										62.5% of monthly budget has been used.
									</small>
								</div>
							</div>

							<div class="col-lg-4">
								<div class="border rounded-4 p-3 h-100 bg-white">
									<div class="d-flex justify-content-between align-items-center mb-2">
										<p class="text-secondary mb-0">Remaining Budget</p>
										<i class="bi bi-piggy-bank fs-4 text-success"></i>
									</div>

									<h3 class="fw-bold text-success mb-2">RM 18,750.00</h3>

									<div class="progress rounded-pill mb-2" style="height: 10px;">
										<div class="progress-bar bg-success" style="width: 37.5%;"></div>
									</div>

									<small class="text-success">
										37.5% budget still available.
									</small>
								</div>
							</div>
						</div>

						<!-- Set Department Budget -->
						<div class="border rounded-4 p-4 bg-white">
							<div class="d-flex justify-content-between align-items-center mb-3">
								<h6 class="fw-bold mb-0">
									<i class="bi bi-pencil-square me-2"></i> Set Department Budget
								</h6>
								<span class="badge text-bg-primary rounded-pill">Budget Setup</span>
							</div>

							<p class="text-secondary mb-3">
								Set the monthly budget amount for this department. The system will use this budget
								to monitor used and remaining department spending.
							</p>

							<form action="#" method="post">
								<div class="row g-3">
									<div class="col-md-4">
										<label class="form-label">Department</label>
										<input type="text" class="form-control rounded-3"
											name="department" value="Sales Department" readonly>
									</div>

									<div class="col-md-4">
										<label class="form-label">Budget Month</label>
										<input type="month" class="form-control rounded-3"
											name="budgetMonth">
									</div>

									<div class="col-md-4">
										<label class="form-label">Budget Amount</label>
										<input type="number" step="0.01" class="form-control rounded-3"
											name="budgetAmount" value="50000.00">
									</div>

									<div class="col-12">
										<label class="form-label">Budget Description</label>
										<textarea class="form-control rounded-3" name="budgetDescription"
											rows="3"
											placeholder="Example: Monthly budget allocation for Sales Department operations.">Monthly budget allocation for Sales Department operations.</textarea>
									</div>

									<div class="col-12 d-flex justify-content-end gap-2">
										<button type="reset" class="btn btn-outline-secondary rounded-pill px-4">
											Clear
										</button>

										<button type="submit" class="btn btn-primary rounded-pill px-4">
											<i class="bi bi-save me-2"></i> Set Budget
										</button>
									</div>
								</div>
							</form>
						</div>

					</div>
				</section>

				<!-- Chart and Category -->
				<section class="row g-4 mb-4">
					<div class="col-lg-8">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center mb-3">
									<h5 class="fw-bold mb-0">
										<i class="bi bi-graph-up me-2"></i> Department Budget Usage
									</h5>
									<span class="badge text-bg-primary-subtle text-primary rounded-pill">
										Monthly
									</span>
								</div>

								<canvas id="departmentBudgetChart" height="120"></canvas>
							</div>
						</div>
					</div>

					<div class="col-lg-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center mb-3">
									<h5 class="fw-bold mb-0">
										<i class="bi bi-pie-chart me-2"></i> Spending Categories
									</h5>
									<span class="badge text-bg-primary rounded-pill">This Month</span>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Marketing</span>
									<strong>RM 12,000</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Travel</span>
									<strong>RM 6,500</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span>Supplies</span>
									<strong>RM 4,750</strong>
								</div>

								<div class="d-flex justify-content-between py-3">
									<span>Training</span>
									<strong>RM 8,000</strong>
								</div>
							</div>
						</div>
					</div>
				</section>

				<!-- Expense Focus Area -->
				<section class="card border-0 shadow-sm rounded-4 mb-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-pie-chart me-2"></i> Expense Focus Area
							</h5>
						</div>

						<div class="row g-3">
							<div class="col-md-6 col-xl-3">
								<div class="border rounded-4 p-3 h-100">
									<p class="text-secondary mb-1">Marketing</p>
									<strong class="text-danger">High Usage</strong>
								</div>
							</div>
							<div class="col-md-6 col-xl-3">
								<div class="border rounded-4 p-3 h-100">
									<p class="text-secondary mb-1">Training</p>
									<strong class="text-warning">Monitor</strong>
								</div>
							</div>
							<div class="col-md-6 col-xl-3">
								<div class="border rounded-4 p-3 h-100">
									<p class="text-secondary mb-1">Supplies</p>
									<strong class="text-primary">Review</strong>
								</div>
							</div>
							<div class="col-md-6 col-xl-3">
								<div class="border rounded-4 p-3 h-100">
									<p class="text-secondary mb-1">Utilities</p>
									<strong class="text-success">Acceptable</strong>
								</div>
							</div>
						</div>
					</div>
				</section>

				<!-- Pending Verification -->
				<section class="card border-0 shadow-sm rounded-4 mb-4"
					id="pending-verification">
					<div class="card-body p-4">
						<div class="d-flex flex-wrap justify-content-between align-items-center mb-3">
							<div>
								<h5 class="fw-bold mb-1">
									<i class="bi bi-hourglass-split me-2"></i> Verify Transaction
								</h5>
								<p class="text-secondary mb-0">
									Review transactions submitted by department staff.
								</p>
							</div>

							<span class="badge text-bg-warning rounded-pill mt-3 mt-md-0">
								5 Pending
							</span>
						</div>

						<div class="table-responsive">
							<table class="table table-hover align-middle">
								<thead>
									<tr>
										<th>Date</th>
										<th>Submitted By</th>
										<th>Transaction</th>
										<th>Category</th>
										<th class="text-end">Amount</th>
										<th>Status</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>2026-05-14</td>
										<td>Aiman Hakim</td>
										<td>Client Meeting Travel</td>
										<td>Travel</td>
										<td class="text-end text-danger fw-bold">RM 850.00</td>
										<td>
											<span class="badge text-bg-warning rounded-pill">Pending</span>
										</td>
										<td class="text-center">
											<a class="btn btn-sm btn-outline-primary rounded-pill"
												href="departmentmanager-transaction-details.jsp?id=travel-001">
												<i class="bi bi-eye me-1"></i>View Details
											</a>
										</td>
									</tr>

									<tr>
										<td>2026-05-13</td>
										<td>Nur Sofia</td>
										<td>Marketing Material Printing</td>
										<td>Marketing</td>
										<td class="text-end text-danger fw-bold">RM 1,250.00</td>
										<td>
											<span class="badge text-bg-warning rounded-pill">Pending</span>
										</td>
										<td class="text-center">
											<a class="btn btn-sm btn-outline-primary rounded-pill"
												href="departmentmanager-transaction-details.jsp?id=marketing-001">
												<i class="bi bi-eye me-1"></i>View Details
											</a>
										</td>
									</tr>

									<tr>
										<td>2026-05-12</td>
										<td>Farhan Zaki</td>
										<td>Department Training Fee</td>
										<td>Training</td>
										<td class="text-end text-danger fw-bold">RM 3,000.00</td>
										<td>
											<span class="badge text-bg-warning rounded-pill">Pending</span>
										</td>
										<td class="text-center">
											<a class="btn btn-sm btn-outline-primary rounded-pill"
												href="departmentmanager-transaction-details.jsp?id=training-002">
												<i class="bi bi-eye me-1"></i>View Details
											</a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
				</section>

				<!-- Transactions -->
				<section class="card border-0 shadow-sm rounded-4 mb-4"
					id="transaction-history">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-list-ul me-2"></i> Department Transactions
							</h5>

							<a href="#" class="btn btn-outline-primary rounded-pill px-4">
								<i class="bi bi-download me-2"></i> Export
							</a>
						</div>

						<div class="row g-3 mb-4">
							<div class="col-md-4">
								<label class="form-label">Search Transaction</label>
								<input type="text" class="form-control rounded-3"
									placeholder="Search by title, staff, or category">
							</div>

							<div class="col-md-3">
								<label class="form-label">Filter Status</label>
								<select class="form-select rounded-3">
									<option selected>All Status</option>
									<option>Approved</option>
									<option>Rejected</option>
									<option>Pending</option>
								</select>
							</div>

							<div class="col-md-3">
								<label class="form-label">Filter Category</label>
								<select class="form-select rounded-3">
									<option selected>All Categories</option>
									<option>Marketing</option>
									<option>Travel</option>
									<option>Supplies</option>
									<option>Training</option>
								</select>
							</div>

							<div class="col-md-2 d-flex align-items-end">
								<button class="btn btn-primary w-100 rounded-pill">
									<i class="bi bi-search me-2"></i> Search
								</button>
							</div>
						</div>

						<div class="table-responsive">
							<table class="table table-hover align-middle">
								<thead>
									<tr>
										<th>Date</th>
										<th>Title</th>
										<th>Submitted By</th>
										<th>Category</th>
										<th class="text-end">Amount</th>
										<th>Verification Status</th>
										<th>Department Manager Comment</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>2026-05-10</td>
										<td>Social Media Advertisement</td>
										<td>Aiman Hakim</td>
										<td>Marketing</td>
										<td class="text-end text-danger fw-bold">RM 4,500.00</td>
										<td>
											<span class="badge text-bg-success rounded-pill">Approved</span>
										</td>
										<td>Approved for campaign launch.</td>
									</tr>

									<tr>
										<td>2026-05-08</td>
										<td>Office Supplies</td>
										<td>Nur Sofia</td>
										<td>Supplies</td>
										<td class="text-end text-danger fw-bold">RM 750.00</td>
										<td>
											<span class="badge text-bg-success rounded-pill">Approved</span>
										</td>
										<td>Necessary for office operation.</td>
									</tr>

									<tr>
										<td>2026-05-05</td>
										<td>Customer Visit Transport</td>
										<td>Farhan Zaki</td>
										<td>Travel</td>
										<td class="text-end text-danger fw-bold">RM 420.00</td>
										<td>
											<span class="badge text-bg-success rounded-pill">Approved</span>
										</td>
										<td>Valid customer visit expense.</td>
									</tr>

									<tr>
										<td>2026-05-02</td>
										<td>Marketing Workshop</td>
										<td>Aiman Hakim</td>
										<td>Training</td>
										<td class="text-end text-danger fw-bold">RM 2,300.00</td>
										<td>
											<span class="badge text-bg-danger rounded-pill">Rejected</span>
										</td>
										<td>Exceeds remaining training budget.</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
				</section>

				<!-- AI Advisory -->
				<section class="card border-0 shadow-sm rounded-4"
					id="ai-advisory">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-robot me-2"></i> Department AI Advisory
							</h5>
							<span class="badge text-bg-primary rounded-pill">Suggestion</span>
						</div>

						<div class="alert alert-warning rounded-4 mb-3">
							<h6 class="fw-bold mb-2">Budget Usage Alert</h6>
							<p class="mb-0">
								The department has used 62.5% of the monthly budget. Marketing and training
								expenses should be monitored carefully to avoid exceeding the allocated budget.
							</p>
						</div>

						<div class="alert alert-primary rounded-4 mb-0">
							<h6 class="fw-bold mb-2">Recommended Action</h6>
							<p class="mb-0">
								Verify only high-priority expenses and review pending transactions based on
								department budget availability and business importance.
							</p>
						</div>
					</div>
				</section>

			</main>
		</div>
	</div>

	<jsp:include page="notification-widget.jsp" />

	<jsp:include page="chatbot-widget.jsp" />

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Chatbot Widget JS -->
	<script src="js/chatbot-widget.js?v=2"></script>

	<script>
		const departmentBudgetChart = document.getElementById("departmentBudgetChart");

		if (departmentBudgetChart) {
			new Chart(departmentBudgetChart, {
				type: "line",
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
					datasets: [
						{
							label: "Department Budget",
							data: [50000, 50000, 50000, 50000, 50000, 50000],
							borderWidth: 3,
							tension: 0.4,
							borderColor: "#36A2EB",
							backgroundColor: "#9BD0F5"
						},
						{
							label: "Used Budget",
							data: [12000, 18000, 22000, 26000, 28500, 31250],
							borderWidth: 3,
							tension: 0.4,
							borderColor: "#FF6384",
							backgroundColor: "#FFB1C1"
						}
					]
				},
				options: {
					responsive: true,
					plugins: {
						legend: {
							position: "bottom"
						}
					},
					scales: {
						y: {
							beginAtZero: true
						}
					}
				}
			});
		}
	</script>

</body>
</html>
