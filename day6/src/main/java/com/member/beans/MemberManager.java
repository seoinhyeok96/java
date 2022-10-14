package com.member.beans;

import java.util.ArrayList;

//import beans.Member;
public class MemberManager {
    ArrayList<MemberBean> m1= new ArrayList<>();
    
    //멤버 추가하는 메소드
    public void add(MemberBean member) {
        m1.add(member);
     }
       
    public ArrayList<MemberBean>getList(){
        return m1;
    }
}
