package servlet;

import bo.BoFactory;
import bo.custom.UserBo;
import com.google.gson.Gson;
import dto.UserDto;
import dto.request.RequestLoginDto;
import dto.request.RequestUserDto;
import dto.response.StandardResponse;
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
        if(req.getParameter("type").equals("signup")) {
            RequestUserDto d = new Gson().fromJson(req.getReader(), RequestUserDto.class);
            UserDto userDto = new UserDto(
                    d.getEmail(),
                    d.getFirst_name(),
                    d.getLast_name(),
                    d.getContact(),
                    d.getPassword(),
                    true
            );
            resp.setContentType("application/json");
            String jsonObj = "";
            try {
                if (userBo.createUser(userDto)) {
                    jsonObj = new Gson().toJson(
                            new StandardResponse(201, "user saved", null)
                    );
                    resp.getWriter().write(jsonObj);
                } else {
                    jsonObj = new Gson().toJson(
                            new StandardResponse(500, "Internal Server Error", null)
                    );
                    resp.getWriter().write(jsonObj);
                }
            } catch (Exception e) {
                jsonObj = new Gson().toJson(
                        new StandardResponse(500, e.getMessage(), e)
                );
                resp.getWriter().write(jsonObj);
            }
        }else{
            resp.setContentType("application/json");
            String jsoObj="";
            RequestLoginDto d =
                    new Gson().fromJson(req.getReader(), RequestLoginDto.class);
            try{
                jsoObj=new Gson().toJson(
                        new StandardResponse(200,"Successful",
                                userBo.login(d.getEmail(),d.getPassword()))
                );
                resp.getWriter().println(jsoObj);
            }catch (Exception e){
                e.printStackTrace();
                jsoObj=new Gson().toJson(
                        new StandardResponse(500,e.getMessage(),e)
                );
                resp.getWriter().write(jsoObj);
            }
        }
    }
}
