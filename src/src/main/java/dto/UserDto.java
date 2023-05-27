package dto;

public class UserDto {
    private String email;
    private String first_name;
    private String last_name;
    private String contact;
    private String password;



    private boolean activeState;

    public UserDto(String email, String first_name, String last_name, String contact, String password, boolean activeState) {
        this.email = email;
        this.first_name = first_name;
        this.last_name = last_name;
        this.contact = contact;
        this.password = password;
        this.activeState = activeState;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
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
    public boolean isActiveState() {
        return activeState;
    }

    public void setActiveState(boolean activeState) {
        this.activeState = activeState;
    }
    @Override
    public String toString() {
        return "UserDto{" +
                "email='" + email + '\'' +
                ", first_name='" + first_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", contact='" + contact + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
