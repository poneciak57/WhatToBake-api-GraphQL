package com.whattobake.Api.Model;

import com.whattobake.Api.Enum.Role;
import lombok.*;
import org.springframework.data.annotation.Id;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class User {
    @Id
    private Long id;
    private String username;
    private String password;
    private boolean enabled;
    private String roles;

    public User(String username,String password,boolean enabled,List<Role> roles) {
        this.username = username;
        this.password = password;
        this.enabled = enabled;
        setRoles(roles);
    }

    public List<Role> getRolesArray(){
        return Stream.concat(
                Arrays.stream(roles.split(",")).map(Role::valueOf)
                ,Stream.of(Role.ROLE_USER))
                .collect(Collectors.toList());
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles.stream()
                .map(String::valueOf)
                .collect(Collectors.joining(","));
    }
}
