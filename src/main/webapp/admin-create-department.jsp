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
					<a class="nav-link text-white rounded-3" href="admin.jsp">
						<i class="bi bi-person-plus me-2"></i> Add User
					</a>
					<a class="nav-link active text-white rounded-3"
						style="background-color: #ff2c2c;"
						href="admin-create-department.jsp">
						<i class="bi bi-building-add me-2"></i> Create Department
					</a>
					<a class="nav-link text-white rounded-3" href="admin-user-list.jsp">
						<i class="bi bi-people me-2"></i> User List
					</a>
					<a class="nav-link text-white rounded-3" href="admin-department-list.jsp">
						<i class="bi bi-building me-2"></i> Department List
					</a>
					<a class="nav-link text-white rounded-3" href="admin-settings.jsp">
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
						<h1 class="fw-bold mb-1">Create Department</h1>
						<p class="text-secondary mb-0">
							Create departments and assign a Department Manager.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0 role-welcome-card">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>System Admin</strong>
						</div>
					</div>
				</div>

				<section class="card border-0 shadow-sm rounded-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-building-add me-2"></i> Department Details
							</h5>
							<span class="badge text-bg-danger rounded-pill">System Admin</span>
						</div>

						<form action="#" method="post">
							<div class="row g-3">
								<div class="col-md-6">
									<label class="form-label">Department Name</label>
									<input type="text" class="form-control rounded-3"
										name="departmentName" placeholder="Example: Procurement">
								</div>
								<div class="col-md-6">
									<label class="form-label">Department Code</label>
									<input type="text" class="form-control rounded-3"
										name="departmentCode" placeholder="Example: DPT-007">
								</div>
								<div class="col-md-6">
									<label class="form-label">Assign Department Manager</label>
									<select class="form-select rounded-3" name="departmentManager">
										<option selected disabled>Select Department Manager</option>
										<option>Sarah Ahmad</option>
										<option>Mohd Farhan</option>
										<option>Nur Aisyah</option>
										<option>Not assigned yet</option>
									</select>
								</div>
								<div class="col-md-6">
									<label class="form-label">Department Status</label>
									<select class="form-select rounded-3" name="departmentStatus">
										<option value="active" selected>Active</option>
										<option value="inactive">Inactive</option>
									</select>
								</div>
								<div class="col-12">
									<label class="form-label">Description</label>
									<textarea class="form-control rounded-3" rows="3"
										name="departmentDescription"
										placeholder="Brief description about this department"></textarea>
								</div>
								<div class="col-12 d-flex justify-content-end gap-2">
									<button type="reset" class="btn btn-outline-secondary rounded-pill px-4">
										Clear
									</button>
									<button type="submit" class="btn btn-danger rounded-pill px-4">
										<i class="bi bi-building-add me-2"></i> Create Department
									</button>
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
