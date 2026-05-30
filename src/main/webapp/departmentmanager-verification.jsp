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
					<a class="nav-link active text-white rounded-3"
						style="background-color: #312E81;" href="departmentmanager-verification.jsp">
						<i class="bi bi-hourglass-split me-2"></i> Pending Verification
					</a>
					<a class="nav-link text-white rounded-3" href="departmentmanager-history.jsp">
						<i class="bi bi-list-ul me-2"></i> Transaction History
					</a>
					<a class="nav-link text-white rounded-3" href="departmentmanager-aiadvisory.jsp">
						<i class="bi bi-robot me-2"></i> AI Advisory
					</a>
					<a class="nav-link text-danger rounded-3 mt-4" href="index.jsp">
						<i class="bi bi-box-arrow-right me-2"></i> <b>Logout</b>
					</a>
				</div>
			</aside>

			<main class="col-12 col-lg-10 p-4">
				<h1 class="fw-bold mb-1">Verify Transaction</h1>
				<p class="text-secondary mb-4">
					Review staff transactions submitted for Department Manager verification.
				</p>

				<section class="card border-0 shadow-sm rounded-4">
					<div class="card-body p-4">
						<div class="row g-3 mb-4">
							<div class="col-md-5">
								<label class="form-label">Search Transaction</label>
								<input type="text" class="form-control rounded-3"
									placeholder="Search by transaction name or staff">
							</div>

							<div class="col-md-3">
								<label class="form-label">Filter Staff</label>
								<select class="form-select rounded-3">
									<option selected>All Staff</option>
									<option>Siti Aminah</option>
									<option>Ahmad Hakim</option>
									<option>Nur Aina</option>
								</select>
							</div>

							<div class="col-md-3">
								<label class="form-label">Filter Status</label>
								<select class="form-select rounded-3">
									<option selected>All Status</option>
									<option>Pending</option>
									<option>Verified</option>
									<option>Rejected</option>
								</select>
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
										<th>Submitted By</th>
										<th class="text-end">Amount</th>
										<th>Status</th>
										<th class="text-center">Decision</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2026-01-10</td>
										<td>Marketing Campaign</td>
										<td>Siti Aminah</td>
										<td class="text-end">RM 2,500.00</td>
										<td><span class="badge text-bg-warning rounded-pill">Pending</span></td>
										<td class="text-center">
											<button class="btn btn-sm btn-success rounded-pill">Verify</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">Reject</button>
										</td>
									</tr>
									<tr>
										<td>2026-01-12</td>
										<td>Office Supplies</td>
										<td>Siti Aminah</td>
										<td class="text-end">RM 477.00</td>
										<td><span class="badge text-bg-warning rounded-pill">Pending</span></td>
										<td class="text-center">
											<button class="btn btn-sm btn-success rounded-pill">Verify</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">Reject</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
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
