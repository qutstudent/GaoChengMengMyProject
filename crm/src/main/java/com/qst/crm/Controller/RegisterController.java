package com.qst.crm.Controller;
import com.qst.crm.Service.UserService;
import com.qst.crm.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@Controller
@RequestMapping("/Register")
public class RegisterController {
    @Autowired
    private UserService us;

    @RequestMapping("/showRegister")
    public String showRegister() {
        return "register";
    }

    @RequestMapping("/Registertologin")
    public String Register(HttpServletRequest request, HttpServletResponse response, @RequestParam("file") MultipartFile file) throws IOException {
        // 设置请求字符编码
        request.setCharacterEncoding("UTF-8");
        // 设置响应字符编码
        response.setContentType("text/html;charset=UTF-8");
        // 获取响应字符输出流
        PrintWriter out = response.getWriter();
        // 获取用户登录信息
        String userLogname = request.getParameter("userLogname");
        String userPwd = request.getParameter("userPwd");
        String userRealname = request.getParameter("userRealname");
        String sex = request.getParameter("gender");
        String userTel = request.getParameter("userTel");
        String userEmail = request.getParameter("userEmail");
        String[] favor = request.getParameterValues("favor");
        StringBuilder favors = new StringBuilder();
        for (String s : favor) {
            assert false;
            favors.append(s).append(",");
        }
        assert false;
        favors = new StringBuilder(favors.substring(0, favors.length() - 1));
        String userRole = request.getParameter("userRole");
        //文件上传
        String userImagelocation = upload(request, response, file);
        // 用户信息注册
        User user = new User(userLogname, userPwd, userRealname, userEmail, userRole, userTel, favors.toString(), userImagelocation, sex);
        int a = us.register(user);
        // 注册成功，进入登录页面
        return "redirect:/login/showlogin";
    }

    public String upload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws IOException {
        //前端没有选择文件，srcFile为空
        //选择了文件，开始上传操作
        try {
            //构建上传目标路径，找到了项目的target的classes目录
            File destFile = new File(ResourceUtils.getURL("classpath:").getPath());
            if (!destFile.exists()) {
                destFile = new File("");
            }
            //输出目标文件的绝对路径
            System.out.println("file path:" + destFile.getAbsolutePath());
            //拼接子路径
            SimpleDateFormat sf_ = new SimpleDateFormat("yyyyMMddHHmmss");
            String times = sf_.format(new Date());
            File upload = new File(destFile.getAbsolutePath(), "static/images/" + times);

            //若目标文件夹不存在，则创建
            if (!upload.exists()) {
                upload.mkdirs();
            }
            System.out.println("完整的上传路径：" + upload.getAbsolutePath() + "/" + file);

            //根据srcFile大小，准备一个字节数组
            byte[] bytes = file.getBytes();
            //拼接上传路径
            //Path path = Paths.get(UPLOAD_FOLDER + srcFile.getOriginalFilename());

            String uuid = UUID.randomUUID().toString().replaceAll("-", "");
            // 获得文件原始名称
            String fileName = file.getOriginalFilename();
            // 获得文件后缀名称
            String suffixName = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
            // 生成最新的uuid文件名称
            String newFileName = uuid + "." + suffixName;

            //通过项目路径，拼接上传路径
            Path path = Paths.get(upload.getAbsolutePath() + "/" + newFileName);
            //** 开始将源文件写入目标地址
            Files.write(path, bytes);
            return newFileName;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;

    }

}

