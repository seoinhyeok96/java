package for_whlie;

public class break_00 {

	public static void main(String[] args) {
		while(true) {
			int sum = (int) (Math.random()*6)+1;
			System.out.println(sum);
			if(sum==6) {
				break;
			}
		}
		System.out.println("프로그램 종료");
	}

}
