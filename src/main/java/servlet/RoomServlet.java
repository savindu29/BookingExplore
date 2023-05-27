package servlet;

import com.google.gson.Gson;
import dao.CrudUtil;
import dto.Hotel;
import dto.RequestImageDto;
import dto.UserDto;
import dto.request.RequestLoginDto;
import dto.request.RequestRoomDto;
import dto.request.RequestUserDto;
import dto.response.DataResponse;
import dto.response.StandardResponse;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import util.IdGenerator;

import java.io.*;
import java.sql.Blob;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/room")
public class RoomServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("type").equals("room")) {
            RequestRoomDto d = new Gson().fromJson(request.getReader(), RequestRoomDto.class);

            response.setContentType("application/json");
            String jsonObj = "";
            try {
                boolean execute = CrudUtil.execute("INSERT INTO room VALUES (?,?,?,?,?,?) ",
                        IdGenerator.getId(16), d.getType(), d.isDeals(), d.getDescription(), d.getHotel(), d.getCost());
                if (execute){
                    jsonObj = new Gson().toJson(
                            new StandardResponse(201, "Saved!!", null)
                    );
                    response.getWriter().write(jsonObj);
                }else{
                    jsonObj = new Gson().toJson(
                            new StandardResponse(500, "Try Again!!", null)
                    );
                    response.getWriter().write(jsonObj);
                }


            } catch (Exception e) {
                jsonObj = new Gson().toJson(
                        new StandardResponse(500, e.getMessage(), e)
                );
                response.getWriter().write(jsonObj);
            }
        }else{
            RequestImageDto d = new Gson().fromJson(request.getReader(), RequestImageDto.class);
            response.setContentType("application/json");
            FileInputStream fis = new FileInputStream(d.getImage());
            System.out.println(d);
        }
    }
}
