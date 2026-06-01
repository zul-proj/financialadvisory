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
					<a class="nav-link active text-white rounded-3"
						style="background-color: #ff2c2c;" href="admin-user-list.jsp">
						<i class="bi bi-people me-2"></i> User List
					</a>
					<a class="nav-link text-white rounded-3" href="admin-department-list.jsp">
						<i class="bi bi-building me-2"></i> Department List
					</a>
					<a class="nav-link text-white rounded-3" href="account-settings.jsp?role=admin">
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
						<h1 class="fw-bold mb-1">User List</h1>
						<p class="text-secondary mb-0">
							View and manage users created by the System Admin.
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
						<div class="row g-3 mb-3">
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
									<option>Operations</option>
									<option>Information Technology</option>
								</select>
							</div>
							<div class="col-md-1 d-flex align-items-end">
								<button class="btn btn-danger w-100 rounded-pill">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>

						<div class="d-flex justify-content-end mb-4">
							<a class="btn btn-danger rounded-pill px-4" href="admin.jsp">
								<i class="bi bi-person-plus me-2"></i>Create New User
							</a>
						</div>

						<div class="table-responsive">
							<table class="table table-hover align-middle mb-0">
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
										<td><strong>System Admin</strong></td>
										<td>admin@example.com</td>
										<td><span class="badge text-bg-danger rounded-pill">System Admin</span></td>
										<td>Not Applicable</td>
										<td><span class="badge text-bg-success rounded-pill">Active</span></td>
										<td class="text-center">
											<span class="text-secondary">Not Applicable</span>
										</td>
									</tr>
									<tr>
										<td><strong>Abu Bakar</strong></td>
										<td>abu@example.com</td>
										<td><span class="badge text-bg-primary rounded-pill">Financial Manager</span></td>
										<td>Finance</td>
										<td><span class="badge text-bg-success rounded-pill">Active</span></td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill"
												data-bs-toggle="modal" data-bs-target="#editUserAssignmentModal"
												data-current-role="Financial Manager"
												data-current-department="Finance"
												data-current-status="active">
												<i class="bi bi-pencil-square"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td><strong>Sarah Ahmad</strong></td>
										<td>sarah@example.com</td>
										<td><span class="badge text-bg-warning rounded-pill">Department Manager</span></td>
										<td>Sales</td>
										<td><span class="badge text-bg-success rounded-pill">Active</span></td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill"
												data-bs-toggle="modal" data-bs-target="#editUserAssignmentModal"
												data-current-role="Department Manager"
												data-current-department="Sales"
												data-current-status="active">
												<i class="bi bi-pencil-square"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td><strong>Siti Aminah</strong></td>
										<td>siti@example.com</td>
										<td><span class="badge text-bg-secondary rounded-pill">Staff</span></td>
										<td>Operations</td>
										<td><span class="badge text-bg-success rounded-pill">Active</span></td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-primary rounded-pill"
												data-bs-toggle="modal" data-bs-target="#editUserAssignmentModal"
												data-current-role="Staff"
												data-current-department="Operations"
												data-current-status="active">
												<i class="bi bi-pencil-square"></i>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</section>

				<div class="modal fade" id="editUserAssignmentModal" tabindex="-1"
					aria-labelledby="editUserAssignmentModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content rounded-4 border-0">
							<form action="#" method="post">
								<div class="modal-header">
									<h5 class="modal-title fw-bold" id="editUserAssignmentModalLabel">
										Edit User Assignment
									</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<div class="row g-3">
										<div class="col-12">
											<label class="form-label">User Role</label>
											<select class="form-select rounded-3" name="role">
												<option value="Financial Manager">Financial Manager</option>
												<option value="Department Manager">Department Manager</option>
												<option value="Staff">Staff</option>
											</select>
										</div>
										<div class="col-12">
											<label class="form-label">Department</label>
											<select class="form-select rounded-3" name="department">
												<option value="Finance">Finance</option>
												<option value="Sales">Sales</option>
												<option value="Operations">Operations</option>
												<option value="Information Technology">Information Technology</option>
											</select>
										</div>
										<div class="col-12">
											<label class="form-label">Account Status</label>
											<select class="form-select rounded-3" name="status">
												<option value="active" selected>Active</option>
												<option value="inactive">Inactive</option>
											</select>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline-secondary rounded-pill"
										data-bs-dismiss="modal">Cancel</button>
									<button type="submit" class="btn btn-danger rounded-pill">
										<i class="bi bi-save me-2"></i>Save Changes
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>

	<jsp:include page="notification-widget.jsp" />

	<jsp:include page="chatbot-widget.jsp" />
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		document.getElementById("editUserAssignmentModal").addEventListener("show.bs.modal", function (event) {
			const button = event.relatedTarget;
			this.querySelector('[name="role"]').value = button.dataset.currentRole;
			this.querySelector('[name="department"]').value = button.dataset.currentDepartment;
			this.querySelector('[name="status"]').value = button.dataset.currentStatus;
		});
	</script>
	<script src="js/chatbot-widget.js?v=2"></script>
</body>
</html>
