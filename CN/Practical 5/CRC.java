import java.util.*;
public class CRC {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Data: ");
        String data = input.next();

        System.out.print("Divisor: ");
        String divisor = input.next();

        String codeword = data.substring(0,data.length())+remCalculator(data, divisor);
        System.out.println(appending(divisor,data));
        System.out.println(codeword);
    }
    static String appending(String divisor,String data) {
        StringBuilder str = new StringBuilder(data);
        for(int i=0;i<divisor.length()-1;i++) {
            str.append("0");
        }
        return str.toString();
    }
    static String xor(String divisor,String divident) {
        StringBuilder str = new StringBuilder();
        for(int i =0;i<divisor.length();i++) {
            if(divisor.charAt(i)==divident.charAt(i)) {
                str.append("0");
            }
            else {
                str.append("1");
            }
        }
        return str.toString();
    }
    static String remCalculator(String dividend,String divisor) {
        int pick = divisor.length();
        int n = dividend.length();
        String temp = xor(divisor,dividend.substring(0,pick));
        while(pick<n) {
            if(temp.charAt(0)=='1') {
                temp = xor(divisor,temp)+dividend.charAt(pick);
            }
            else {
                StringBuilder str = new StringBuilder();
                for(int i=0;i<pick;i++) {
                    str.append('0');
                }
                temp = xor(divisor,str.toString())+dividend.charAt(pick);
            }
            pick++;
        }
        if(temp.charAt(0)=='1') {
            temp = xor(divisor,temp);
        }
        else {
            StringBuilder str = new StringBuilder();
            for(int i=0;i<pick;i++) {
                str.append('0');
            }
            temp = xor(str.toString(),temp);
        }
        return temp;
    }
}