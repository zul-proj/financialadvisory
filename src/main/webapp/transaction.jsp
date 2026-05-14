<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Transaction Management - Financial Advisory System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

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
				style="background-color: #005EB8;">
				<h4 class="fw-bold mb-4">
					<i class="bi bi-wallet2 me-2"></i> Financial Advisory
				</h4>

				<div class="nav flex-column nav-pills gap-2">
					<a class="nav-link text-white rounded-3" href="dashboard.jsp">
						<i class="bi bi-speedometer2 me-2"></i> Dashboard
					</a>

					<a class="nav-link active text-white bg-primary rounded-3"
						href="transaction.jsp">
						<i class="bi bi-cash-coin me-2"></i> Transactions
					</a>

					<a class="nav-link text-white rounded-3" href="aiadvisory.jsp">
						<i class="bi bi-robot me-2"></i> AI Advisory
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
						<h1 class="fw-bold mb-1">Transaction Management</h1>
						<p class="text-secondary mb-0">
							Record, upload invoice, and manage company income and expenses.
						</p>
					</div>

					<div class="card border-0 shadow-sm rounded-4 mt-3 mt-md-0">
						<div class="card-body py-2 px-3">
							<span class="text-secondary">Welcome, </span>

							<c:choose>
								<c:when test="${not empty sessionScope.user}">
									<strong>${sessionScope.user.name}</strong>
								</c:when>
								<c:otherwise>
									<strong>User</strong>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>

				<!-- Summary Cards -->
				<section class="row g-4 mb-4">
					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<div>
										<p class="text-secondary mb-1">Total Income</p>
										<h3 class="fw-bold mb-0">RM 67,676,767.00</h3>
									</div>
									<i class="bi bi-arrow-down-circle fs-2 text-success"></i>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<div>
										<p class="text-secondary mb-1">Total Expenses</p>
										<h3 class="fw-bold mb-0">RM 676,767.00</h3>
									</div>
									<i class="bi bi-arrow-up-circle fs-2 text-danger"></i>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center">
									<div>
										<p class="text-secondary mb-1">Net Balance</p>
										<h3 class="fw-bold mb-0">RM 67,000,000.00</h3>
									</div>
									<i class="bi bi-piggy-bank fs-2 text-primary"></i>
								</div>
							</div>
						</div>
					</div>
				</section>

				<!-- Add Transaction Form -->
				<section class="card border-0 shadow-sm rounded-4 mb-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-plus-circle me-2"></i> Add New Transaction
							</h5>
							<span class="badge text-bg-primary rounded-pill">Manual Entry</span>
						</div>

						<form action="#" method="post">
							<div class="row g-3">
								<div class="col-md-6">
									<label class="form-label">Transaction Title</label>
									<input type="text" class="form-control rounded-3"
										name="title" placeholder="Example: Product Sales">
								</div>

								<div class="col-md-3">
									<label class="form-label">Type</label>
									<select class="form-select rounded-3" name="type">
										<option selected disabled>Select type</option>
										<option value="income">Income</option>
										<option value="expense">Expense</option>
									</select>
								</div>

								<div class="col-md-3">
									<label class="form-label">Category</label>
									<select class="form-select rounded-3" name="category">
										<option selected disabled>Select category</option>
										<option>Sales</option>
										<option>Rent</option>
										<option>Utilities</option>
										<option>Salary</option>
										<option>Marketing</option>
										<option>Supplies</option>
										<option>Others</option>
									</select>
								</div>

								<div class="col-md-4">
									<label class="form-label">Amount (RM)</label>
									<input type="number" step="0.01" class="form-control rounded-3"
										name="amount" placeholder="0.00">
								</div>

								<div class="col-md-4">
									<label class="form-label">Transaction Date</label>
									<input type="date" class="form-control rounded-3"
										name="transactionDate">
								</div>

								<div class="col-md-4">
									<label class="form-label">Payment Method</label>
									<select class="form-select rounded-3" name="paymentMethod">
										<option selected disabled>Select method</option>
										<option>Cash</option>
										<option>Bank Transfer</option>
										<option>Credit Card</option>
										<option>Online Payment</option>
									</select>
								</div>

								<div class="col-12">
									<label class="form-label">Reason / Description</label>
									<textarea class="form-control rounded-3" name="description"
										rows="3"
										placeholder="Example: Office rent payment, stock purchase, product sales, etc."></textarea>
								</div>

								<div class="col-12 d-flex justify-content-end gap-2">
									<button type="reset"
										class="btn btn-outline-secondary rounded-pill px-4">
										Clear
									</button>

									<button type="submit" class="btn btn-primary rounded-pill px-4">
										<i class="bi bi-save me-2"></i> Save Transaction
									</button>
								</div>
							</div>
						</form>
					</div>
				</section>

				<!-- Upload Invoice Section -->
				<section class="card border-0 shadow-sm rounded-4 mb-4"
					id="invoice-upload">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-file-earmark-arrow-up me-2"></i> Upload Invoice
							</h5>
							<span class="badge text-bg-primary rounded-pill">Invoice Extraction</span>
						</div>

						<form action="#" method="post" enctype="multipart/form-data">
							<div class="row g-3">
								<div class="col-md-8">
									<label class="form-label">Invoice File</label>
									<input type="file" class="form-control rounded-3"
										name="invoiceFile" accept=".pdf,.jpg,.jpeg,.png">

									<div class="form-text">
										Accepted file types: PDF, JPG, JPEG, PNG.
									</div>
								</div>

								<div class="col-md-4">
									<label class="form-label">Invoice Type</label>
									<select class="form-select rounded-3" name="invoiceType">
										<option selected disabled>Select invoice type</option>
										<option value="purchase">Purchase Invoice</option>
										<option value="sales">Sales Invoice</option>
									</select>
								</div>

								<div class="col-12 d-flex justify-content-end gap-2">
									<button type="reset"
										class="btn btn-outline-secondary rounded-pill px-4">
										Clear
									</button>

									<button type="submit" class="btn btn-primary rounded-pill px-4">
										<i class="bi bi-magic me-2"></i> Extract Invoice
									</button>
								</div>
							</div>
						</form>
					</div>
				</section>

				<!-- Extracted Invoice Preview and Convert to Transaction -->
				<section class="row g-4 mb-4">

					<!-- Extracted Invoice Details -->
					<div class="col-lg-5">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center mb-3">
									<h5 class="fw-bold mb-0">
										<i class="bi bi-file-text me-2"></i> Extracted Invoice Details
									</h5>
									<span class="badge text-bg-success rounded-pill">Preview</span>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span class="text-secondary">Vendor Name</span>
									<strong>ABC Supplier Sdn Bhd</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span class="text-secondary">Invoice Number</span>
									<strong>INV-0001</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span class="text-secondary">Invoice Date</span>
									<strong>2026-01-20</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span class="text-secondary">Subtotal</span>
									<strong>RM 450.00</strong>
								</div>

								<div class="d-flex justify-content-between py-3 border-bottom">
									<span class="text-secondary">Tax</span>
									<strong>RM 27.00</strong>
								</div>

								<div class="d-flex justify-content-between py-3">
									<span class="text-secondary">Total Amount</span>
									<strong class="text-danger">RM 477.00</strong>
								</div>
							</div>
						</div>
					</div>

					<!-- Convert to Transaction -->
					<div class="col-lg-7">
						<div class="card border-0 shadow-sm rounded-4 h-100">
							<div class="card-body p-4">
								<div class="d-flex justify-content-between align-items-center mb-3">
									<h5 class="fw-bold mb-0">
										<i class="bi bi-arrow-left-right me-2"></i> Convert Invoice to Transaction
									</h5>
									<span class="badge text-bg-danger rounded-pill">Expense</span>
								</div>

								<form action="#" method="post">
									<div class="row g-3">
										<div class="col-md-6">
											<label class="form-label">Transaction Title</label>
											<input type="text" class="form-control rounded-3"
												name="title" value="ABC Supplier Sdn Bhd - INV-0001">
										</div>

										<div class="col-md-3">
											<label class="form-label">Type</label>
											<select class="form-select rounded-3" name="type">
												<option value="income">Income</option>
												<option value="expense" selected>Expense</option>
											</select>
										</div>

										<div class="col-md-3">
											<label class="form-label">Category</label>
											<select class="form-select rounded-3" name="category">
												<option>Sales</option>
												<option>Rent</option>
												<option>Utilities</option>
												<option>Salary</option>
												<option>Marketing</option>
												<option selected>Supplies</option>
												<option>Others</option>
											</select>
										</div>

										<div class="col-md-4">
											<label class="form-label">Amount</label>
											<input type="number" step="0.01"
												class="form-control rounded-3" name="amount" value="477.00">
										</div>

										<div class="col-md-4">
											<label class="form-label">Transaction Date</label>
											<input type="date" class="form-control rounded-3"
												name="transactionDate" value="2026-01-20">
										</div>

										<div class="col-md-4">
											<label class="form-label">Source</label>
											<input type="text" class="form-control rounded-3"
												name="source" value="Invoice" readonly>
										</div>

										<div class="col-md-6">
											<label class="form-label">Invoice Number</label>
											<input type="text" class="form-control rounded-3"
												name="invoiceNumber" value="INV-0001">
										</div>

										<div class="col-md-6">
											<label class="form-label">Vendor Name</label>
											<input type="text" class="form-control rounded-3"
												name="vendorName" value="ABC Supplier Sdn Bhd">
										</div>

										<div class="col-12">
											<label class="form-label">Reason / Description</label>
											<textarea class="form-control rounded-3" name="description"
												rows="3">Office supplies purchased for company operations. Auto extracted from uploaded invoice.</textarea>
										</div>

										<!-- Editable Extracted Line Items -->
										<div class="col-12 mt-3">
											<div class="d-flex justify-content-between align-items-center mb-3">
												<h6 class="fw-bold mb-0">
													<i class="bi bi-list-ul me-2"></i> Editable Extracted Items
												</h6>
												<span class="badge text-bg-secondary rounded-pill">Editable Preview</span>
											</div>

											<p class="text-secondary mb-3">
												Review and edit the extracted invoice items before saving them as a transaction.
											</p>

											<div class="table-responsive">
												<table class="table table-hover align-middle">
													<thead>
														<tr>
															<th>Item / Description</th>
															<th class="text-center">Quantity</th>
															<th class="text-end">Unit Price</th>
															<th class="text-end">Total</th>
															<th class="text-center">Action</th>
														</tr>
													</thead>

													<tbody>
														<tr>
															<td>
																<input type="text" class="form-control rounded-3"
																	name="itemDescription1" value="Office Supplies">
															</td>

															<td>
																<input type="number"
																	class="form-control rounded-3 text-center"
																	name="quantity1" value="3">
															</td>

															<td>
																<input type="number" step="0.01"
																	class="form-control rounded-3 text-end"
																	name="unitPrice1" value="150.00">
															</td>

															<td>
																<input type="number" step="0.01"
																	class="form-control rounded-3 text-end fw-bold"
																	name="total1" value="450.00">
															</td>

															<td class="text-center">
																<button type="button"
																	class="btn btn-sm btn-outline-danger rounded-pill">
																	<i class="bi bi-trash"></i>
																</button>
															</td>
														</tr>

														<tr>
															<td>
																<input type="text" class="form-control rounded-3"
																	name="itemDescription2" value="Service Tax">
															</td>

															<td>
																<input type="number"
																	class="form-control rounded-3 text-center"
																	name="quantity2" value="1">
															</td>

															<td>
																<input type="number" step="0.01"
																	class="form-control rounded-3 text-end"
																	name="unitPrice2" value="27.00">
															</td>

															<td>
																<input type="number" step="0.01"
																	class="form-control rounded-3 text-end fw-bold"
																	name="total2" value="27.00">
															</td>

															<td class="text-center">
																<button type="button"
																	class="btn btn-sm btn-outline-danger rounded-pill">
																	<i class="bi bi-trash"></i>
																</button>
															</td>
														</tr>
													</tbody>

													<tfoot>
														<tr>
															<th colspan="3" class="text-end align-middle">Grand Total</th>
															<th>
																<input type="number" step="0.01"
																	class="form-control rounded-3 text-end text-danger fw-bold"
																	name="grandTotal" value="477.00">
															</th>
															<th></th>
														</tr>
													</tfoot>
												</table>
											</div>

											<button type="button"
												class="btn btn-outline-primary rounded-pill px-4">
												<i class="bi bi-plus-circle me-2"></i> Add Item
											</button>
										</div>

										<div class="col-12 d-flex justify-content-end gap-2 mt-3">
											<button type="reset"
												class="btn btn-outline-secondary rounded-pill px-4">
												Clear
											</button>

											<button type="submit" class="btn btn-success rounded-pill px-4">
												<i class="bi bi-save me-2"></i> Save as Transaction
											</button>
										</div>
									</div>
								</form>

							</div>
						</div>
					</div>
				</section>

				<!-- Filter and Search -->
				<section class="card border-0 shadow-sm rounded-4 mb-4">
					<div class="card-body p-4">
						<div class="row g-3 align-items-end">
							<div class="col-md-4">
								<label class="form-label">Search Transaction</label>
								<input type="text" class="form-control rounded-3"
									placeholder="Search by title, item, reason, or category">
							</div>

							<div class="col-md-3">
								<label class="form-label">Filter Type</label>
								<select class="form-select rounded-3">
									<option selected>All Types</option>
									<option>Income</option>
									<option>Expense</option>
								</select>
							</div>

							<div class="col-md-3">
								<label class="form-label">Filter Category</label>
								<select class="form-select rounded-3">
									<option selected>All Categories</option>
									<option>Sales</option>
									<option>Rent</option>
									<option>Utilities</option>
									<option>Salary</option>
									<option>Marketing</option>
									<option>Supplies</option>
									<option>Others</option>
								</select>
							</div>

							<div class="col-md-2">
								<button class="btn btn-primary w-100 rounded-pill">
									<i class="bi bi-search me-2"></i> Search
								</button>
							</div>
						</div>
					</div>
				</section>

				<!-- Transaction Table -->
				<section class="card border-0 shadow-sm rounded-4">
					<div class="card-body p-4">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold mb-0">
								<i class="bi bi-list-ul me-2"></i> Transaction List
							</h5>
							<a href="#" class="btn btn-outline-primary rounded-pill px-4">
								<i class="bi bi-download me-2"></i> Export
							</a>
						</div>

						<div class="table-responsive">
							<table class="table table-hover align-middle">
								<thead>
									<tr>
										<th>Date</th>
										<th>Title</th>
										<th>Type</th>
										<th>Category</th>
										<th>Payment</th>
										<th class="text-end">Amount</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>

								<tbody>

									<!-- Transaction 1 -->
									<tr>
										<td>2026-01-05</td>
										<td>Product Sales</td>
										<td>
											<span class="badge rounded-pill text-bg-success">Income</span>
										</td>
										<td>Sales</td>
										<td>Bank Transfer</td>
										<td class="text-end text-success fw-bold">RM 764,239.00</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-secondary rounded-pill"
												type="button" data-bs-toggle="collapse"
												data-bs-target="#detailsSales1">
												<i class="bi bi-chevron-down"></i>
											</button>

											<a href="#" class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</a>

											<a href="#" class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</a>
										</td>
									</tr>

									<tr class="collapse" id="detailsSales1">
										<td colspan="7">
											<div class="bg-light border rounded-4 p-4">
												<div
													class="d-flex justify-content-between align-items-center mb-3">
													<h6 class="fw-bold mb-0">
														<i class="bi bi-info-circle me-2"></i> Transaction Details
													</h6>
													<span class="badge text-bg-success rounded-pill">Manual Entry</span>
												</div>

												<div class="row g-3">
													<div class="col-md-4">
														<p class="text-secondary mb-1">Reason</p>
														<strong>Revenue from product sales</strong>
													</div>

													<div class="col-md-4">
														<p class="text-secondary mb-1">Source</p>
														<strong>Manual Entry</strong>
													</div>

													<div class="col-md-4">
														<p class="text-secondary mb-1">Description</p>
														<strong>Payment received from customer for company product sales.</strong>
													</div>
												</div>
											</div>
										</td>
									</tr>

									<!-- Transaction 2 -->
									<tr>
										<td>2026-01-08</td>
										<td>Office Rent</td>
										<td>
											<span class="badge rounded-pill text-bg-danger">Expense</span>
										</td>
										<td>Rent</td>
										<td>Bank Transfer</td>
										<td class="text-end text-danger fw-bold">RM 32,471.00</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-secondary rounded-pill"
												type="button" data-bs-toggle="collapse"
												data-bs-target="#detailsRent1">
												<i class="bi bi-chevron-down"></i>
											</button>

											<a href="#" class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</a>

											<a href="#" class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</a>
										</td>
									</tr>

									<tr class="collapse" id="detailsRent1">
										<td colspan="7">
											<div class="bg-light border rounded-4 p-4">
												<div
													class="d-flex justify-content-between align-items-center mb-3">
													<h6 class="fw-bold mb-0">
														<i class="bi bi-info-circle me-2"></i> Transaction Details
													</h6>
													<span class="badge text-bg-secondary rounded-pill">Manual Entry</span>
												</div>

												<div class="row g-3 mb-3">
													<div class="col-md-4">
														<p class="text-secondary mb-1">Reason</p>
														<strong>Monthly office rental payment</strong>
													</div>

													<div class="col-md-4">
														<p class="text-secondary mb-1">Source</p>
														<strong>Manual Entry</strong>
													</div>

													<div class="col-md-4">
														<p class="text-secondary mb-1">Why money decreased?</p>
														<strong>Company paid fixed rental cost for office operation.</strong>
													</div>
												</div>

												<div class="table-responsive">
													<table class="table table-sm mb-0">
														<thead>
															<tr>
																<th>Item / Purpose</th>
																<th class="text-center">Quantity</th>
																<th class="text-end">Unit Price</th>
																<th class="text-end">Total</th>
															</tr>
														</thead>

														<tbody>
															<tr>
																<td>Office Rent</td>
																<td class="text-center">1 month</td>
																<td class="text-end">RM 32,471.00</td>
																<td class="text-end fw-bold">RM 32,471.00</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</td>
									</tr>

									<!-- Transaction 3 -->
									<tr>
										<td>2026-01-10</td>
										<td>Internet Bill</td>
										<td>
											<span class="badge rounded-pill text-bg-danger">Expense</span>
										</td>
										<td>Utilities</td>
										<td>Online Payment</td>
										<td class="text-end text-danger fw-bold">RM 76,432.00</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-secondary rounded-pill"
												type="button" data-bs-toggle="collapse"
												data-bs-target="#detailsInternet1">
												<i class="bi bi-chevron-down"></i>
											</button>

											<a href="#" class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</a>

											<a href="#" class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</a>
										</td>
									</tr>

									<tr class="collapse" id="detailsInternet1">
										<td colspan="7">
											<div class="bg-light border rounded-4 p-4">
												<div
													class="d-flex justify-content-between align-items-center mb-3">
													<h6 class="fw-bold mb-0">
														<i class="bi bi-wifi me-2"></i> Utility Expense Details
													</h6>
													<span class="badge text-bg-secondary rounded-pill">Manual Entry</span>
												</div>

												<div class="row g-3 mb-3">
													<div class="col-md-4">
														<p class="text-secondary mb-1">Reason</p>
														<strong>Internet service payment</strong>
													</div>

													<div class="col-md-4">
														<p class="text-secondary mb-1">Source</p>
														<strong>Manual Entry</strong>
													</div>

													<div class="col-md-4">
														<p class="text-secondary mb-1">Why money decreased?</p>
														<strong>Company paid monthly internet bill for business operations.</strong>
													</div>
												</div>

												<div class="table-responsive">
													<table class="table table-sm mb-0">
														<thead>
															<tr>
																<th>Item / Service</th>
																<th class="text-center">Quantity</th>
																<th class="text-end">Unit Price</th>
																<th class="text-end">Total</th>
															</tr>
														</thead>

														<tbody>
															<tr>
																<td>Business Internet Plan</td>
																<td class="text-center">1 month</td>
																<td class="text-end">RM 76,432.00</td>
																<td class="text-end fw-bold">RM 76,432.00</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</td>
									</tr>

									<!-- Transaction 4 -->
									<tr>
										<td>2026-01-14</td>
										<td>Marketing Campaign</td>
										<td>
											<span class="badge rounded-pill text-bg-danger">Expense</span>
										</td>
										<td>Marketing</td>
										<td>Credit Card</td>
										<td class="text-end text-danger fw-bold">RM 46,832.00</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-secondary rounded-pill"
												type="button" data-bs-toggle="collapse"
												data-bs-target="#detailsMarketing1">
												<i class="bi bi-chevron-down"></i>
											</button>

											<a href="#" class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</a>

											<a href="#" class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</a>
										</td>
									</tr>

									<tr class="collapse" id="detailsMarketing1">
										<td colspan="7">
											<div class="bg-light border rounded-4 p-4">
												<div
													class="d-flex justify-content-between align-items-center mb-3">
													<h6 class="fw-bold mb-0">
														<i class="bi bi-megaphone me-2"></i> Marketing Expense Details
													</h6>
													<span class="badge text-bg-secondary rounded-pill">Manual Entry</span>
												</div>

												<div class="row g-3 mb-3">
													<div class="col-md-4">
														<p class="text-secondary mb-1">Reason</p>
														<strong>Promotional campaign spending</strong>
													</div>

													<div class="col-md-4">
														<p class="text-secondary mb-1">Source</p>
														<strong>Manual Entry</strong>
													</div>

													<div class="col-md-4">
														<p class="text-secondary mb-1">Why money decreased?</p>
														<strong>Company paid advertising cost to increase sales reach.</strong>
													</div>
												</div>

												<div class="table-responsive">
													<table class="table table-sm mb-0">
														<thead>
															<tr>
																<th>Item / Service</th>
																<th class="text-center">Quantity</th>
																<th class="text-end">Unit Price</th>
																<th class="text-end">Total</th>
															</tr>
														</thead>

														<tbody>
															<tr>
																<td>Social Media Advertisement</td>
																<td class="text-center">1 campaign</td>
																<td class="text-end">RM 46,832.00</td>
																<td class="text-end fw-bold">RM 46,832.00</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</td>
									</tr>

									<!-- Transaction 5 - Invoice Transaction -->
									<tr>
										<td>2026-01-20</td>
										<td>ABC Supplier Sdn Bhd - INV-0001</td>
										<td>
											<span class="badge rounded-pill text-bg-danger">Expense</span>
										</td>
										<td>Supplies</td>
										<td>Invoice</td>
										<td class="text-end text-danger fw-bold">RM 477.00</td>
										<td class="text-center">
											<button class="btn btn-sm btn-outline-secondary rounded-pill"
												type="button" data-bs-toggle="collapse"
												data-bs-target="#detailsInvoice1">
												<i class="bi bi-chevron-down"></i>
											</button>

											<a href="#" class="btn btn-sm btn-outline-primary rounded-pill">
												<i class="bi bi-pencil-square"></i>
											</a>

											<a href="#" class="btn btn-sm btn-outline-danger rounded-pill">
												<i class="bi bi-trash"></i>
											</a>
										</td>
									</tr>

									<tr class="collapse" id="detailsInvoice1">
										<td colspan="7">
											<div class="bg-light border rounded-4 p-4">
												<div
													class="d-flex justify-content-between align-items-center mb-3">
													<h6 class="fw-bold mb-0">
														<i class="bi bi-receipt me-2"></i> Invoice Transaction Details
													</h6>
													<span class="badge text-bg-primary rounded-pill">Auto Extracted</span>
												</div>

												<div class="row g-3 mb-3">
													<div class="col-md-3">
														<p class="text-secondary mb-1">Vendor Name</p>
														<strong>ABC Supplier Sdn Bhd</strong>
													</div>

													<div class="col-md-3">
														<p class="text-secondary mb-1">Invoice Number</p>
														<strong>INV-0001</strong>
													</div>

													<div class="col-md-3">
														<p class="text-secondary mb-1">Reason</p>
														<strong>Office supplies purchase</strong>
													</div>

													<div class="col-md-3">
														<p class="text-secondary mb-1">Why money decreased?</p>
														<strong>Company purchased supplies for office operations.</strong>
													</div>
												</div>

												<div class="table-responsive">
													<table class="table table-sm table-hover align-middle mb-0">
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

														<tfoot>
															<tr>
																<th colspan="3" class="text-end">Grand Total</th>
																<th class="text-end text-danger">RM 477.00</th>
															</tr>
														</tfoot>
													</table>
												</div>
											</div>
										</td>
									</tr>

								</tbody>
							</table>
						</div>

						<nav class="mt-3">
							<ul class="pagination justify-content-end mb-0">
								<li class="page-item disabled">
									<a class="page-link">Previous</a>
								</li>
								<li class="page-item active">
									<a class="page-link" href="#">1</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">2</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>
					</div>
				</section>

			</main>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>