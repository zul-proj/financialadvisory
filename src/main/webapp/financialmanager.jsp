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
				style="background-color: #0F766E;">
				<h4 class="fw-bold mb-4">
					<i class="bi bi-briefcase me-2"></i> Financial Manager
				</h4>

				<div class="nav flex-column nav-pills gap-2">
					<a class="nav-link active text-white bg-success rounded-3"
						href="financialmanager.jsp">
						<i class="bi bi-speedometer2 me-2"></i> Dashboard
					</a>

					<a class="nav-link text-white rounded-3"
						href="financialmanager-statement.jsp">
						<i class="bi bi-file-earmark-text me-2"></i> Company Statement
					</a>

					<a class="nav-link text-white rounded-3"
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

			<!-- Main Content -->
			<main class="col-12 col-lg-10 p-4">

				<!-- Header -->
				<div
					class="d-flex flex-wrap justify-content-between align-items-center mb-4">
					<div>
						<h1 class="fw-bold mb-1">Financial Manager Dashboard</h1>
						<p class="text-secondary mb-0">
							View dashboard, analyze company performance, and generate company statements.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0 role-welcome-card">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>Financial Manager</strong>
						</div>
					</div>

				</div>

				<!-- KPI Cards -->
				<section class="row g-4 mb-4">
					<div class="col-md-6 col-xl-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<p class="text-secondary mb-1">Total Revenue</p>
								<h3 class="fw-bold mb-2">RM 67,676,767.00</h3>
								<small class="text-success">Company income summary</small>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-xl-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<p class="text-secondary mb-1">Total Expenses</p>
								<h3 class="fw-bold mb-2">RM 676,767.00</h3>
								<small class="text-danger">Approved expenses</small>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-xl-3">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<p class="text-secondary mb-1">Net Profit</p>
								<h3 class="fw-bold text-success mb-2">RM 67,000,000.00</h3>
								<small class="text-success">Positive cashflow</small>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-xl-3">
						<div
							class="card border-0 shadow-sm rounded-4 h-100 border-start border-primary border-5">
							<div class="card-body p-4">
								<p class="text-secondary mb-1">Company Status</p>
								<h3 class="fw-bold mb-2">Healthy</h3>
								<small class="text-primary">Based on current period</small>
							</div>
						</div>
					</div>
				</section>

				<!-- Analytics -->
				<section class="card border-0 shadow-sm rounded-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-graph-up me-2"></i> Company Financial Analytics
							</h5>
							<span class="badge text-bg-primary rounded-pill">Monthly</span>
						</div>

						<canvas id="financialManagerChart" height="110"></canvas>
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

	<!-- Financial Manager JS -->
	<script src="js/financialmanager.js"></script>

</body>
</html>
