/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ThanhThu
 */
public class News {
    private String new_id;
    private int user_id;
    private String category_id, new_name, 
            description, detail, image, date,name_categories,name_user;

    public News(String new_id, String category_id, int user_id, String new_name, String description, String detail, String image, String date) {
        this.new_id = new_id;
        this.category_id = category_id;
        this.user_id = user_id;
        this.new_name = new_name;
        this.description = description;
        this.detail = detail;
        this.image = image;
        this.date = date;
    }

    public String getName_categories() {
        return name_categories;
    }

    public void setName_categories(String name_categories) {
        this.name_categories = name_categories;
    }

    public String getName_user() {
        return name_user;
    }

    public void setName_user(String name_user) {
        this.name_user = name_user;
    }

    public String getNew_id() {
        return new_id;
    }

    public void setNew_id(String news_id) {
        this.new_id = news_id;
    }

    public String getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getNew_name() {
        return new_name;
    }

    public void setNew_name(String name) {
        this.new_name = new_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
}
