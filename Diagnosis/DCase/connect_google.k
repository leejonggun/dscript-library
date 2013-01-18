//Wrtten by Joseph
/*
   This script is for connect() fault
   run etimedout_client.sh
   */
import("posix.socket");
import("konoha.bytes");
import("dshell");

void test() {
//	destination
	String dstIP = $(gethostip www.google.com).split(" ").get(1);
	System.p(dstIP);
	int dstPort = 10001;
	int dstFamily = AF_INET;
	int dstType = SOCK_STREAM;
	int dstOPT = 0;

//	socket socket(System.socket())
	int sockfd = System.socket(dstFamily, dstType, dstOPT);

//	socket connect(System.connect())
	int ret = System.connect(sockfd, dstIP, dstPort, dstFamily);
	System.p(ret);
	System.close(sockfd);
}

test();
