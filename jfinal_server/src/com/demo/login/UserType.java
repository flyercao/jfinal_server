package com.demo.login;

public enum UserType {
	Customer("Customer"),Merchant("Merchant"),Other("Other");
	private final String value;
	private UserType(String s){
		this.value=s;
	}
}
