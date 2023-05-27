
package servlet;

import com.google.gson.Gson;
import dao.CrudUtil;
import dto.Hotel;
import dto.RequestImageDto;
import dto.UserDto;
import dto.request.RequestHotelDto;
import dto.request.RequestLoginDto;
import dto.request.RequestRoomDto;
import dto.request.RequestUserDto;
import dto.response.DataResponse;
import dto.response.StandardResponse;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import util.HotelIdGenerator;
import util.IdGenerator;

import java.io.*;
import java.sql.Blob;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.io.IOException;

@WebServlet("/hotel")
public class HotelServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("type") != null && request.getParameter("type").equals("list")) {
            try {
                String location = "%" + request.getParameter("location") + "%";
                ResultSet set = CrudUtil.execute("SELECT * FROM Hotel WHERE location LIKE ?", location);

                ArrayList<Hotel> hotelsList = new ArrayList<>();
                while (set.next()) {
                    Hotel h = new Hotel(
                            set.getString(1),
                            set.getString(2),
                            set.getInt(3),
                            set.getString(4),
                            set.getString(5),
                            set.getString(6),
                            set.getString(7),
                            set.getString(8),
                            set.getBlob(9)
                    );
                    hotelsList.add(h);
                }

                if (request.getParameter("img") != null && request.getParameter("id") != null) {
                    String id = request.getParameter("id");
                    Hotel hotel = hotelsList.stream()
                            .filter(h -> h.getId().equals(id))
                            .findFirst()
                            .orElse(null);

                    if (hotel != null && hotel.getImg() != null) {
                        Blob blob = hotel.getImg();
                        response.setContentType("image/jpeg/png/jpg");
                        response.setContentLength((int) blob.length());
                        InputStream inputStream = blob.getBinaryStream();
                        OutputStream outputStream = response.getOutputStream();
                        byte[] buffer = new byte[4096];
                        int bytesRead = -1;
                        while ((bytesRead = inputStream.read(buffer)) != -1) {
                            outputStream.write(buffer, 0, bytesRead);
                        }
                        inputStream.close();
                        outputStream.flush();
                        outputStream.close();
                        return;
                    }
                }

                DataResponse resp = new DataResponse(
                        hotelsList.size(),
                        hotelsList
                );

                String jsoObj = new Gson().toJson(
                        new StandardResponse(200, "data!", resp)
                );
                response.getWriter().write(jsoObj);

            } catch (Exception e) {
                String jsoObj = new Gson().toJson(
                        new StandardResponse(500, e.getMessage(), e)
                );
                response.getWriter().write(jsoObj);
            }
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("type").equals("hotel")) {
            BufferedReader reader = request.getReader();
            Gson gson = new Gson();
            PrintWriter writer = response.getWriter();
            response.setContentType("application/json");
            String jsonObj = "";

            try {
                RequestHotelDto hotelDto = gson.fromJson(reader, RequestHotelDto.class);
                System.out.println(hotelDto.toString());

                boolean execute = CrudUtil.execute("INSERT INTO hotel VALUES (?,?,?,?,?,?,?,?,?) ",
                        HotelIdGenerator.getId(8), hotelDto.getHotelName(), hotelDto.getStarCount(),
                        hotelDto.getAddress(), hotelDto.getActiveState(), hotelDto.getLocation(),
                        hotelDto.getDestination(), hotelDto.getType(), hotelDto.getImg());

                if (execute) {
                    jsonObj = gson.toJson(new StandardResponse(201, "Saved!!", null));
                    writer.write(jsonObj);
                } else {
                    jsonObj = gson.toJson(new StandardResponse(500, "Try Again!!", null));
                    writer.write(jsonObj);
                }
            } catch (Exception e) {
                jsonObj = gson.toJson(new StandardResponse(500, e.getMessage(), e));
                writer.write(jsonObj);
            }
        }
    }

}
