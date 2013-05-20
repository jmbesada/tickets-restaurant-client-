package com.qwi.ticketsRestaurant;

import org.apache.cordova.DroidGap;

import android.os.Bundle;

public class MainApp extends DroidGap {

	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		this.loadUrl("file:///android_asset/www/index.html");    
	}

}
