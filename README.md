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


[comment]: <> (## Repository structure and makefile)

[//]: (https://hiltmon.com/blog/2013/07/03/a-simple-c-plus-plus-project-structure/)

[//]: (http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/)
