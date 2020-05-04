import java.sql.*;


public class Jdbc {
    //数据库URL
    String dataurl = "jdbc:mysql://localhost:3306/shopweb?serverTimezone=GMT";
    //jdbc驱动名
    String driverStr="com.mysql.cj.jdbc.Driver";
    //数据库用户名
    String dataUserName="root";
    //数据库密码
    String dataPassword="123456";
    //数据库访问对象
    private Connection conn;
   //构造方法
    public Jdbc(){
        try {
            Class.forName(driverStr);
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
    }
    //获得数据库连接对象
    public Connection getConn(){
        try {
            conn=(Connection)DriverManager.getConnection(dataurl,dataUserName,dataPassword);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return conn;
    }
    //关闭数据库连接
    public void close(){
        if (conn!=null){
            try{
                conn.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
    }
}
