package ra.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equals("Login")){
            //Coi nhu co tai khoan quangnd - pass: 123 - user
            //Coi nhu co tai khoan ra - 123 - admin
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            if (userName.equals("quangnd")&&password.equals("123")){
                //tai khoan user dang nhap thanh cong --> chuyen ve trang ma goi  den trang login
                String pageRequestLogin = request.getParameter("pageRequestLogin");
                //set user vao session
                request.getSession().setAttribute("userName",userName);
                response.sendRedirect(pageRequestLogin);
            }else{
                //Tai khoan user dang nhap that bai
                request.setAttribute("errorLogin","UserName or Password Incorrect");
                request.getRequestDispatcher("views/users/login.jsp").forward(request,response);
            }
        }else if (action.equals("Check Out")){
            //Kiem tra trong session co userName chua
            String userName = String.valueOf(request.getSession().getAttribute("userName"));
            if (userName=="null"){
                //chua dang nhap --> sang trang login
                String pageRequestLogin = request.getParameter("pageRequestLogin");
                request.setAttribute("pageRequestLogin",pageRequestLogin);
                request.getRequestDispatcher("views/users/login.jsp").forward(request,response);

            }
        }
    }
}
