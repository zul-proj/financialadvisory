<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
	String action = request.getParameter("action");
	boolean isCreate = "create".equals(action);
	boolean isEdit = "edit".equals(action);
%>
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
				style="background-color: #0D6EFD;">
				<h4 class="fw-bold mb-4">
					<i class="bi bi-wallet2 me-2"></i> Financial Advisory
				</h4>
				<div class="nav flex-column nav-pills gap-2">
					<a class="nav-link text-white rounded-3" href="dashboard.jsp?role=staff">
						<i class="bi bi-speedometer2 me-2"></i> Dashboard
					</a>
					<a class="nav-link active text-white rounded-3"
						style="background-color: #084298;" href="staff-transaction.jsp">
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

			<main class="col-12 col-lg-10 p-4">
				<div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
					<div>
						<h1 class="fw-bold mb-1"><%= isCreate ? "Create Transaction" : "Transaction Details" %></h1>
						<p class="text-secondary mb-0">View, create, or update transaction details before department verification.</p>
					</div>
					<a class="btn btn-outline-secondary rounded-pill px-4" href="staff-transaction.jsp">
						<i class="bi bi-arrow-left me-2"></i>Back to List
					</a>
				</div>

				<section class="card border-0 shadow-sm rounded-4 mb-4">
					<div class="card-body p-4">
							<div class="d-flex justify-content-between align-items-center mb-3">
								<h5 class="fw-bold mb-0">
									<i class="bi bi-receipt me-2"></i> Transaction Information
								</h5>
							</div>

						<form action="#" method="post" enctype="multipart/form-data">
							<div class="row g-3">
								<div class="col-md-6">
									<label class="form-label">Transaction Title</label>
									<input type="text" class="form-control rounded-3" name="title"
										value="<%= isCreate ? "" : "Office Rent" %>" placeholder="Example: Office Rent">
								</div>
								<div class="col-md-3">
									<label class="form-label">Type</label>
									<select class="form-select rounded-3" name="type">
										<option <%= isCreate ? "selected" : "" %>>Income</option>
										<option <%= isCreate ? "" : "selected" %>>Expense</option>
									</select>
								</div>
								<div class="col-md-3">
									<label class="form-label">Category</label>
									<select class="form-select rounded-3" name="category">
										<option>Sales</option>
										<option selected>Rent</option>
										<option>Utilities</option>
										<option>Salary</option>
										<option>Marketing</option>
										<option>Supplies</option>
										<option>Travel</option>
										<option>Training</option>
										<option>Others</option>
									</select>
								</div>
								<div class="col-md-4">
									<label class="form-label">Amount (RM)</label>
									<input type="number" step="0.01" class="form-control rounded-3"
										name="amount" value="<%= isCreate ? "" : "32471.00" %>" placeholder="0.00">
								</div>
								<div class="col-md-4">
									<label class="form-label">Transaction Date</label>
									<input type="date" class="form-control rounded-3"
										name="transactionDate" value="<%= isCreate ? "" : "2026-01-08" %>">
								</div>
									<div class="col-md-4">
										<label class="form-label">Payment Method</label>
										<select class="form-select rounded-3" name="paymentMethod">
											<option>Cash</option>
											<option selected>Bank Transfer</option>
											<option>Credit Card</option>
											<option>Online Payment</option>
											<option>Invoice</option>
										</select>
									</div>
								<div class="col-md-6">
									<label class="form-label">Reference Number</label>
									<input type="text" class="form-control rounded-3" name="referenceNumber"
										value="<%= isCreate ? "" : "RENT-2026-001" %>" placeholder="Invoice or payment reference">
								</div>
								<div class="col-md-6">
									<label class="form-label">Attachment Upload</label>
									<input type="file" class="form-control rounded-3" name="attachment">
								</div>
								<div class="col-12">
									<label class="form-label">Description / Reason</label>
									<textarea class="form-control rounded-3" rows="4" name="description"
										placeholder="Explain transaction purpose"><%= isCreate ? "" : "Monthly office rental payment for January 2026." %></textarea>
								</div>
								<div class="col-12 d-flex justify-content-end gap-2">
									<a class="btn btn-outline-secondary rounded-pill px-4" href="staff-transaction.jsp">Cancel</a>
									<button class="btn btn-primary rounded-pill px-4" type="submit">
										<i class="bi bi-send-check me-2"></i><%= isEdit ? "Save Changes" : "Submit Transaction" %>
									</button>
								</div>
							</div>
							</form>
						</div>
					</section>

					<section class="card border-0 shadow-sm rounded-4 mb-4">
						<div class="card-body p-4">
							<div class="d-flex flex-wrap justify-content-between align-items-center mb-3">
								<div>
									<h5 class="fw-bold mb-1">
										<i class="bi bi-file-earmark-arrow-up me-2"></i> Auto Extract from Invoice PDF
									</h5>
									<p class="text-secondary mb-0">
										Upload invoice, detect keywords, auto-categorize, then save as income or expense.
									</p>
								</div>
							</div>

							<form action="#" method="post" enctype="multipart/form-data">
								<div class="row g-3 align-items-end">
									<div class="col-md-5">
										<label class="form-label">Invoice PDF / Image</label>
										<input type="file" class="form-control rounded-3"
											name="invoiceFile" accept=".pdf,.jpg,.jpeg,.png">
									</div>
									<div class="col-md-3">
										<label class="form-label">Document Type</label>
										<select class="form-select rounded-3" name="documentType">
											<option selected>Purchase Invoice</option>
											<option>Sales Invoice</option>
											<option>Receipt</option>
											<option>Income Statement</option>
										</select>
									</div>
									<div class="col-md-2">
										<label class="form-label">Auto Category</label>
										<select class="form-select rounded-3" name="autoCategory">
											<option selected>Enabled</option>
											<option>Manual Review</option>
										</select>
									</div>
									<div class="col-md-2">
										<button type="submit" class="btn btn-primary rounded-pill w-100">
											<i class="bi bi-magic me-2"></i>Extract
										</button>
									</div>
								</div>
							</form>
						</div>
					</section>

					<section class="row g-4">
						<div class="col-lg-5">
							<div class="card border-0 shadow-sm rounded-4 h-100">
								<div class="card-body p-4">
									<div class="d-flex justify-content-between align-items-center mb-3">
										<h5 class="fw-bold mb-0">
											<i class="bi bi-file-text me-2"></i> Extracted Invoice Details
										</h5>
									</div>

									<div class="d-flex justify-content-between py-3 border-bottom">
										<span class="text-secondary">Vendor / Source</span>
										<strong>ABC Supplier Sdn Bhd</strong>
									</div>
									<div class="d-flex justify-content-between py-3 border-bottom">
										<span class="text-secondary">Reference No.</span>
										<strong>INV-0001</strong>
									</div>
									<div class="d-flex justify-content-between py-3 border-bottom">
										<span class="text-secondary">Detected Keywords</span>
										<strong>supplies, tax, invoice</strong>
									</div>
									<div class="d-flex justify-content-between py-3 border-bottom">
										<span class="text-secondary">Auto Category</span>
										<strong class="text-primary">Supplies</strong>
									</div>
									<div class="d-flex justify-content-between py-3">
										<span class="text-secondary">Detected Total</span>
										<strong class="text-danger">RM 477.00</strong>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-7">
							<div class="card border-0 shadow-sm rounded-4 h-100">
								<div class="card-body p-4">
									<div class="d-flex justify-content-between align-items-center mb-3">
										<h5 class="fw-bold mb-0">
											<i class="bi bi-arrow-left-right me-2"></i> Save Extracted Transaction
										</h5>
									</div>

									<form action="#" method="post">
										<div class="row g-3">
											<div class="col-md-6">
												<label class="form-label">Transaction Title</label>
												<input type="text" class="form-control rounded-3"
													name="extractedTitle" value="ABC Supplier Sdn Bhd - INV-0001">
											</div>
											<div class="col-md-3">
												<label class="form-label">Type</label>
												<select class="form-select rounded-3" name="extractedType">
													<option>Income</option>
													<option selected>Expense</option>
												</select>
											</div>
											<div class="col-md-3">
												<label class="form-label">Category</label>
												<select class="form-select rounded-3" name="extractedCategory">
													<option>Sales</option>
													<option>Rent</option>
													<option>Utilities</option>
													<option selected>Supplies</option>
													<option>Marketing</option>
													<option>Others</option>
												</select>
											</div>
											<div class="col-md-4">
												<label class="form-label">Amount (RM)</label>
												<input type="number" step="0.01" class="form-control rounded-3"
													name="extractedAmount" value="477.00">
											</div>
											<div class="col-md-4">
												<label class="form-label">Transaction Date</label>
												<input type="date" class="form-control rounded-3"
													name="extractedDate" value="2026-01-20">
											</div>
											<div class="col-md-4">
												<label class="form-label">Source</label>
												<input type="text" class="form-control rounded-3"
													name="source" value="Invoice OCR" readonly>
											</div>
											<div class="col-12">
												<label class="form-label">Extracted Line Items</label>
												<div class="table-responsive border rounded-4">
													<table class="table table-sm align-middle mb-0">
														<thead>
															<tr>
																<th>Item / Description</th>
																<th class="text-center">Quantity</th>
																<th class="text-end">Unit Price</th>
																<th class="text-end">Total</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Office Supplies</td>
																<td class="text-center">3</td>
																<td class="text-end">RM 150.00</td>
																<td class="text-end fw-bold">RM 450.00</td>
															</tr>
															<tr>
																<td>Service Tax</td>
																<td class="text-center">1</td>
																<td class="text-end">RM 27.00</td>
																<td class="text-end fw-bold">RM 27.00</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="col-12 d-flex justify-content-end gap-2">
												<button type="reset" class="btn btn-outline-secondary rounded-pill px-4">
													Reset
												</button>
												<button type="submit" class="btn btn-primary rounded-pill px-4">
													<i class="bi bi-save me-2"></i>Save to Transaction
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
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
