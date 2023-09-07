package thomas.spring.security;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/")
    public String index(){
/*        org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter a;*/
        return "index";
    }

    @RequestMapping("/info")
    public String info(){
        return "user info";
    }
}
