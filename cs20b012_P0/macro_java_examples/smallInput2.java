#defineExpr arg(xyz, y, z, w, a, b) (((xyz*w) + (y-z)) + (a+b))
class Example {
    public static void main( String [] a) {
        System.out.println(arg(1, 2,3, 4,5, 6)); // 1*4 + 2-3 + 5+6
    }
}