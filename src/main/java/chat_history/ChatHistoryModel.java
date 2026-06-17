package chat_history;

public class ChatHistoryModel {
	private int chatHistoryId;
	private int chatId;
	private boolean isPromptOrResponse;
	private String content;
	
	public ChatHistoryModel(int chatHistoryId, int chatId, boolean isPromptOrResponse, String content) {
		this.chatHistoryId = chatHistoryId;
		this.chatId = chatId;
		this.isPromptOrResponse = isPromptOrResponse;
		this.content = content;
	}
	
	public int getChatHistoryId() {
		return chatHistoryId;
	}
	
	public void setChatHistoryId(int chatHistoryId) {
		this.chatHistoryId = chatHistoryId;
	}
	
	public int getChatId() {
		return chatId;
	}
	
	public void setChatId(int chatId) {
		this.chatId = chatId;
	}
	
	public boolean isPromptOrResponse() {
		return isPromptOrResponse;
	}
	
	public void setPromptOrResponse(boolean isPromptOrResponse) {
		this.isPromptOrResponse = isPromptOrResponse;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
}
