package dto.response;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data
public class RoomDto {
//    private String id;
    private String type;
    private boolean deals;
    private String description;
    private int hotel;
    private double cost;

}
