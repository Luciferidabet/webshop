/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Factory;

/**
 *
 * @author khanh
 */
public class CategoryFactory {
    private CategoryFactory(){
        
    }
    
    public static final Category getCategory(CategoryType categoryType){
        switch(categoryType){
            case CAKES:
                return new Cakes();
            case BREADS:
                return new Breads();
            case CAFEANDBEVERAGE:
                return new CafeandBeverage();
            default:
                throw new IllegalArgumentException("This category type is unsupported");
        }
    }
            
}
