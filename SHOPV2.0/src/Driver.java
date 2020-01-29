import java.util.Scanner;

public class Driver {

    private static Scanner input = new Scanner(System.in);

    public static Store store;
    private static Product product;
    public static void main(String[]args){
        Store store = new Store();
        Driver c = new Driver();

        c.processOrder();
        c.printProduct();
    }

    public void addProduct(){
        //dummy read of String to clear the buffer - bug in Scanner class.
        input.nextLine();
        System.out.print("Enter the Product Name:  ");
        String productName = input.nextLine();
        System.out.print("Enter the Product Code:  ");
        int productCode = input.nextInt();
        System.out.print("Enter the Unit Cost:  ");
        double unitCost = input.nextDouble();
        System.out.print("Is this product in your current line (y/n): ");
        char currentProduct = input.next().charAt(0);
        boolean inCurrentProductLine = false;
        if ((currentProduct == 'y') || (currentProduct == 'Y'))
            inCurrentProductLine = true;

        store.add(new Product(productName, productCode, unitCost, inCurrentProductLine));}

    private void printProduct(){
        System.out.print(store.listProducts());
    }



    private void processOrder(){
        System.out.println("How many products would you like to have in your store?");
        int numberProducts = input.nextInt();

        store = new Store();

        for(int i = 0; i < numberProducts; i++){
            addProduct();
        }
    }
}
