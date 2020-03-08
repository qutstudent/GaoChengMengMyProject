package com.qst.crm.Controller;
import com.qst.crm.Dao.UserDao;
import com.qst.crm.Service.UserService;
import com.qst.crm.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService us;
    @RequestMapping("/login")
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 设置请求字符编码
        request.setCharacterEncoding("UTF-8");
        // 设置响应字符编码
        response.setContentType("text/html;charset=UTF-8");
        // 获取响应字符输出流
        PrintWriter out = response.getWriter();
        // 获取用户登录信息
        String userLogname = request.getParameter("userLogname");
        String userPwd = request.getParameter("userPwd");
        // 用户登录判断
        User user = us.login(userLogname,userPwd);
        // 获取用户提交的验证码
        String validateCode = request.getParameter("validateCode");
        // 获取本次请求会话中保存的验证码
        String sessionValidateCode = (String)request.getSession()
                    .getAttribute("SESSION_VALIDATECODE");
        if(user != null&&sessionValidateCode.equals(validateCode)){
                // 登陆成功，使用会话域属性记录用户信息，进入管理主界面
                request.getSession().setAttribute("SESSION_USER", user);
                response.sendRedirect("/login/showmain");

            }else if(user == null){
                // 登录失败，错误信息提示，返回登录页面
                out.print("<script type='text/javascript'>");
                out.print("alert('用户名或密码错误，请重新输入！');");
                out.print("window.location.href='http://localhost:8081/login/showlogin';");
                out.print("</script>");
            }
            else {
                out.print("<script type='text/javascript'>");
                out.print("alert('验证码输入错误！');");
                out.print("window.location.href='http://localhost:8081/login/showlogin';");
                out.print("</script>");
            }
        }
        @RequestMapping("exit")
       public void  exit(HttpServletRequest request, HttpServletResponse response) throws IOException {
           // 用户退出
          // 设置请求字符编码
           request.setCharacterEncoding("UTF-8");
           // 设置响应字符编码
           response.setContentType("text/html;charset=UTF-8");
           // 获取响应字符输出流
           PrintWriter out = response.getWriter();
           // 用户本次会话失效
            request.getSession().invalidate();
            // 返回登陆页面
            out.print("<script type='text/javascript'>");
           out.print("window.location.href='http://localhost:8081/login/showlogin';");
            out.print("</script>");
    }
    @RequestMapping("loginout")
    public String loginout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 用户退出登录
        // 设置请求字符编码
        request.setCharacterEncoding("UTF-8");
        // 设置响应字符编码
        response.setContentType("text/html;charset=UTF-8");
        // 获取响应字符输出流
        PrintWriter out = response.getWriter();
        // 用户本次会话失效
        request.getSession().invalidate();
        // 重新加载
        return "main";
    }
    @RequestMapping("/updatepwd")
    public String update_pwd(@RequestParam("userlogname") String ul, @RequestParam("newpwd") String newpwd){
        int a=us.update_pwd(ul,newpwd);
        if(a>0){
            return "redirect:/login/showlogin";}
        return null;
    }
}
