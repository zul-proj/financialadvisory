package model;

public class AttachmentModel {
	private int attachmentId;
	private int transactionId;
	private String name;
	private String description;
	private String fileType;
	private String filePath;
	
	public AttachmentModel(int attachmentId, int transactionId, String name, String description, String fileType, String filePath) {
		this.attachmentId = attachmentId;
		this.transactionId = transactionId;
		this.name = name;
		this.description = description;
		this.fileType = fileType;
		this.filePath = filePath;
	}
	
	public int getAttachmentId() {
		return attachmentId;
	}
	
	public void setAttachmentId(int attachmentId) {
		this.attachmentId = attachmentId;
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
	
	public String getFileType() {
		return fileType;
	}
	
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	
	public String getFilePath() {
		return filePath;
	}
	
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
}
