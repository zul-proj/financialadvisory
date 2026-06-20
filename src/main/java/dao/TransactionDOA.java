package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import connection.DBConnection;
import model.TransactionModel;

public class TransactionDOA {
	
	 public void saveTransaction(TransactionModel transaction) {
		// Code to save the transaction to the database
	}

	public TransactionModel getTransactionById(int transactionId) {
		try {
			Connection conn = DBConnection.getConnection();
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery("SELECT TOP 1 * FROM transaction WHERE transactionId = " + transactionId);
			
			while (rs.next()) {
				TransactionModel transaction = new TransactionModel(rs.getInt("transactionId"),
						rs.getString("name"),
						rs.getString("description"),
						rs.getString("invoiceNo"),
						rs.getString("payer"),
						rs.getString("payee"),
						rs.getInt("categoryId"),
						rs.getInt("departmentId"),
						rs.getString("transactionType"),
						rs.getString("paymentMethod"),
						rs.getDouble("totalAmount"),
						rs.getString("currency"),
						rs.getDate("dateTransaction"),
						rs.getString("status"),
						rs.getInt("createdBy"),
						rs.getInt("verifiedBy"));
				
				return transaction; // Return the transaction object

			}
			conn.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null; // Placeholder return statement
	}

	public ArrayList<TransactionModel> getAllTransactions() {
		try {
			Connection conn = DBConnection.getConnection();
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery("SELECT * FROM transaction");
			
			ArrayList<TransactionModel> transactions = new ArrayList<>();
			
			while (rs.next()) {
				TransactionModel transaction = new TransactionModel(rs.getInt("transactionId"),
						rs.getString("name"),
						rs.getString("description"),
						rs.getString("invoiceNo"),
						rs.getString("payer"),
						rs.getString("payee"),
						rs.getInt("categoryId"),
						rs.getInt("departmentId"),
						rs.getString("transactionType"),
						rs.getString("paymentMethod"),
						rs.getDouble("totalAmount"),
						rs.getString("currency"),
						rs.getDate("dateTransaction"),
						rs.getString("status"),
						rs.getInt("createdBy"),
						rs.getInt("verifiedBy"));
				
				transactions.add(transaction);
			}
			
			conn.close();
			return transactions;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return new ArrayList<>(); // Placeholder return statement
	}
	
	public void updateTransaction(TransactionModel transaction) {
		// Code to update an existing transaction in the database
	}

	public void deleteTransaction(int transactionId) {
		// Code to delete a transaction from the database by its ID
	}
}
