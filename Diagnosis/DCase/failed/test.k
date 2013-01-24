
import("Syntax.ShellStyle");

void test() {
	String str = $(ls);
	System.p(str);

	String res = $(cat test.k);
	System.p(res);

	String hoge = "test.k";
	String res = $(cat "${hoge}");
	System.p(res);
}
test();
