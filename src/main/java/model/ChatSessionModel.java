package model;

import java.util.Date;

public class ChatSessionModel {
	private int chatId;
	private int userId;
	private String name;
	private Date dateStart;

	public ChatSessionModel(int chatId, int userId, String name, Date dateStart) {
		this.chatId = chatId;
		this.userId = userId;
		this.name = name;
		this.dateStart = dateStart;
	}
	
	public int getChatId() {
		return chatId;
	}
	
	public void setChatId(int chatId) {
		this.chatId = chatId;
	}
	
	public int getUserId() {
		return userId;
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public Date getDateStart() {
		return dateStart;
	}
	
	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}
}