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
					<a class="nav-link active text-white rounded-3"
						style="background-color: #312E81;" href="departmentmanager-history.jsp">
						<i class="bi bi-list-ul me-2"></i> Transaction History
					</a>
					<a class="nav-link text-white rounded-3" href="departmentmanager-aiadvisory.jsp">
						<i class="bi bi-robot me-2"></i> AI Advisory
					</a>
					<a class="nav-link text-white rounded-3" href="departmentmanager-settings.jsp">
						<i class="bi bi-gear me-2"></i> Account Settings
					</a>

					<a class="nav-link text-danger rounded-3 mt-4" href="index.jsp">
						<i class="bi bi-box-arrow-right me-2"></i> <b>Logout</b>
					</a>
				</div>
			</aside>

			<main class="col-12 col-lg-10 p-4">
				<div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
					<div>
						<h1 class="fw-bold mb-1">Transaction History</h1>
						<p class="text-secondary mb-0">
							View verified and rejected department transactions.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0 role-welcome-card">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>Department Manager</strong>
						</div>
					</div>
				</div>

				<section class="card border-0 shadow-sm rounded-4">
					<div class="card-body p-4">
						<div class="row g-3 mb-4">
							<div class="col-md-4">
								<label class="form-label">Search Transaction</label>
								<input type="text" class="form-control rounded-3"
									placeholder="Search by transaction or category">
							</div>

							<div class="col-md-3">
								<label class="form-label">Filter Category</label>
								<select class="form-select rounded-3">
									<option selected>All Categories</option>
									<option>Training</option>
									<option>Utilities</option>
									<option>Marketing</option>
									<option>Supplies</option>
								</select>
							</div>

							<div class="col-md-2">
								<label class="form-label">Filter Status</label>
								<select class="form-select rounded-3">
									<option selected>All Status</option>
									<option>Verified</option>
									<option>Rejected</option>
								</select>
							</div>

							<div class="col-md-2">
								<label class="form-label">Transaction Month</label>
								<input type="month" class="form-control rounded-3">
							</div>

							<div class="col-md-1 d-flex align-items-end">
								<button class="btn btn-primary w-100 rounded-pill">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>

						<div class="table-responsive">
							<table class="table table-hover align-middle mb-0">
								<thead>
									<tr>
										<th>Date</th>
										<th>Transaction</th>
										<th>Category</th>
										<th class="text-end">Amount</th>
										<th>Verification Status</th>
										<th>Department Manager Comment</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2026-01-05</td>
										<td>Training Materials</td>
										<td>Training</td>
										<td class="text-end">RM 1,200.00</td>
										<td><span class="badge text-bg-success rounded-pill">Verified</span></td>
										<td>Approved for staff training.</td>
									</tr>
									<tr>
										<td>2026-01-08</td>
										<td>Internet Bill</td>
										<td>Utilities</td>
										<td class="text-end">RM 200.00</td>
										<td><span class="badge text-bg-danger rounded-pill">Rejected</span></td>
										<td>Amount needs correction.</td>
									</tr>
								</tbody>
							</table>
						</div>
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
