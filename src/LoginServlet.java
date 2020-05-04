import main.com.data_lists.Users;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //接收提交的用户名及密码
        String getEmail=request.getParameter("emailAddr");
        String getPassword =request.getParameter("password");
        String otherAction=request.getParameter("action");

        Jdbc newJdbc=new Jdbc();
        Connection connection=newJdbc.getConn();
        ResultSet rs;
        Users user=new Users();
        //String uPassword=null;
        HttpSession session=request.getSession();
        try{
            String sql="select * from users  where email=?";
            PreparedStatement pStatement=connection.prepareStatement(sql);
            pStatement.setString(1,getEmail);
            rs=pStatement.executeQuery();
            while (rs.next()){//查找到的数据保存到Users对象中
                user.setId(rs.getInt(1));
                user.setEmail(rs.getString(2));
                user.setPassword(rs.getString(3));
                //uPassword=rs.getString(3);
                user.setUsername(rs.getString(4));
                user.setGender(rs.getString(5));
            }
            newJdbc.close();
            pStatement.close();
            rs.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        //验证邮箱地址和密码
        if ("logout".equals(otherAction)){
            session.setAttribute("eAddr",null);
            response.sendRedirect("login.jsp");
        }else {
            if(user.getEmail()==null){
                session.setAttribute("message","用户名错误");

            }else if (!getPassword.equals(user.getPassword())){
                session.setAttribute("message","密码输入错误");
            }else {
                session.setAttribute("eAddr",user.getEmail());
            }
            response.sendRedirect("login.jsp");
        }


    }

}
