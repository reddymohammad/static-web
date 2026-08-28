class Account{
    Account(){
        System.out.println("Test Class - constructor method - special jilebi");
    }
    public void deposit(){
        System.out.println("deposit - normal method");
    }
    public static void main(String[] args) {
      Account a1=new Account();
      Account a2=new Account();
      Account a3 =new Account();
    }
}
