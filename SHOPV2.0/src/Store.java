public class Store {

   private Product[] products;
   private int total;
   private boolean full;
   private boolean empty;
   private boolean add;


   public void ProductArray(int numberitems){
        products = new Product[numberitems];
         total = 0;
   }



   private boolean isFull(){
      return(total == products.length);
   }

   private boolean isEmpty(){

        return (total == 0);

   }

   public boolean add(Product product) {

       if (isFull()) {
           return false;
       } else {
            products[total] = product;
            total++;
            return true;
       }
   }
    public String listProducts(){
       if(isEmpty()){
           return "No products";

       }else{
           String listofProducts = "";
           for(int i = 0; i < numberofitems;i++){
               listofProducts += i + ": "+ products[i] + "\n";
           }
           return listofProducts;
       }
    }


}

