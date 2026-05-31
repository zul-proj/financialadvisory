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
				style="background-color: #950606;">
				<h4 class="fw-bold mb-4">
					<i class="bi bi-shield-lock me-2"></i> System Admin
				</h4>
				<div class="nav flex-column nav-pills gap-2">
					<a class="nav-link text-white rounded-3" href="admin-user-list.jsp">
						<i class="bi bi-people me-2"></i> User List
					</a>
					<a class="nav-link text-white rounded-3" href="admin-department-list.jsp">
						<i class="bi bi-building me-2"></i> Department List
					</a>
					<a class="nav-link active text-white rounded-3"
						style="background-color: #ff2c2c;" href="admin-settings.jsp">
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
							Manage your System Admin profile, contact details, and password.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0 role-welcome-card">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>System Admin</strong>
						</div>
					</div>
				</div>

				<section class="row g-4">
					<div class="col-lg-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4 text-center">
								<div
									class="text-white rounded-circle d-inline-flex align-items-center justify-content-center mb-3"
									style="width: 92px; height: 92px; background-color: #950606;">
									<i class="bi bi-person-gear fs-1"></i>
								</div>
								<h5 class="fw-bold mb-1">System Admin</h5>
								<p class="text-secondary mb-3">Administration Account</p>
								<span class="badge text-bg-danger rounded-pill">Full Access</span>
								<hr class="my-4">
								<div class="text-start small">
									<div class="d-flex justify-content-between py-2 border-bottom">
										<span class="text-secondary">Role</span>
										<strong>System Admin</strong>
									</div>
								</div>
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
										<span class="badge text-bg-danger rounded-pill">Admin Profile</span>
									</div>

									<div class="row g-3">
										<div class="col-md-6">
											<label class="form-label">Full Name</label>
											<input type="text" class="form-control rounded-3"
												name="fullName" value="System Admin">
										</div>
										<div class="col-md-6">
											<label class="form-label">Email Address</label>
											<input type="email" class="form-control rounded-3"
												name="email" value="admin@example.com">
										</div>
										<div class="col-md-6">
											<label class="form-label">Phone Number</label>
											<input type="text" class="form-control rounded-3"
												name="phone" placeholder="Example: 012-3456789">
										</div>
										<div class="col-md-6">
											<label class="form-label">Account Role</label>
											<input type="text" class="form-control rounded-3"
												value="System Admin" readonly>
										</div>
									</div>
								</div>
							</div>

							<div class="card border-0 shadow-sm rounded-4">
								<div class="card-body p-4">
									<h5 class="fw-bold mb-3">
										<i class="bi bi-shield-lock me-2"></i> Security Settings
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
													name="emailNotifications" id="adminEmailNotifications" checked>
												<label class="form-check-label" for="adminEmailNotifications">
													Receive system activity and security notifications
												</label>
											</div>
										</div>
										<div class="col-12 d-flex justify-content-end gap-2">
											<button type="reset" class="btn btn-outline-secondary rounded-pill px-4">
												Reset
											</button>
											<button type="submit" class="btn btn-danger rounded-pill px-4">
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
