package dto.request;

import lombok.*;

import java.io.File;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data
public class RequestHotelDto {
    private String id;
    private String hotelName;
    private int starCount;
    private String address;
    private String activeState;
    private String location;
    private String destination;
    private String type;
    private File img;

}
