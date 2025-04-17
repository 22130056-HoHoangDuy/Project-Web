package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.login;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Version;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.FacebookUser;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Users;

import java.io.IOException;

public class RestFB {
    public static String getToken(final String code) throws ClientProtocolException, IOException {
        String link = String.format(ConstantsFacebook.FACEBOOK_LINK_GET_TOKEN, ConstantsFacebook.FACEBOOK_APP_ID, ConstantsFacebook.FACEBOOK_APP_SECRET, ConstantsFacebook.FACEBOOK_REDIRECT_URL, code);
        String response = Request.Get(link).execute().returnContent().asString();
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static FacebookUser getUserInfo(String accessToken) {
        FacebookClient facebookClient = new DefaultFacebookClient(accessToken, ConstantsFacebook.FACEBOOK_APP_SECRET, Version.LATEST);
        String response = facebookClient.fetchObject("me", String.class);
        System.out.println("Response JSON: " + response);
        response = decodeUnicode(response);
        return new Gson().fromJson(response, FacebookUser.class);
    }

    private static String decodeUnicode(String str) {
        StringBuilder out = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            char c = str.charAt(i++);
            if (c == '\\' && i < str.length() && str.charAt(i) == 'u') {
                int val = Integer.parseInt(str.substring(i + 1, i + 5), 16);
                out.append((char) val);
                i += 5;
            } else {
                out.append(c);
            }
        }
        return out.toString();
    }
}
