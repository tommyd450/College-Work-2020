public class Product {

    private String productName;
    private int productCode;
    private double unitCost;
    boolean inCurrentProductLine;

    Product(String productName, int productCode,double unitCost,boolean inCurrentProductLine)
    {
        this.productName=productName;
        this.productCode=productCode;
        this.unitCost=unitCost;
        this.inCurrentProductLine=inCurrentProductLine;
    }

    //getters//

    public String getProductName(){
        return productName;
    }

    public int getProductCode(){
        return productCode;
    }

    public double getUnitCost(){
        return unitCost;
    }

    public boolean getInCurrentProductLine(){
        return inCurrentProductLine;
    }

    //--//Setters//--//


    public void setProductName(String productName){
        this.productName=productName;
    }

    public void setProductCode(int productCode){
        this.productCode=productCode;
    }

    public void setUnitCost(double unitCost){
        this.unitCost=unitCost;
    }

    public void setInCurrentProductLine(boolean inCurrentProductLine){
        this.inCurrentProductLine=inCurrentProductLine;
    }

    public String toString(){
        return "Description" + productName
                +", Unit Cost" +unitCost
                + "Product Code"+ productCode
                +"In stock"+ inCurrentProductLine;

    }


}
