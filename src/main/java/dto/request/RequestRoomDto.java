package dto.request;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data
public class RequestRoomDto {
    private String type;
    private boolean deals;
    private String description;
    private int hotel;
    private double cost;

}
