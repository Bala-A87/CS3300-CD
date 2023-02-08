class WhileLoop {
    public static void main(String[] args) {
        System.out.println(new RunWhileLoop().loop(12 - 3));
    }
}

class RunWhileLoop {
    int[] forward;
    int[] backward;

    public int loop(int lim) {
        boolean temp;
        
        temp = this.init(lim);
        temp = this.print();
        return 0;
    }

    public boolean init(int lim) {
        int i;

        i=0;
        // System.out.println(123456789);
        // System.out.println(lim);
        forward = new int[lim];
        // System.out.println(forward.length);
        backward = new int[lim];
        // System.out.println(backward.length);
        while((i <= lim) && (i != lim)) {
            forward[i] = i;
            backward[i] = lim-i;
            i = i+1;
        }
        return true;
    }

    public boolean print() {
        int i;
        int j;

        i=0;
        while((i <= (forward.length)) && (i != (forward.length))) {
            System.out.println(forward[i]);
            i = i+1;
        }
        j=0;
        while((j <= (backward.length)) && (j != (backward.length))) {
            System.out.println(backward[j]);
            j = j+1;
        }
        return true;
    }
}
