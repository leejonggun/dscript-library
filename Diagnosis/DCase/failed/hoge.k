
import("Syntax.ShellStyle");

void test() {
	String str = "./hoge.k";
	System.p(str);
	String res = $(cat "{str}");
}

test();
