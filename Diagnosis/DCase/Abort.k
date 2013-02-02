// written by Joseph

import("Syntax.ShellStyle");

void main() {
	String filename = "CheckNIC.ds";
//	String host = "www.google.com";
//	String s = $(cat "${filename}");
//	System.p(s);
//	String ping = $(ping "${host}" -c 3);
//	System.p(ping);
	String test = $(minikonoha ChekcNIC.ds);
//	String test = $(minikonoha "${filename}");
	System.p(test);

}

main();
