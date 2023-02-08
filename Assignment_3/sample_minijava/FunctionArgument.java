class FunctionArgument {
    public static void main(String[] args) {
        System.out.println(new TestItOut().theTest(
            new TestItOut().giveMe1(
                new TestItOut().giveMe1(
                    new TestItOut().theRealTest(4, 5)
                )
            )
        ));
    }
}

class TestItOut {
    public int giveMe0(int dummy) {
        return 0;
    }

    public int giveMe1(int dummy) {
        return (dummy+1);
    }

    public int theRealTest(int val1, int val2) {
        return (val1 + val2);
    }

    public int theTest(int dummy) {
        return this.theRealTest(this.giveMe1(this.giveMe0(this.giveMe1(14))), this.giveMe1(dummy));
    }
}
