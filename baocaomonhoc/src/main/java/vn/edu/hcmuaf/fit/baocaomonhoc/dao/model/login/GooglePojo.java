package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.login;

public class GooglePojo {
    private String id;
    private String email;
    private boolean verified_email;
    private String name;
    private String given_name;
    private String family_name;
    private String link;
    private String picture;

    public String getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public boolean isVerified_email() {
        return verified_email;
    }

    public String getName() {
        return name;
    }

    public String getGiven_name() {
        return given_name;
    }

    public String getFamily_name() {
        return family_name;
    }

    public String getLink() {
        return link;
    }

    public String getPicture() {
        return picture;
    }
}
