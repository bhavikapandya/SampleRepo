public with sharing class ApexClass1 {
    public Account createAccount(String name)  //method to create account
{
Account acc = new Account();
acc.Name = name;
return acc;
}

}