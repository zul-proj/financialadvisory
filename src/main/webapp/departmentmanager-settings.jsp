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
					<a class="nav-link text-white rounded-3"
						href="departmentmanager-budget.jsp">
						<i class="bi bi-wallet2 me-2"></i> Budget Management
					</a>
					<a class="nav-link text-white rounded-3" href="departmentmanager-verification.jsp">
						<i class="bi bi-hourglass-split me-2"></i> Pending Verification
					</a>
					<a class="nav-link text-white rounded-3"
						href="departmentmanager-history.jsp">
						<i class="bi bi-list-ul me-2"></i> Transaction History
					</a>
					<a class="nav-link text-white rounded-3" href="departmentmanager-aiadvisory.jsp">
						<i class="bi bi-robot me-2"></i> AI Advisory
					</a>
					<a class="nav-link active text-white rounded-3"
						style="background-color: #312E81;" href="departmentmanager-settings.jsp">
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
						<h1 class="fw-bold mb-1">Account Settings</h1>
						<p class="text-secondary mb-0">
							Manage your Department Manager profile and account preferences.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0 role-welcome-card">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>Department Manager</strong>
						</div>
					</div>
				</div>

				<section class="row g-4">
					<div class="col-lg-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4 text-center">
								<div
									class="text-white rounded-circle d-inline-flex align-items-center justify-content-center mb-3"
									style="width: 92px; height: 92px; background-color: #4338CA;">
									<i class="bi bi-person-badge fs-1"></i>
								</div>
								<h5 class="fw-bold mb-1">Sarah Ahmad</h5>
								<p class="text-secondary mb-3">Sales Department Manager</p>
								<span class="badge text-bg-primary rounded-pill">Active Account</span>
							</div>
						</div>
					</div>

					<div class="col-lg-8">
						<form action="#" method="post">
							<div class="card border-0 shadow-sm rounded-4 mb-4">
								<div class="card-body p-4">
									<div class="d-flex justify-content-between align-items-center mb-3">
										<h5 class="fw-bold mb-0">
											<i class="bi bi-person-lines-fill me-2"></i> Profile Details
										</h5>
										<span class="badge text-bg-primary rounded-pill">Department Profile</span>
									</div>

									<div class="row g-3">
										<div class="col-md-6">
											<label class="form-label">Full Name</label>
											<input type="text" class="form-control rounded-3"
												name="fullName" value="Sarah Ahmad">
										</div>
										<div class="col-md-6">
											<label class="form-label">Email Address</label>
											<input type="email" class="form-control rounded-3"
												name="email" value="sarah@example.com">
										</div>
										<div class="col-md-6">
											<label class="form-label">Phone Number</label>
											<input type="text" class="form-control rounded-3"
												name="phone" placeholder="Example: 012-3456789">
										</div>
										<div class="col-md-6">
											<label class="form-label">Department</label>
											<input type="text" class="form-control rounded-3"
												value="Sales" readonly>
										</div>
									</div>
								</div>
							</div>

							<div class="card border-0 shadow-sm rounded-4">
								<div class="card-body p-4">
									<h5 class="fw-bold mb-3">
										<i class="bi bi-sliders me-2"></i> Account Preferences
									</h5>
									<div class="row g-3">
										<div class="col-md-6">
											<label class="form-label">New Password</label>
											<input type="password" class="form-control rounded-3"
												name="newPassword" placeholder="Enter new password">
										</div>
										<div class="col-md-6">
											<label class="form-label">Confirm Password</label>
											<input type="password" class="form-control rounded-3"
												name="confirmPassword" placeholder="Confirm new password">
										</div>
										<div class="col-12">
											<div class="form-check form-switch">
												<input class="form-check-input" type="checkbox"
													name="verificationAlerts" id="verificationAlerts" checked>
												<label class="form-check-label" for="verificationAlerts">
													Receive pending verification and budget alerts
												</label>
											</div>
										</div>
										<div class="col-12 d-flex justify-content-end gap-2">
											<button type="reset" class="btn btn-outline-secondary rounded-pill px-4">
												Reset
											</button>
											<button type="submit" class="btn btn-primary rounded-pill px-4">
												<i class="bi bi-save me-2"></i> Save Settings
											</button>
										</div>
									</div>
								</div>
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
