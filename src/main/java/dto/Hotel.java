package dto;

import lombok.*;

import java.sql.Blob;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Hotel {
    private String id;
    private String hotelName;
    private int starCount;
    private String address;
    private String activeState;
    private String location;
    private String destination;
    private String type;
    private Blob img;
}
