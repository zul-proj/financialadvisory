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
<style>
	.transaction-workspace {
		max-width: 1180px;
	}

	.transaction-form-card {
		border-radius: 8px;
	}

	.drop-zone {
		border: 2px dashed #9ec5fe;
		border-radius: 8px;
		background: #f8fbff;
		cursor: pointer;
		min-height: 180px;
		transition: border-color .15s ease, background-color .15s ease;
	}

	.drop-zone.drag-over {
		border-color: #0d6efd;
		background: #edf5ff;
	}

	.line-item-grid {
		display: grid;
		grid-template-columns: minmax(180px, 1fr) 120px 140px 140px 44px;
		gap: .75rem;
		align-items: center;
	}

	.attachment-row {
		display: grid;
		grid-template-columns: minmax(180px, 1fr) 150px 44px;
		gap: .75rem;
		align-items: center;
	}

	@media (max-width: 767.98px) {
		.line-item-grid,
		.attachment-row {
			grid-template-columns: 1fr;
		}
	}
</style>
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
				<div class="transaction-workspace mx-auto">
					<div class="d-flex flex-wrap justify-content-between align-items-center gap-3 mb-4">
						<div>
							<h1 class="fw-bold mb-1"><%= isCreate ? "Add New Transaction" : "Transaction Details" %></h1>
							<p class="text-secondary mb-0">Record transaction information, item lines, and supporting attachments.</p>
						</div>
						<a class="btn btn-outline-secondary rounded-pill px-4" href="staff-transaction.jsp">
							<i class="bi bi-arrow-left me-2"></i>Back to List
						</a>
					</div>

					<section class="card border-0 shadow-sm transaction-form-card">
						<div class="card-body p-4">
							<form action="#" method="post" enctype="multipart/form-data">
								<div class="d-flex flex-wrap justify-content-between align-items-center gap-3 pb-3 mb-4 border-bottom">
									<h5 class="fw-bold mb-0">
										<i class="bi bi-receipt me-2"></i><%= isCreate ? "Add New Transaction" : "Edit Transaction" %>
									</h5>
									<button class="btn btn-outline-primary rounded-pill px-4" type="button"
										data-bs-toggle="modal" data-bs-target="#extractUploadModal">
										<i class="bi bi-file-earmark-arrow-up me-2"></i>Extract from PDF
									</button>
								</div>

								<div class="row g-3 mb-4">
									<div class="col-md-6">
										<label class="form-label">Transaction Title</label>
										<input type="text" class="form-control rounded-3" name="title"
											value="<%= isCreate ? "ABC Supplier Sdn Bhd - INV-0001" : "Office Rent" %>" placeholder="Example: Office Rent">
									</div>
									<div class="col-md-3">
										<label class="form-label">Type</label>
										<select class="form-select rounded-3" name="type">
											<option>Income</option>
											<option selected>Expense</option>
										</select>
									</div>
									<div class="col-md-3">
										<label class="form-label">Category</label>
										<select class="form-select rounded-3" name="category">
											<option>Sales</option>
											<option <%= isCreate ? "" : "selected" %>>Rent</option>
											<option>Utilities</option>
											<option>Salary</option>
											<option>Marketing</option>
											<option <%= isCreate ? "selected" : "" %>>Supplies</option>
											<option>Travel</option>
											<option>Training</option>
											<option>Others</option>
										</select>
									</div>
									<div class="col-md-4">
										<label class="form-label">Amount (RM)</label>
										<input type="number" step="0.01" class="form-control rounded-3"
											name="amount" value="<%= isCreate ? "477.00" : "32471.00" %>" placeholder="0.00">
									</div>
									<div class="col-md-4">
										<label class="form-label">Transaction Date</label>
										<input type="date" class="form-control rounded-3"
											name="transactionDate" value="<%= isCreate ? "2026-01-20" : "2026-01-08" %>">
									</div>
									<div class="col-md-4">
										<label class="form-label">Source</label>
										<input type="text" class="form-control rounded-3"
											name="source" value="<%= isCreate ? "Invoice" : "Bank Transfer" %>">
									</div>
									<div class="col-md-6">
										<label class="form-label">Invoice / Reference Number</label>
										<input type="text" class="form-control rounded-3" name="referenceNumber"
											value="<%= isCreate ? "INV-0001" : "RENT-2026-001" %>" placeholder="Invoice or payment reference">
									</div>
									<div class="col-md-6">
										<label class="form-label">Vendor / Payee Name</label>
										<input type="text" class="form-control rounded-3" name="vendorName"
											value="<%= isCreate ? "ABC Supplier Sdn Bhd" : "City Office Properties" %>" placeholder="Vendor, customer, or payee">
									</div>
									<div class="col-12">
										<label class="form-label">Reason / Description</label>
										<textarea class="form-control rounded-3" rows="4" name="description"
											placeholder="Explain transaction purpose"><%= isCreate ? "Office supplies purchased for company operations. Auto extracted from uploaded invoice." : "Monthly office rental payment for January 2026." %></textarea>
									</div>
								</div>

								<div class="border rounded-3 p-3 mb-4">
									<div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-3">
										<div>
											<h6 class="fw-bold mb-1">
												<i class="bi bi-list-check me-2"></i>Editable Item List
											</h6>
											<p class="text-secondary small mb-0">Review and edit transaction line items before submitting.</p>
										</div>
									</div>

									<div class="line-item-grid text-secondary small fw-semibold mb-2 d-none d-md-grid">
										<span>Item / Description</span>
										<span>Quantity</span>
										<span>Unit Price</span>
										<span>Total</span>
										<span></span>
									</div>

									<div id="lineItems" class="vstack gap-2">
										<div class="line-item-grid line-item-row">
											<input type="text" class="form-control rounded-3" name="itemDescription" value="Office Supplies">
											<input type="number" class="form-control rounded-3 item-qty" name="itemQuantity" value="3" min="0" step="1">
											<input type="number" class="form-control rounded-3 item-price" name="itemUnitPrice" value="150.00" min="0" step="0.01">
											<input type="number" class="form-control rounded-3 item-total fw-bold" name="itemTotal" value="450.00" min="0" step="0.01">
											<button type="button" class="btn btn-outline-danger rounded-circle remove-row" aria-label="Delete item">
												<i class="bi bi-trash"></i>
											</button>
										</div>
										<div class="line-item-grid line-item-row">
											<input type="text" class="form-control rounded-3" name="itemDescription" value="Service Tax">
											<input type="number" class="form-control rounded-3 item-qty" name="itemQuantity" value="1" min="0" step="1">
											<input type="number" class="form-control rounded-3 item-price" name="itemUnitPrice" value="27.00" min="0" step="0.01">
											<input type="number" class="form-control rounded-3 item-total fw-bold" name="itemTotal" value="27.00" min="0" step="0.01">
											<button type="button" class="btn btn-outline-danger rounded-circle remove-row" aria-label="Delete item">
												<i class="bi bi-trash"></i>
											</button>
										</div>
									</div>

									<div class="d-flex flex-wrap justify-content-between align-items-center gap-3 mt-3">
										<button type="button" class="btn btn-outline-primary btn-sm rounded-pill px-3" id="addItemBtn">
											<i class="bi bi-plus-circle me-2"></i>Add Item
										</button>
										<div class="d-flex align-items-center gap-3">
											<span class="fw-bold">Grand Total</span>
											<input type="number" class="form-control rounded-3 fw-bold text-danger" id="grandTotal"
												name="grandTotal" value="477.00" readonly style="max-width: 160px;">
										</div>
									</div>
								</div>

								<div class="border rounded-3 p-3 mb-4">
									<div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-3">
										<h6 class="fw-bold mb-0">
											<i class="bi bi-paperclip me-2"></i>Attachment List
										</h6>
										<button type="button" class="btn btn-outline-primary btn-sm rounded-pill px-3"
											data-bs-toggle="modal" data-bs-target="#attachmentUploadModal">
											<i class="bi bi-upload me-2"></i>Upload Attachment
										</button>
									</div>

									<div id="attachmentList" class="vstack gap-2">
										<div class="attachment-row border-bottom pb-2">
											<div>
												<i class="bi bi-file-earmark-pdf text-danger me-2"></i>
												<span class="fw-semibold">INV-0001.pdf</span>
											</div>
											<span class="text-secondary small">Invoice PDF</span>
											<button type="button" class="btn btn-outline-danger rounded-circle remove-attachment" aria-label="Delete attachment">
												<i class="bi bi-trash"></i>
											</button>
										</div>
										<div class="attachment-row border-bottom pb-2">
											<div>
												<i class="bi bi-file-earmark-image text-primary me-2"></i>
												<span class="fw-semibold">delivery-order.png</span>
											</div>
											<span class="text-secondary small">Supporting File</span>
											<button type="button" class="btn btn-outline-danger rounded-circle remove-attachment" aria-label="Delete attachment">
												<i class="bi bi-trash"></i>
											</button>
										</div>
									</div>
								</div>

								<div class="d-flex flex-wrap justify-content-end gap-2">
									<a class="btn btn-outline-secondary rounded-pill px-4" href="staff-transaction.jsp">Cancel</a>
									<button class="btn btn-primary rounded-pill px-4" type="submit">
										<i class="bi bi-send-check me-2"></i><%= isEdit ? "Save Changes" : "Submit Transaction" %>
									</button>
								</div>
							</form>
						</div>
					</section>
				</div>
			</main>
		</div>
	</div>

	<div class="modal fade" id="extractUploadModal" tabindex="-1" aria-labelledby="extractUploadModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content border-0 shadow">
				<div class="modal-header">
					<h5 class="modal-title fw-bold" id="extractUploadModalLabel">Extract Transaction from PDF</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<label class="drop-zone d-flex flex-column justify-content-center align-items-center text-center p-4 w-100">
						<i class="bi bi-cloud-arrow-up fs-1 text-primary mb-2"></i>
						<span class="fw-bold">Upload invoice PDF or image</span>
						<span class="text-secondary small">Drag and drop file here, or click to browse</span>
						<span class="selected-file text-primary small mt-2"></span>
						<input class="d-none upload-input" type="file" accept=".pdf,.jpg,.jpeg,.png">
					</label>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-secondary rounded-pill px-4" data-bs-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary rounded-pill px-4" data-bs-dismiss="modal">Confirm</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="attachmentUploadModal" tabindex="-1" aria-labelledby="attachmentUploadModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content border-0 shadow">
				<div class="modal-header">
					<h5 class="modal-title fw-bold" id="attachmentUploadModalLabel">Upload Attachment</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<label class="drop-zone d-flex flex-column justify-content-center align-items-center text-center p-4 w-100">
						<i class="bi bi-paperclip fs-1 text-primary mb-2"></i>
						<span class="fw-bold">Upload supporting attachment</span>
						<span class="text-secondary small">Drag and drop file here, or click to browse</span>
						<span class="selected-file text-primary small mt-2"></span>
						<input class="d-none upload-input" type="file" accept=".pdf,.jpg,.jpeg,.png,.doc,.docx,.xls,.xlsx">
					</label>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-secondary rounded-pill px-4" data-bs-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary rounded-pill px-4" data-bs-dismiss="modal">Confirm</button>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="notification-widget.jsp" />
	<jsp:include page="chatbot-widget.jsp" />
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/chatbot-widget.js?v=2"></script>
	<script>
		const lineItems = document.getElementById("lineItems");
		const grandTotal = document.getElementById("grandTotal");

		function updateLineTotal(row) {
			const qty = Number(row.querySelector(".item-qty").value) || 0;
			const price = Number(row.querySelector(".item-price").value) || 0;
			row.querySelector(".item-total").value = (qty * price).toFixed(2);
			updateGrandTotal();
		}

		function updateGrandTotal() {
			const total = [...document.querySelectorAll(".item-total")]
				.reduce((sum, input) => sum + (Number(input.value) || 0), 0);
			grandTotal.value = total.toFixed(2);
		}

		document.getElementById("addItemBtn").addEventListener("click", () => {
			const row = document.createElement("div");
			row.className = "line-item-grid line-item-row";
			row.innerHTML = `
				<input type="text" class="form-control rounded-3" name="itemDescription" placeholder="Item description">
				<input type="number" class="form-control rounded-3 item-qty" name="itemQuantity" value="1" min="0" step="1">
				<input type="number" class="form-control rounded-3 item-price" name="itemUnitPrice" value="0.00" min="0" step="0.01">
				<input type="number" class="form-control rounded-3 item-total fw-bold" name="itemTotal" value="0.00" min="0" step="0.01">
				<button type="button" class="btn btn-outline-danger rounded-circle remove-row" aria-label="Delete item">
					<i class="bi bi-trash"></i>
				</button>`;
			lineItems.appendChild(row);
		});

		lineItems.addEventListener("input", (event) => {
			const row = event.target.closest(".line-item-row");
			if (!row) {
				return;
			}
			if (event.target.classList.contains("item-qty") || event.target.classList.contains("item-price")) {
				updateLineTotal(row);
			}
			if (event.target.classList.contains("item-total")) {
				updateGrandTotal();
			}
		});

		lineItems.addEventListener("click", (event) => {
			const button = event.target.closest(".remove-row");
			if (!button) {
				return;
			}
			button.closest(".line-item-row").remove();
			updateGrandTotal();
		});

		document.getElementById("attachmentList").addEventListener("click", (event) => {
			const button = event.target.closest(".remove-attachment");
			if (button) {
				button.closest(".attachment-row").remove();
			}
		});

		document.querySelectorAll(".drop-zone").forEach((zone) => {
			const input = zone.querySelector(".upload-input");
			const selectedFile = zone.querySelector(".selected-file");

			function setSelectedFile(files) {
				selectedFile.textContent = files && files.length ? files[0].name : "";
			}

			zone.addEventListener("dragover", (event) => {
				event.preventDefault();
				zone.classList.add("drag-over");
			});

			zone.addEventListener("dragleave", () => zone.classList.remove("drag-over"));

			zone.addEventListener("drop", (event) => {
				event.preventDefault();
				zone.classList.remove("drag-over");
				input.files = event.dataTransfer.files;
				setSelectedFile(input.files);
			});

			input.addEventListener("change", () => setSelectedFile(input.files));
		});
	</script>
</body>
</html>
