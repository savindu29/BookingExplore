package dto;

import lombok.*;

import java.util.ArrayList;
@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Hotel {
    private String id;
    private String name;
    private int star;
    private ArrayList address;
    private boolean activeState;
    private ArrayList location;
    private String destination;
    private String type;

}
