class test {
    public static void main(String[] a){
        System.out.println(new lol().huh());
        }
}
 
class lol {
    int[] arr;
    wut hmm;
    public int huh() {
        hmm = new wut();
        arr = new int[10];

        arr[0] = hmm.huh();
        return arr[0];
    }
}

class wut {
    public int huh() {
        return 1;
    }
}