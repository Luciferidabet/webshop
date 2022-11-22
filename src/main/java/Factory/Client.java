/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Factory;

/**
 *
 * @author khanh
 */
public class Client {
     public static void main(String[] args) {
        Category category = CategoryFactory.getCategory(CategoryType.CAKES);
        System.out.println(category.getCategoryID());
    }
}
