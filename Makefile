
apr-skeleton: apr-skeleton.c 
	gcc apr-skeleton.c -o apr-skeleton -I/usr/local/apr/include/ -L/usr/local/apr/lib -lapr-1 `pkg-config apr-1 --cflags` 

ABSender: ABSender.c ap_release.h
	gcc ABSender.c ap_release.h -o ABSender -I/usr/local/apr/include/ -L/usr/local/apr/lib -lapr-1 `pkg-config apr-1 --cflags` -laprutil-1 -lm



clean:
	rm ABSender apr-skeleton

