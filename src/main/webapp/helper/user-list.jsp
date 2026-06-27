<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>User List (Frontend Demo)</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
</head>
<body class="bg-light">
	<div class="container py-5">
		<div class="d-flex justify-content-between align-items-center mb-4">
			<div>
				<h1 class="h3 fw-bold mb-1">User List</h1>
				<p class="text-secondary mb-0">Static frontend demo data.</p>
			</div>
			<a class="btn btn-outline-secondary rounded-pill" href="../admin-user-list.jsp">Back</a>
		</div>
		<div class="card border-0 shadow-sm rounded-4">
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
							<td><strong>Siti Aminah</strong></td>
							<td>siti@example.com</td>
							<td><span class="badge text-bg-secondary">Staff</span></td>
							<td>Operations</td>
							<td><span class="badge text-bg-success">Active</span></td>
							<td class="text-center">
								<a class="btn btn-sm btn-outline-primary rounded-pill" href="../admin-user-details.jsp?action=edit&id=siti">
									<i class="bi bi-pencil-square me-1"></i>Edit
								</a>
							</td>
						</tr>
						<tr>
							<td><strong>Sarah Ahmad</strong></td>
							<td>sarah@example.com</td>
							<td><span class="badge text-bg-warning">Department Manager</span></td>
							<td>Sales</td>
							<td><span class="badge text-bg-success">Active</span></td>
							<td class="text-center">
								<a class="btn btn-sm btn-outline-primary rounded-pill" href="../admin-user-details.jsp?action=edit&id=sarah">
									<i class="bi bi-pencil-square me-1"></i>Edit
								</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
