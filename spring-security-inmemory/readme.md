

# filter chain
## by default 
2023-07-30T11:05:49.681+08:00  INFO 35092 --- [           main] o.s.s.web.DefaultSecurityFilterChain     : Will secure any request with [
org.springframework.security.web.session.DisableEncodeUrlFilter@20d33ea, 
org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@73613ae5, 
org.springframework.security.web.context.SecurityContextHolderFilter@5b40de43, 
org.springframework.security.web.header.HeaderWriterFilter@1526f71, 
org.springframework.security.web.csrf.CsrfFilter@65e22def, 
org.springframework.security.web.authentication.logout.LogoutFilter@7c369270, 
org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter@2fd72332, 
org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter@77c3c037, 
org.springframework.security.web.authentication.ui.DefaultLogoutPageGeneratingFilter@5a13fcf3, 
org.springframework.security.web.authentication.www.BasicAuthenticationFilter@2bbb44da, 
org.springframework.security.web.savedrequest.RequestCacheAwareFilter@5489b1f7, 
org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@51bddd98, 
org.springframework.security.web.authentication.AnonymousAuthenticationFilter@250b5e5b, 
org.springframework.security.web.access.ExceptionTranslationFilter@9c93d16, 
org.springframework.security.web.access.intercept.AuthorizationFilter@16da476c]

## form login 
2023-07-30T16:41:58.540+08:00  INFO 33488 --- [           main] o.s.s.web.DefaultSecurityFilterChain     : Will secure any request with [
org.springframework.security.web.session.DisableEncodeUrlFilter@2e766822, 
org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@3003e580, 
org.springframework.security.web.context.SecurityContextHolderFilter@64f981e2, 
org.springframework.security.web.header.HeaderWriterFilter@257ef9ed, 
org.springframework.security.web.csrf.CsrfFilter@6bccd036, 
org.springframework.security.web.authentication.logout.LogoutFilter@340d6d89, 
org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter@67531e3a, 
org.springframework.security.web.savedrequest.RequestCacheAwareFilter@575b5f7d, 
org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@1fd9893c, 
org.springframework.security.web.authentication.AnonymousAuthenticationFilter@28757abd, 
org.springframework.security.web.access.ExceptionTranslationFilter@17410c07, 
org.springframework.security.web.access.intercept.AuthorizationFilter@13dbed9e]
