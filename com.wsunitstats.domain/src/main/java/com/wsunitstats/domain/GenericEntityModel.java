package com.wsunitstats.domain;

import jakarta.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class GenericEntityModel extends PersistentObject {
    protected int gameId;
    protected String name;
    protected String imageUrl;
    protected String nation;

    public int getGameId() {
        return gameId;
    }

    public void setGameId(int gameId) {
        this.gameId = gameId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    @Override
    public String toString() {
        return "GenericEntityModel{" +
                "gameId=" + gameId +
                ", name='" + name + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", nation='" + nation + '\'' +
                '}';
    }
}
