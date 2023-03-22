package dto.response;


import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data

public class StandardResponse {
   private int code;
   private String message;
   private Object data;

}
