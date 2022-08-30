package mamori05;

import java.util.Scanner;

public class rainisback {

	public static void main(String[] args) {
		boolean run = true ;
		int studentNum = 0;
		int[] scores = null ;
		Scanner sc = new Scanner(System.in);
		
		while(run) {
			System.out.println("---------------------------------------------");
			System.out.println("1.학생수| 2. 점수입력 | 3.점수리스트 |4. 분석 | 5.종료 ");
			System.out.println("--------------------------------------------");
			System.out.println("선택> ");
			int selectNo = Integer.parseInt(sc.nextLine());
			
			if(selectNo == 1) {
				System.out.println("학생수> ");
				studentNum = Integer.parseInt(sc.nextLine());
				scores = new int[studentNum];
			} else if(selectNo == 2) {
				for (int i =0 ; i <scores.length; i++) {
					System.out.print("scores["+i+"]> ");
				scores[i]= Integer.parseInt(sc.nextLine());
				
				}
					
				}
			}
			
		}
		

	}

}
