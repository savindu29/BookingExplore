package dto.response;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data
public class LoginResponseDto {
    String fullName;
    String email;
    String token;
}
