package com.codechobo;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Board {
	
	private int num;
	private String title;
	private String contents;
	private String name;
	private String time;

	
	Board(int num, String title, String contents, String name){
		this.num = num;
		this.title = title;
		this.contents = contents;
		this.name = name;
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy / MM / dd / HH:mm:ss");
		time = sdf.format(cal.getTime());
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}

	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}
	
	
}
