package thomas.spring.security;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class LoginController {

    @GetMapping("/login")
    public String login(){
/*        org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter a;*/
        return "login";
    }

}
