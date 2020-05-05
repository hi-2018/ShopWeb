import main.com.data_lists.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SignUpServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //接收注册表信息
        //接收提交的用户名及密码
        String formEmail=request.getParameter("emailAddr");
        String formUserName=request.getParameter("userName");
        String fromPassword =request.getParameter("password");
        String formGender=request.getParameter("gender");
        String sql="";
        PreparedStatement pStatement=null;

        Jdbc newJdbc=new Jdbc();
        Connection connection=newJdbc.getConn();
        try{
            sql="select * from users  where email=?";
            pStatement=connection.prepareStatement(sql);
            pStatement.setString(1,formEmail);
            ResultSet rs=pStatement.executeQuery();

            if (rs.next()){
                PrintWriter out = response.getWriter();
                out.println("<script language='javascript'>alert('邮箱已注册');window" +
                        ".location.href='signup.jsp';</script>");
            }else {

                sql = "insert into users(email,password,username,gender)values (?,?,?,?) ";
                pStatement = connection.prepareStatement(sql);
                pStatement.setString(1, formEmail);
                pStatement.setString(2, fromPassword);
                pStatement.setString(3, formUserName);
                pStatement.setString(4, formGender);
                pStatement.setString(5, formEmail);
                pStatement.executeUpdate();
            }
            newJdbc.close();
            pStatement.close();
            rs.close();
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

}
