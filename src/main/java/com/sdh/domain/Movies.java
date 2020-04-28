package com.sdh.domain;

/**
 * @author sdh
 * 电影信息类
 */
public class Movies {
    private int movieId;
    private String name;
    private String type;

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Movies{" +
                "movieId=" + movieId +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
