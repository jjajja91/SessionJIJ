package com.codechobo;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;

public class Dao {
	
	private static Dao instance;
	
	public static Dao getInstance() {
		if(instance==null) {
			instance = new Dao();
		}
		return instance;
	}
	
	private HashMap<String, User> userMap = new HashMap<>();
	private HashMap<Integer, Board> boardMap = new HashMap<>();
	{
		boardMap.put(1, new Board(1, "하이", "안녕", "아이디"));
		boardMap.put(2, new Board(2, "하이", "안녕", "아이디"));
		boardMap.put(3, new Board(3, "하이", "안녕", "asdf"));
		boardMap.put(4, new Board(4, "하이", "안녕", "아이디"));
		boardMap.put(5, new Board(5, "하이", "안녕", "asdf"));
		boardMap.put(6, new Board(6, "하이", "안녕", "아이디"));
	}
	private int cnt = 1;
	
	public void create(User user) {
		userMap.put(user.getId(), user);
	}
	
	public boolean checkId(String id) {
		Iterator<String> it = userMap.keySet().iterator();
		while(it.hasNext()) {
			String idTmp = it.next();
			if(idTmp.equals(id)) {
				return true;
			}
		}
		return false;
	}
	
	public void writeBoard(String title, String contents, String name) {
		Board board = new Board(cnt, title, contents, name);
		boardMap.put(cnt++, board);
	}
	
	public void modifyBoard(int num, String title, String contents, String name) {
		Board board = new Board(num, title, contents, name);
		boardMap.put(num, board);
	}
	
	public void deleteBoard(int num) {
		boardMap.remove(num);
	}
	
	public ArrayList<Board> readBoard(){
		ArrayList<Board> boardList = new ArrayList<>();
		boardList.addAll(boardMap.values());
		Comparator<Board> newsort = new Comparator<Board>() {
			
			@Override
			public int compare(Board b1, Board b2) {
				return b1.getNum() - b2.getNum();
			}
		};
		
		Collections.sort(boardList, newsort);
		return boardList;
	}
	
	public Board readBoardOne(String numTmp) {
		int num = Integer.parseInt(numTmp);
		ArrayList<Board> boardList = readBoard();
		return boardList.get(num-1);
	}
	
	public User readOne(String id) {
		if(checkId(id)){
			return userMap.get(id);
		}
		return null;
	}

}
