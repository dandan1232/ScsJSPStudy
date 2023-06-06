package Ch9.ch9_example9_5;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * @author: 蛋宝
 * @date: 2023/6/6 22:43
 * @description:
 */
public class Example9_5_Servlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String filePath=request.getParameter("filePath");
//        System.out.println(filePath);
        String fileName=filePath.substring(filePath.lastIndexOf("/")+1);
        response.setHeader("Content-disposition","attachment;filename="+fileName);
        try{ //读取文件,并发送给用户下载:
            File f = new File(filePath);
            System.out.println(f);
            FileInputStream in = new FileInputStream(f);
            OutputStream out = response.getOutputStream();
            int n = 0;
            byte b[] = new byte[1204];
            while((n=in.read(b))!=-1) {
                out.write(b,0,n);
            }
            out.close();
            in.close();
        }
        catch(Exception exp){}
    }
}
