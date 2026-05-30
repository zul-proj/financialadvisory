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
				style="background-color: #950606;">
				<h4 class="fw-bold mb-4">
					<i class="bi bi-shield-lock me-2"></i> System Admin
				</h4>

				<div class="nav flex-column nav-pills gap-2">
					<a class="nav-link active text-white rounded-3" style="background-color: #ff2c2c;"
						href="admin.jsp">
						<i class="bi bi-person-plus me-2"></i> Add User
					</a>

					<a class="nav-link text-white rounded-3" href="admin-create-department.jsp">
						<i class="bi bi-building-add me-2"></i> Create Department
					</a>

					<a class="nav-link text-white rounded-3" href="admin-user-list.jsp">
						<i class="bi bi-people me-2"></i> User List
					</a>

					<a class="nav-link text-white rounded-3"  href="admin-department-list.jsp">
						<i class="bi bi-building me-2"></i> Department List
					</a>

					<a class="nav-link text-danger rounded-3 mt-4"  href="index.jsp">
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
						<h1 class="fw-bold mb-1">System Admin</h1>
						<p class="text-secondary mb-0">
							Add users and create departments for the Financial Advisory System.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>
							<strong>System Admin</strong>
						</div>
					</div>
				</div>

				<!-- Summary Cards -->
				<section class="row g-4 mb-4">
					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Total Users</p>
									<i class="bi bi-people fs-3 text-primary"></i>
								</div>

								<h3 class="fw-bold mb-2">4</h3>
								<small class="text-secondary">Registered users</small>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">Departments</p>
									<i class="bi bi-building fs-3 text-success"></i>
								</div>

								<h3 class="fw-bold mb-2">6</h3>
								<small class="text-success">Created departments</small>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<p class="text-secondary mb-1">User Roles</p>
									<i class="bi bi-person-badge fs-3 text-warning"></i>
								</div>

								<h3 class="fw-bold mb-2">4</h3>
								<small class="text-warning">System Admin, Financial Manager, Department Manager, Staff</small>
							</div>
						</div>
					</div>
				</section>

				<!-- Add User Form -->
				<section class="card border-0 shadow-sm rounded-4 mb-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-person-plus me-2"></i> Add New User
							</h5>
							<span class="badge text-bg-primary rounded-pill">System Admin</span>
						</div>

						<form action="#" method="post">
							<div class="row g-3">

								<div class="col-md-6">
									<label class="form-label">Full Name</label>
									<input type="text" class="form-control rounded-3"
										name="fullName" placeholder="Enter full name">
								</div>

								<div class="col-md-6">
									<label class="form-label">Email Address</label>
									<input type="email" class="form-control rounded-3"
										name="email" placeholder="Enter email address">
								</div>

								<div class="col-md-6">
									<label class="form-label">Temporary Password</label>
									<input type="password" class="form-control rounded-3"
										name="password" placeholder="Create temporary password">
								</div>

								<div class="col-md-6">
									<label class="form-label">User Role</label>
									<select class="form-select rounded-3" name="role">
										<option selected disabled>Select user role</option>
										<option value="system-admin">System Admin</option>
										<option value="financial-manager">Financial Manager</option>
										<option value="department-manager">Department Manager</option>
										<option value="staff">Staff</option>
									</select>
								</div>

								<div class="col-md-6">
									<label class="form-label">Department</label>
									<select class="form-select rounded-3" name="department">
										<option selected disabled>Select department</option>
										<option>Finance</option>
										<option>Sales</option>
										<option>Marketing</option>
										<option>Human Resource</option>
										<option>Operations</option>
										<option>Information Technology</option>
									</select>
									<div class="form-text">
										Departments created below will appear in this list.
									</div>
								</div>

								<div class="col-md-6">
									<label class="form-label">Account Status</label>
									<select class="form-select rounded-3" name="status">
										<option value="active" selected>Active</option>
										<option value="inactive">Inactive</option>
									</select>
								</div>

								<div class="col-12">
									<label class="form-label">Remarks</label>
									<textarea class="form-control rounded-3" rows="3"
										name="remarks"
										placeholder="Optional notes about this user account"></textarea>
								</div>

								<div class="col-12 d-flex justify-content-end gap-2">
									<button type="reset"
										class="btn btn-outline-secondary rounded-pill px-4">
										Clear
									</button>

									<button type="submit" class="btn btn-primary rounded-pill px-4">
										<i class="bi bi-person-plus me-2"></i> Add User
									</button>
								</div>

							</div>
						</form>
					</div>
				</section>

				<!-- Create Department Form -->
				<section class="card border-0 shadow-sm rounded-4 mb-4"
					id="create-department">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-building-add me-2"></i> Create New Department
							</h5>
							<span class="badge text-bg-success rounded-pill">Department Setup</span>
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
									<label class="form-label">Department Status</label>
									<select class="form-select rounded-3" name="departmentStatus">
										<option value="active" selected>Active</option>
										<option value="inactive">Inactive</option>
									</select>
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

								<div class="col-12">
									<label class="form-label">Description</label>
									<textarea class="form-control rounded-3" rows="3"
										name="departmentDescription"
										placeholder="Brief description about this department"></textarea>
								</div>

								<div class="col-12 d-flex justify-content-end gap-2">
									<button type="reset"
										class="btn btn-outline-secondary rounded-pill px-4">
										Clear
									</button>

									<button type="submit" class="btn btn-success rounded-pill px-4">
										<i class="bi bi-building-add me-2"></i> Create Department
									</button>
								</div>

							</div>
						</form>
					</div>
				</section>

				<!-- Department List -->
				<section class="card border-0 shadow-sm rounded-4 mb-4"
					id="department-list">
					<div class="card-body p-4">
						<div class="d-flex flex-wrap justify-content-between align-items-center mb-3">
							<div>
								<h5 class="fw-bold mb-1">
									<i class="bi bi-building me-2"></i> Department List
								</h5>
								<p class="text-secondary mb-0">
									Departments created by the system admin.
								</p>
							</div>
						</div>

						<div class="table-responsive">
							<table class="table table-hover align-middle">
								<thead>
									<tr>
										<th>Department Code</th>
										<th>Department Name</th>
										<th>Assigned Department Manager</th>
										<th>Status</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>
											<div class="d-flex align-items-center">
												<div class="bg-danger text-white rounded-circle d-flex align-items-center justify-content-center me-2"
													style="width: 38px; height: 38px;">
													<i class="bi bi-shield-lock"></i>
												</div>
												<strong>System Admin</strong>
											</div>
										</td>
										<td>admin@example.com</td>
										<td>
											<span class="badge text-bg-danger rounded-pill">
												System Admin
											</span>
										</td>
										<td>Not Applicable</td>
										<td>
											<span class="badge text-bg-success rounded-pill">
												Active
											</span>
										</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<tr>
										<td>DPT-001</td>
										<td>Finance</td>
										<td>Abu Bakar</td>
										<td>
											<span class="badge text-bg-success rounded-pill">Active</span>
										</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<tr>
										<td>DPT-002</td>
										<td>Sales</td>
										<td>Sarah Ahmad</td>
										<td>
											<span class="badge text-bg-success rounded-pill">Active</span>
										</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<tr>
										<td>DPT-003</td>
										<td>Marketing</td>
										<td>Mohd Farhan</td>
										<td>
											<span class="badge text-bg-success rounded-pill">Active</span>
										</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<tr>
										<td>DPT-004</td>
										<td>Human Resource</td>
										<td>Nur Aisyah</td>
										<td>
											<span class="badge text-bg-success rounded-pill">Active</span>
										</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<tr>
										<td>DPT-005</td>
										<td>Operations</td>
										<td>Not Assigned</td>
										<td>
											<span class="badge text-bg-warning rounded-pill">Pending Department Manager</span>
										</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
				</section>

				<!-- User List -->
				<section class="card border-0 shadow-sm rounded-4" id="user-list">
					<div class="card-body p-4">
						<div class="d-flex flex-wrap justify-content-between align-items-center mb-3">
							<div>
								<h5 class="fw-bold mb-1">
									<i class="bi bi-people me-2"></i> Registered Users
								</h5>
								<p class="text-secondary mb-0">
									List of users created by the system admin.
								</p>
							</div>
						</div>

						<div class="row g-3 mb-4">
							<div class="col-md-5">
								<label class="form-label">Search User</label>
								<input type="text" class="form-control rounded-3"
									placeholder="Search by name or email">
							</div>

							<div class="col-md-3">
								<label class="form-label">Filter Role</label>
								<select class="form-select rounded-3">
									<option selected>All Roles</option>
									<option>System Admin</option>
									<option>Financial Manager</option>
									<option>Department Manager</option>
									<option>Staff</option>
								</select>
							</div>

							<div class="col-md-3">
								<label class="form-label">Filter Department</label>
								<select class="form-select rounded-3">
									<option selected>All Departments</option>
									<option>Finance</option>
									<option>Sales</option>
									<option>Marketing</option>
									<option>Human Resource</option>
									<option>Operations</option>
									<option>Information Technology</option>
								</select>
							</div>

							<div class="col-md-1 d-flex align-items-end">
								<button class="btn btn-primary w-100 rounded-pill">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>

						<div class="table-responsive">
							<table class="table table-hover align-middle">
								<thead>
									<tr>
										<th>User</th>
										<th>Email</th>
										<th>Role</th>
										<th>Department</th>
										<th>Status</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>
											<div class="d-flex align-items-center">
												<div class="bg-primary text-white rounded-circle d-flex align-items-center justify-content-center me-2"
													style="width: 38px; height: 38px;">
													<i class="bi bi-person"></i>
												</div>
												<strong>Abu Bakar</strong>
											</div>
										</td>
										<td>abu@example.com</td>
										<td>
											<span class="badge text-bg-primary rounded-pill">
												Financial Manager
											</span>
										</td>
										<td>Finance</td>
										<td>
											<span class="badge text-bg-success rounded-pill">
												Active
											</span>
										</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<tr>
										<td>
											<div class="d-flex align-items-center">
												<div class="bg-warning text-white rounded-circle d-flex align-items-center justify-content-center me-2"
													style="width: 38px; height: 38px;">
													<i class="bi bi-person"></i>
												</div>
												<strong>Sarah Ahmad</strong>
											</div>
										</td>
										<td>sarah@example.com</td>
										<td>
											<span class="badge text-bg-warning rounded-pill">
												Department Manager
											</span>
										</td>
										<td>Sales</td>
										<td>
											<span class="badge text-bg-success rounded-pill">
												Active
											</span>
										</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<tr>
										<td>
											<div class="d-flex align-items-center">
												<div class="bg-secondary text-white rounded-circle d-flex align-items-center justify-content-center me-2"
													style="width: 38px; height: 38px;">
													<i class="bi bi-person"></i>
												</div>
												<strong>Siti Aminah</strong>
											</div>
										</td>
										<td>siti@example.com</td>
										<td>
											<span class="badge text-bg-secondary rounded-pill">
												Staff
											</span>
										</td>
										<td>Operations</td>
										<td>
											<span class="badge text-bg-success rounded-pill">
												Active
											</span>
										</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</button>
											<button class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</button>
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

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Chatbot Widget JS -->
	<script src="js/chatbot-widget.js?v=2"></script>

</body>
</html>
