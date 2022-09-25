import java.util.*;
public class BitStuffing {
    public static  void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Data stream: ");
        String data = input.next();
        System.out.println("Stuffed Bit: "+bitStuffing(data));
    }
    static String bitStuffing(String data) {
        String outStr="";
        int i=0,count=0;
        while(i<data.length()) {
            outStr+=Character.toString(data.charAt(i));
            if(data.charAt(i)=='1') {
                count++;
            }
            else {
                count=0;
            }
            if(count==5) {
                outStr+="0";
                count=0;
            }
            i++;
        }
        return outStr;
    }
}