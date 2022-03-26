package problems;
import java.util.HashMap;
import java.util.Scanner;

public class ManyDuplicate {
    public static void main(String[] args) {

        int n;  
        Scanner scan =new Scanner(System.in);  
        System.out.print("Enter the number of elements you want to store: ");  
        //reading the number of elements from the that we want to enter  
        n=scan.nextInt();  
        //creates an array in the memory of length 10  
        int[] array = new int[n];  
        System.out.println("Enter the elements of the array: ");  
        for(int i=0; i<n; i++)  
        {  
        //reading array elements from the user   
        array[i]=scan.nextInt();  
        }  
 
        HashMap<Integer,Integer> num = new HashMap<Integer,Integer>();
        for(Integer i: array) {
            if (num.containsKey(i)) num.put(i, num.get(i)+1);
            else num.put(i, 1);
        }
        System.out.println("HashMap:" + num);
    }
    
}
