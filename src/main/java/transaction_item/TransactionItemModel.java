package transaction_item;

public class TransactionItemModel {
	private int transactionItemId;
	private int transactionId;
	private String name;
	private String description;
	private double unitPrice;
	private int quantity;
	
	public TransactionItemModel(int transactionItemId, int transactionId, String name, String description, double unitPrice, int quantity) {
		this.transactionItemId = transactionItemId;
		this.transactionId = transactionId;
		this.name = name;
		this.description = description;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
	}
	
	public int getTransactionItemId() {
		return transactionItemId;
	}
	
	public void setTransactionItemId(int transactionItemId) {
		this.transactionItemId = transactionItemId;
	}
	
	public int getTransactionId() {
		return transactionId;
	}
	
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public double getUnitPrice() {
		return unitPrice;
	}
	
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
