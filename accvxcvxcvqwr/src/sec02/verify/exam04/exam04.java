package sec02.verify.exam04;

public class exam04 {

	public static void main(String[] args) {
		int max=0;
		int[]array = {1,5,3,8,2};
		for(int x =0; x<array.length; x++) {
		if(max<array[x]) {
			max=array[x];
		System.out.println("sub:"+max);
		}
		}
		
	}

}
