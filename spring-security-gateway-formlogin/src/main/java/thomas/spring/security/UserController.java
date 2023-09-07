package thomas.spring.security;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/")
    @PreAuthorize("hasAnyRole('USER', 'ADMIN')")
    public String index(){
/*        org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter a;*/
        return "user";
    }

    @RequestMapping("/admin")
    @PreAuthorize("hasAnyRole('ADMIN')")
    public String admin(){
        Object user = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return "admin";
    }
}
