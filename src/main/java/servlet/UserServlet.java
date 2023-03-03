package servlet;

import com.google.gson.Gson;
import dto.request.RequestUserDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestUserDto requestUserDto = new Gson().fromJson(req.getReader(),RequestUserDto.class);
        System.out.println(requestUserDto);
    }
}
