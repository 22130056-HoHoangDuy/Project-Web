package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.login;

public class ConstantsFacebook {
    public static String FACEBOOK_APP_ID = "1387595732415859";
    public static String FACEBOOK_APP_SECRET = "9cf97d51a7a996756c20c21b06976b60";
    public static String FACEBOOK_REDIRECT_URL = "http://localhost:8080/baocaomonhoc_war/loginFacebook";
    public static String FACEBOOK_LINK_GET_TOKEN = "https://graph.facebook.com/oauth/access_token?client_id=%s&client_secret=%s&redirect_uri=%s&code=%s";
}
