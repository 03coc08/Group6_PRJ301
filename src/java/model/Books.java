/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;

/**
 *
 * @author Nguyen Van Manh
 */
public class Books {
    private int id;
    private String code;
    private String title;
    private String isbn;
    private double price;
    private int stockQty;
    private int minStock;
    private String coverUrl;
    private String description;
    private String status;
    private int categoryId;
    private int publisherId;
    private int version;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public Books() {
    }

    public Books(int id, String code, String title, String isbn, double price, int stockQty, int minStock, String coverUrl, String description, String status, int categoryId, int publisherId, int version, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.code = code;
        this.title = title;
        this.isbn = isbn;
        this.price = price;
        this.stockQty = stockQty;
        this.minStock = minStock;
        this.coverUrl = coverUrl;
        this.description = description;
        this.status = status;
        this.categoryId = categoryId;
        this.publisherId = publisherId;
        this.version = version;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStockQty() {
        return stockQty;
    }

    public void setStockQty(int stockQty) {
        this.stockQty = stockQty;
    }

    public int getMinStock() {
        return minStock;
    }

    public void setMinStock(int minStock) {
        this.minStock = minStock;
    }

    public String getCoverUrl() {
        return coverUrl;
    }

    public void setCoverUrl(String coverUrl) {
        this.coverUrl = coverUrl;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getPublisherId() {
        return publisherId;
    }

    public void setPublisherId(int publisherId) {
        this.publisherId = publisherId;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "Books{" + "id=" + id + ", code=" + code + ", title=" + title + ", isbn=" + isbn + ", price=" + price + ", stockQty=" + stockQty + ", minStock=" + minStock + ", coverUrl=" + coverUrl + ", description=" + description + ", status=" + status + ", categoryId=" + categoryId + ", publisherId=" + publisherId + ", version=" + version + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + '}';
    }
    
}
