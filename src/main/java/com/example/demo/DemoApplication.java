package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {
	private static final String MY_SECRET = "47828a8dd77ee1eb9dde2d5e93cb221ce8c32b37";

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
