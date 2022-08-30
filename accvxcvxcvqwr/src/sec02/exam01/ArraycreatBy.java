package sec02.exam01;

public class ArraycreatBy {

	public static void main(String[] args) {
		int []Scores = {83,90,87,88,46};
		int sum=0;
		for(int i =0;i<6;i++) {
			sum+= Scores[i];
		}
		
		System.out.println("총합:"+sum);
		double avg=(double)sum/5;
		System.out.println("평균:"+avg);

	}

}
