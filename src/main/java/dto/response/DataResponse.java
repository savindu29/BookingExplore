package dto.response;

import dto.Hotel;
import lombok.*;

import java.util.ArrayList;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data
public class DataResponse {
    private long dataCount;
    private ArrayList<Hotel> hotels;
}
