package com.sdh.domain;

public class FavoriteMovie {
    private Integer uid;
    private Integer mid;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    @Override
    public String toString() {
        return "FavoriteMovie{" +
                "uid=" + uid +
                ", mid=" + mid +
                '}';
    }
}
