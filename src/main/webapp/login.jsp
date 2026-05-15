<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login - Financial Advisory System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
</head>

<body class="bg-light">

	<div class="container min-vh-100 d-flex align-items-center justify-content-center">
		<div class="row w-100 justify-content-center">
			<div class="col-md-8 col-lg-5">

				<!-- Login Card -->
				<div class="card border-0 shadow-lg rounded-4">
					<div class="card-body p-5">

						<div class="text-center mb-4">
							<div
								class="bg-primary text-white rounded-circle d-inline-flex align-items-center justify-content-center mb-3"
								style="width: 70px; height: 70px;">
								<i class="bi bi-wallet2 fs-2"></i>
							</div>

							<h3 class="fw-bold mb-1">Welcome Back</h3>
							<p class="text-secondary mb-0">
								Login to access your financial dashboard.
							</p>
						</div>

						<form action="#" method="post">

							<div class="mb-3">
								<label class="form-label">Email Address</label>
								<div class="input-group">
									<span class="input-group-text bg-white">
										<i class="bi bi-envelope"></i>
									</span>
									<input type="email" class="form-control"
										name="email" placeholder="Enter your email" required>
								</div>
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label>
								<div class="input-group">
									<span class="input-group-text bg-white">
										<i class="bi bi-lock"></i>
									</span>
									<input type="password" class="form-control"
										name="password" placeholder="Enter your password" required>
								</div>
							</div>

							<div class="d-flex justify-content-between align-items-center mb-4">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="rememberMe">
									<label class="form-check-label" for="rememberMe">
										Remember me
									</label>
								</div>

								<a href="#" class="text-decoration-none">
									Forgot password?
								</a>
							</div>

							<a href="dashboard.jsp" class="btn btn-primary w-100 rounded-pill py-2">
								<i class="bi bi-box-arrow-in-right me-2"></i> Login
							</a>

						</form>

						<div class="text-center mt-4">
							<p class="text-secondary mb-0">
								Don't have an account?
								<a href="register.jsp" class="text-decoration-none fw-semibold">
									Register here
								</a>
							</p>
						</div>

					</div>
				</div>

				<div class="text-center mt-4">
					<a href="index.jsp" class="text-decoration-none">
						<i class="bi bi-arrow-left me-2"></i> Back to Home
					</a>
				</div>

			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>