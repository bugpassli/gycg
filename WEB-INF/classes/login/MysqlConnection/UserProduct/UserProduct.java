package login.MysqlConnection.UserProduct;
import java.sql.*;
import javax.naming.*;
import javax.sql.*;
import java.util.*;
import login.MysqlConnection.User.*;
import login.MysqlConnection.Table.Product;

public class UserProduct {
	//获取表中该人员需要的产品
	Product pd ;
	ArrayList<Product> product = new ArrayList<Product>();
	public UserProduct(Connection con , User user) throws SQLException {
		try{
			String sql = "select * from userproduct where username = ? and password = ?  ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1  , user.getUsername());
			ps.setString(2 ,  user.getPassword());
			ResultSet rs = ps.executeQuery();
			//记录有多少页
			int pageamount = 0 ;
			while (rs.next()) {
				pageamount++;
				pd =  new Product();
				pd.setUsername(rs.getString("username"));
				pd.setPassword(rs.getString("password"));
				pd.setProduct(rs.getString("product")); //食堂需求产品
				pd.setAmount(rs.getString("amount"));//食堂需求量
				pd.setNuit(rs.getString("nuit")); //食堂单位
				pd.setUserID(rs.getString("userID")); 
				pd.setPc(rs.getInt("page"));//当前页
				pd.setUrl("http://192.168.67.92:8080/matchcenter/TableName"); //分页的url
				pd.setTp(pageamount); //共有几页
				
				product.add(pd);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<Product> getProduct(){
		return product;
	}

}