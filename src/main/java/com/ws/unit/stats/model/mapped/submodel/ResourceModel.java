package com.ws.unit.stats.model.mapped.submodel;

public class ResourceModel {

    private int food;
    private int wood;
    private int iron;

    public void addResources(ResourceModel resToAdd) {
        this.food += resToAdd.food;
        this.wood += resToAdd.wood;
        this.iron += resToAdd.iron;
    }

    public int getFood() {
        return food;
    }

    public void setFood(int food) {
        this.food = food;
    }

    public int getWood() {
        return wood;
    }

    public void setWood(int wood) {
        this.wood = wood;
    }

    public int getIron() {
        return iron;
    }

    public void setIron(int iron) {
        this.iron = iron;
    }

    @Override
    public String toString() {
        return "ResourceModel{" +
                "food=" + food +
                ", wood=" + wood +
                ", iron=" + iron +
                '}';
    }
}
