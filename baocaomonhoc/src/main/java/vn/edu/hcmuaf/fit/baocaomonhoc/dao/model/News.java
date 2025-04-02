package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model;

public class News {
    private int newsId;
    private String newsName;
    private String newsDescription;

    public News() {
    }

    public News(int newsId, String newsTitle, String newsDescription) {
        this.newsId = newsId;
        this.newsName = newsName;
        this.newsDescription = newsDescription;
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsName;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsName = newsName;
    }

    public String getNewsDescription() {
        return newsDescription;
    }

    public void setNewsDescription(String newsDescription) {
        this.newsDescription = newsDescription;
    }

    @Override
    public String toString() {
        return "News{" +
                "newsId=" + newsId +
                ", newsTitle='" + newsName + '\'' +
                ", newsDescription='" + newsDescription + '\'' +
                '}';
    }
}
