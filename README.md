# Network Programming with C/C++

This software contains a simple client and server program written by using C/C++ socket programming. The aim is to provide a functional demonstartion of the socket API function calls `socket()`, `bind()`, `connect()`, `listen()`, `accept`, `send()` and `recv()`.

Clone the directory to get started. Issuing the command `make` should produce two binaries: server and client, respectively. 

```
./build/server
```

run the server and

```
./build/client
```

runs the client. Issuing the the commands in this order should give the following output for the server

```
Server is running
Hello from client
```

and 

```
Hello message sent
Hello from server
```
for the client.

You may want to inspect the packet exchange using `tcpdump`. Example:
```
$ sudo tcpdump -i lo src port 9001 -n

11:03:43.043309 IP 127.0.0.1.9001 > 127.0.0.1.34480: Flags [S.], seq 3587490196, ack 3158623795, win 65483, options [mss 65495,sackOK,TS val 2260310467 ecr 2260310467,nop,wscale 7], length 0
11:03:43.043394 IP 127.0.0.1.9001 > 127.0.0.1.34480: Flags [.], ack 18, win 512, options [nop,nop,TS val 2260310467 ecr 2260310467], length 0
11:03:43.043551 IP 127.0.0.1.9001 > 127.0.0.1.34480: Flags [P.], seq 1:18, ack 18, win 512, options [nop,nop,TS val 2260310467 ecr 2260310467], length 17
11:03:43.043802 IP 127.0.0.1.9001 > 127.0.0.1.34480: Flags [F.], seq 18, ack 19, win 512, options [nop,nop,TS val 2260310467 ecr 2260310467], lenght 0
```


### Tip to use screen for demonstration in a single terminal
For a class room demonstration I use the `screen` program that allows me to split the terminal windows horizontally (or vertically). 
I subsequently run the server and the client in different windows. The essential key strokes to control screen are:

- Use CTRL-a S to split the pane horizontally (or CTRL-a | to split vertically)
- Use CTRL-a TAB to toogle between panes
- Use CTRL-a c to create a session with a command prompt in the current pane
- Use CTRL-a d to detach a screen from the TTY and put it in the background
- Use CTRL-a X will close the pane that has focus.

To simplify the prompt I use: ```PS1='$ '```.

See [Tom Lee (dot co)'s blog: GNU Screen splitting](https://tomlee.co/2011/10/gnu-screen-splitting/) for additional tips on how to use screen.

Alternativelt, [tmux](https://tmuxcheatsheet.com/) can be used.


[comment]: <> (## Repository structure and makefile)

[//]: (https://hiltmon.com/blog/2013/07/03/a-simple-c-plus-plus-project-structure/)

[//]: (http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/)
