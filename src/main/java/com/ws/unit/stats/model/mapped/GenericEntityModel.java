package com.ws.unit.stats.model.mapped;

import com.ws.unit.stats.model.mapped.submodel.ResourceModel;

public abstract class GenericEntityModel {

    protected int persistenceId;

    protected int gameId;
    protected String name;
    protected String imageUrl;
    protected String nation;
    protected String type; // replace with tags that will be created after model init
    protected ResourceModel creationCost;

    public int getPersistenceId() {
        return persistenceId;
    }

    public void setPersistenceId(int persistenceId) {
        this.persistenceId = persistenceId;
    }

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public ResourceModel getCreationCost() {
        return creationCost;
    }

    public void setCreationCost(ResourceModel creationCost) {
        this.creationCost = creationCost;
    }

    @Override
    public String toString() {
        return "GenericEntityModel{" +
                "persistenceId=" + persistenceId +
                ", gameId=" + gameId +
                ", name='" + name + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", nation='" + nation + '\'' +
                ", type='" + type + '\'' +
                ", creationCost=" + creationCost +
                '}';
    }
}
