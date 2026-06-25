<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>

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
				style="background-color: #0D6EFD;">
				<h4 class="fw-bold mb-4">
					<i class="bi bi-wallet2 me-2"></i> Financial Advisory
				</h4>

				<div class="nav flex-column nav-pills gap-2">
					<a class="nav-link text-white rounded-3" href="dashboard.jsp?role=staff">
						<i class="bi bi-speedometer2 me-2"></i> Dashboard
					</a>

					<a class="nav-link active text-white rounded-3" style="background-color: #084298;"
						href="staff-transaction.jsp">
						<i class="bi bi-cash-coin me-2"></i> Transactions
					</a>

					<a class="nav-link text-white rounded-3" href="aiadvisory.jsp?role=staff">
						<i class="bi bi-robot me-2"></i> AI Advisory
					</a>

					<a class="nav-link text-white rounded-3" href="account-settings.jsp?role=staff">
						<i class="bi bi-gear me-2"></i> Account Settings
					</a>

					<a class="nav-link text-white bg-danger rounded-3 mt-4 shadow-sm fw-bold" href="index.jsp">
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
						<h1 class="fw-bold mb-1">Transaction Management</h1>
						<p class="text-secondary mb-0">
							Record, upload invoice, and submit company transactions for approval.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0 role-welcome-card">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>Staff</strong>
						</div>
					</div>

				</div>

				<!-- Summary Cards -->
				<section class="row g-4 mb-4">
					<div class="col-md-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Total Income</p>
									<i class="bi bi-arrow-down-circle fs-2 text-success"></i>
								</div>

								<h3 class="fw-bold mb-0">RM 67,676,767.00</h3>
								<small class="text-success">Approved income records</small>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Total Expenses</p>
									<i class="bi bi-arrow-up-circle fs-2 text-danger"></i>
								</div>

								<h3 class="fw-bold mb-0">RM 676,767.00</h3>
								<small class="text-danger">Approved expense records</small>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Net Balance</p>
									<i class="bi bi-piggy-bank fs-2 text-primary"></i>
								</div>

								<h3 class="fw-bold mb-0">RM 67,000,000.00</h3>
								<small class="text-primary">Based on approved transactions</small>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div
							class="card border-0 shadow-sm rounded-4 h-100 border-start border-warning border-5">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Pending Verification</p>
									<i class="bi bi-hourglass-split fs-2 text-warning"></i>
								</div>

								<h3 class="fw-bold mb-0">3</h3>
								<small class="text-warning">Waiting for Department Manager verification</small>
							</div>
						</div>
					</div>
				</section>

					<!-- Transaction Table -->
				<section class="card border-0 shadow-sm rounded-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-list-ul me-2"></i> Transaction List
							</h5>
							<div class="d-flex gap-2">
									<a href="staff-transaction-details.jsp?action=create" class="btn btn-primary rounded-pill px-4">
										<i class="bi bi-plus-circle me-2"></i>Create New
									</a>
									<a href="#" class="btn btn-outline-primary rounded-pill px-4">
										<i class="bi bi-download me-2"></i>Export
									</a>
								</div>
						</div>

						<div class="table-responsive">
							<table class="table table-hover align-middle">
								<thead>
									<tr>
										<th>ID</th>
										<th>Date</th>
										<th>Name</th>
										<th>Description</th>
										<th>Invoice No</th>
										<th>Payer</th>
										<th>Payee</th>
										<th>Department</th>
										<th>Money Flow</th>
										<th>Transaction Type</th>
										<th>Category</th>
										<th>Payment Method</th>
										<th>Currency</th>
										<th class="text-end">Amount</th>
										<th>Status</th>
										<th>Created By</th>
										<th>Verified By</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>

									<tbody>
										<tr>
											<td>TXN-0001</td>
											<td>2026-01-20</td>
											<td>ABC Supplier Sdn Bhd - INV-0001</td>
											<td>Office supplies purchased for company operations.</td>
											<td>INV-0001</td>
											<td>Finance Department</td>
											<td>ABC Supplier Sdn Bhd</td>
											<td>Finance <small class="d-block text-secondary">ID: 2</small></td>
											<td><span class="badge rounded-pill text-bg-danger">Money Out</span></td>
											<td>Expenses</td>
											<td>Supplies <small class="d-block text-secondary">ID: 6</small></td>
											<td>Invoice</td>
											<td>MYR</td>
											<td class="text-end text-danger fw-bold">RM 477.00</td>
											<td><span class="badge rounded-pill text-bg-warning">Pending Verification</span></td>
											<td>3</td>
											<td>4</td>
											<td class="text-center">
												<a class="btn btn-sm btn-outline-secondary rounded-pill" href="staff-transaction-details.jsp?id=TXN-0001"><i class="bi bi-eye"></i></a>
												<a href="staff-transaction-details.jsp?action=edit&id=TXN-0001" class="btn btn-sm btn-outline-primary rounded-pill"><i class="bi bi-pencil-square"></i></a>
												<a href="#" class="btn btn-sm btn-outline-danger rounded-pill"><i class="bi bi-trash"></i></a>
											</td>
										</tr>
										<tr>
											<td>TXN-0002</td>
											<td>2026-01-05</td>
											<td>Product Sales</td>
											<td>Revenue from confirmed product sales.</td>
											<td>SO-2026-001</td>
											<td>Customer A</td>
											<td>Finance Department</td>
											<td>Finance <small class="d-block text-secondary">ID: 2</small></td>
											<td><span class="badge rounded-pill text-bg-success">Money In</span></td>
											<td>Revenue</td>
											<td>Sales <small class="d-block text-secondary">ID: 1</small></td>
											<td>Bank Transfer</td>
											<td>MYR</td>
											<td class="text-end text-success fw-bold">RM 764,239.00</td>
											<td><span class="badge rounded-pill text-bg-success">Approved</span></td>
											<td>3</td>
											<td>4</td>
											<td class="text-center">
												<a class="btn btn-sm btn-outline-secondary rounded-pill" href="staff-transaction-details.jsp?id=TXN-0002"><i class="bi bi-eye"></i></a>
												<a href="staff-transaction-details.jsp?action=edit&id=TXN-0002" class="btn btn-sm btn-outline-primary rounded-pill"><i class="bi bi-pencil-square"></i></a>
												<a href="#" class="btn btn-sm btn-outline-danger rounded-pill"><i class="bi bi-trash"></i></a>
											</td>
										</tr>
										<tr>
											<td>TXN-0003</td>
											<td>2026-01-10</td>
											<td>Internet Bill</td>
											<td>Monthly internet service bill.</td>
											<td>BILL-INT-001</td>
											<td>Finance Department</td>
											<td>NetConnect Sdn Bhd</td>
											<td>Finance <small class="d-block text-secondary">ID: 2</small></td>
											<td><span class="badge rounded-pill text-bg-danger">Money Out</span></td>
											<td>Expenses</td>
											<td>Utilities <small class="d-block text-secondary">ID: 3</small></td>
											<td>Online Payment</td>
											<td>MYR</td>
											<td class="text-end text-danger fw-bold">RM 76,432.00</td>
											<td><span class="badge rounded-pill text-bg-danger">Rejected</span></td>
											<td>3</td>
											<td>4</td>
											<td class="text-center">
												<a class="btn btn-sm btn-outline-secondary rounded-pill" href="staff-transaction-details.jsp?id=TXN-0003"><i class="bi bi-eye"></i></a>
												<a href="staff-transaction-details.jsp?action=edit&id=TXN-0003" class="btn btn-sm btn-outline-primary rounded-pill"><i class="bi bi-pencil-square"></i></a>
												<a href="#" class="btn btn-sm btn-outline-danger rounded-pill"><i class="bi bi-trash"></i></a>
											</td>
										</tr>
									</tbody>
							</table>
						</div>

						<nav class="mt-3">
							<ul class="pagination justify-content-end mb-0">
								<li class="page-item disabled">
									<a class="page-link">Previous</a>
								</li>
								<li class="page-item active">
									<a class="page-link" href="#">1</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">2</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>
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

</body>
</html>
