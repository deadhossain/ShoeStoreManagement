/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectdead;

public class Item {
    
    private String code;
    private String name;
    private int size;
    private int unitprice;
    private int quantity;
    
    public Item(String Code, String Name, int Size, int Unitprice, int Quantity)
    {
        this.code = Code;
        this.name = Name;
        this.size = Size;
        this.unitprice = Unitprice;
        this.quantity = Quantity;
    }
    
    
    public String getCode()
    {
        return code;
    }
    
    public String getName()
    {
        return name;
    }
    
    public int getSize()
    {
        return size;
    }
    
    public int getUnitprice()
    {
        return unitprice;
    }
    
    public int getQuantity()
    {
        return quantity;
    }
}