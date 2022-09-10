class MethodOverloadingSimple {
    public static void main(String[] args)
    {
        System.out.println(new A().foo(1, 2, true));
    }
}
class A
{
	public int foo(int n, int m, boolean k)
	{
		return 1;
	}
	public int bar()
	{
		A a;
		a = new A();
		return a.foo(4, 6, true);
	}
}

class B extends A
{
	public int foo(int n, boolean k, int m, int l)
	{
		return 5;
	}
	public int bar2()
	{
		B b;
		b = new B();
		return b.foo(4, true, 6, 8);
	}
}
