package com.tube;


public class User {

    private final int user_id;
    private final String user_name,password,email_id,contact_no;

    //User(){
//    id=-1;username="tatyvinchu";password="hahaha";currentBalance=new BigDecimal("34542.3245");
//}
    public User(int user_id, String user_name, String email_id, String password,String contact_no) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.password = password;
        this.email_id=email_id;
        this.contact_no=contact_no;
    }

    public String getEmail_id() {
        return email_id;
    }

    public String getContact_no() {
        return contact_no;
    }

    public int getId() {
        return this.user_id;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public String getPassword() {
        return this.password;
    }


}
