package servlet;

import bo.BoFactory;
import bo.custom.UserBo;
import com.google.gson.Gson;
import dto.UserDto;
import dto.request.RequestUserDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    private UserBo userBo = BoFactory.getInstance().getBo(BoFactory.BoTYPE.USER);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestUserDto d = new Gson().fromJson(req.getReader(),RequestUserDto.class);
        UserDto userDto = new UserDto(
                d.getEmail(),
                d.getFirst_name(),
                d.getLast_name(),
                d.getContact(),
                d.getPassword(),
                true
        );
        System.out.println(d);
        System.out.println(d.getFirst_name()+" "+d.getLast_name());
        try{
            if(userBo.createUser(userDto)){
                resp.getWriter().println("<h1>Saved</h1>");
            }else{
                resp.getWriter().println("<h1>Not Saved</h1>");
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }

    }
}
