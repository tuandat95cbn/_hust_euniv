package datamanipulation.staffsmanipulation;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;

public class UserFunctionsManipulation {
	public String DRIVER = "com.mysql.jdbc.Driver";
	public String PATH = "jdbc:mysql://localhost/hust_euniv";
	public PrintWriter log = null;
	public ArrayList<UserInfo> getListUsers(){
		ArrayList<UserInfo> users = new ArrayList<UserInfo>();
		try{
			Class.forName(DRIVER);
			Connection cn = DriverManager.getConnection(PATH,"root","");
			Statement st = cn.createStatement();
			String sql = "select * from tblusers";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				String userCode = rs.getString("Username");
				
				UserInfo u = new UserInfo(0,userCode,"","","","",userCode);
				users.add(u);
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return users;
	}
	
	public void removeUserFunction(String userCode){
		try{
			Class.forName(DRIVER);
			Connection cn = DriverManager.getConnection(PATH,"root","");
			String sql = "delete from tbluserfunctions where USERFUNC_USERCODE = '" + userCode + "'";
			Statement st = cn.createStatement();
			st.execute(sql);
			
			cn.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	public void removeFunctionFromUserFunctions(String functionCode){
		try{
			Class.forName(DRIVER);
			Connection cn = DriverManager.getConnection(PATH,"root","");
			String sql = "delete from tbluserfunctions where USERFUNC_FUNCCODE = '" + functionCode + "'";
			Statement st = cn.createStatement();
			st.execute(sql);
			
			cn.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	public void removeUserFunctionsExcept(HashSet<String> userCodes){
		ArrayList<UserInfo> users = getListUsers();
		for(int i = 0; i < users.size(); i++){
			String uc = users.get(i).UserCode;
			if(!userCodes.contains(uc)){
				removeUserFunction(uc);
			}
		}
	}
	public void resetUserFunctions(){
		HashSet<String> keepUserCode = new HashSet<String>();
		keepUserCode.add("dung.phamquang@hust.edu.vn");
		removeUserFunctionsExcept(keepUserCode);
	}
	public void setFunctions(String userCode, ArrayList<String> functionCodes){
		try{
			Class.forName(DRIVER);
			Connection cn = DriverManager.getConnection(PATH,"root","");
			
			for(int i = 0; i < functionCodes.size(); i++){
				String functionCode = functionCodes.get(i);
				String code = userCode + "_" + functionCode;
				//String sql = "insert into tbluserfunctions(USERFUNC_CODE, USERFUNC_USERCODE,"
				//		+ "USERFUNC_FUNCCODE) values('" + code + "','" + userCode + "','" +
				//		functionCode + "')";
				String sql = "insert into tbluserfunctions(USERFUNC_CODE, USERFUNC_USERCODE,"
								+ "USERFUNC_FUNCCODE) values(?,?,?)";
				PreparedStatement st = cn.prepareStatement(sql);
				st.setString(1,code);
				st.setString(2, userCode);
				st.setString(3, functionCode);
				st.execute();
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	public HashSet<String> getUserCodeFromUSerFunctions(){
		HashSet<String> userCodes = new HashSet<String>();
		try{
			Class.forName(DRIVER);
			Connection cn = DriverManager.getConnection(PATH,"root","");
			Statement st = cn.createStatement();
			String sql = "select * from tbluserfunctions";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				String userCode = rs.getString("USERFUNC_USERCODE");
				String functionCode = rs.getString("USERFUNC_FUNCCODE");
				//System.out.println(userCode + "\t" + functionCode);
				userCodes.add(userCode);
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return userCodes;
	}
	public void setUserFunctions(){
		ArrayList<UserInfo> users = getListUsers();
		HashSet<String> existUserCodes = getUserCodeFromUSerFunctions();
		for(String u: existUserCodes){
			System.out.println(u);
		}
		
		ArrayList<String> functions = new ArrayList<String>();
		functions.add("REVIEW-SUBMITTED-PROJECTS");
		functions.add("MODIFY-SUBMITTED-PROJECTS");
		functions.add("PROJECT-SIGNUP");
		functions.add("MANAGE-PRODUCTS");
		int count = 0;
		for(int i = 0; i < users.size(); i++){
			UserInfo u = users.get(i);
			if(!existUserCodes.contains(u.UserCode)){
				count++;
				System.out.println(count + ": Add User " + u.UserCode);
				setFunctions(u.UserCode, functions);
				try{
					Thread.sleep(5);
				}catch(Exception ex){
					ex.printStackTrace();
				}
				//break;
			}			
		}
		System.out.println(users.size());
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UserFunctionsManipulation UFM = new UserFunctionsManipulation();
		//UFM.setUserFunctions();
		UFM.removeFunctionFromUserFunctions("REVIEW-SUBMITTED-PROJECTS");
		//UFM.resetUserFunctions();
		
		System.out.println("DONE.....");
	}

}
