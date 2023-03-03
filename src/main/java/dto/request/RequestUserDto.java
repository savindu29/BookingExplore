package dto.request;

public class RequestUserDto {
    private String email;
    private String fist_name;
    private String last_name;
    private String contact;
    private String password;

    public RequestUserDto(String email, String fist_name, String last_name, String contact, String password) {
        this.email = email;
        this.fist_name = fist_name;
        this.last_name = last_name;
        this.contact = contact;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFname() {
        return fist_name;
    }

    public void setFname(String fist_name) {
        this.fist_name = fist_name;
    }

    public String getLname() {
        return last_name;
    }

    public void setLname(String last_name) {
        this.last_name = last_name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "UserDto{" +
                "email='" + email + '\'' +
                ", fist_name='" + fist_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", contact='" + contact + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
