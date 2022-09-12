import java.util.Scanner;

public class BitStuffing {
    //Note: this program is made in consideration of flag '01111110' may not work for other flags
    public static  void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter size of data stream: ");
        int size = input.nextInt();
        char[] inArr = new char[size];
        for(int i=0;i<inArr.length;i++) {
            inArr[i] = input.next().charAt(0);
        }
        int k=5;
        System.out.print("Before: ");
        System.out.println(bitStuffing(inArr,k));
    }
    static char[] bitStuffing(char[] inArr,int k) {
        char [] outArr = new char[inArr.length+(inArr.length/k)];
        boolean[] deFraming = new boolean[inArr.length+(inArr.length/k)];
        int i=0;
        int j=0;
        int count=0;
        while(i<outArr.length) {
            if(j==inArr.length) {
                break;
            }
            if(inArr[j]=='1') {
                ++count;
            }
            else {
                count=0;
            }
            if(count==k) {
                outArr[i]='0';
                deFraming[i]=true;
                count=0;
                ++i;
            }
            else {
                outArr[i]=inArr[j];
                ++i;
                ++j;
            }
        }
        System.out.println(deStuffing(outArr, deFraming,k));
        System.out.print("After: ");
        return outArr;
    }
    static char[] deStuffing(char[] outArr,boolean[] deFraming,int k) {
        char[] inArr = new char[(outArr.length+1)-(outArr.length/k)];
        int i=0;
        int j= 0;
        while(i<deFraming.length) {
            if(j==inArr.length) {
                break;
            }
            if(deFraming[i]==false) {
                inArr[j] = outArr[i];
                i++;
                j++;
            }
            else {
                i++;
            }
        }
        return inArr;
    }
}