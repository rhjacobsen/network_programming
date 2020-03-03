# Network Programming

This software contains a simple client and server program written by using C/C++ socket programming. The aim is to provide a functional demonstartion of the socket API function calls `socket()`, `bind()`, `connect()`, `listen()`, `accept`, `send()` and `recv()`.

Clone the directory to get started. Issuing the command `make` should produce two binaries: server and client, respectively. 

```
./server
```

run the server and

```
./client
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
I subsequently run the server and the client in different windows. 

. first
. second

For instance use (CTRL-a |) to split the screen vertically, or use CTRL-a S to split the pane horizontally.
Use CTRL-a TAB to toogle between screens.

Press CTRL-a TAB until you’re in the new, blank pane, then press CTRL-a c to create a new window with a command prompt in this pane.

CTRL-a d till detach a screen from the TTY and put it in the background.
CTRL-a X will close the pane that has focus.

See https://tomlee.co/2011/10/gnu-screen-splitting/

## Repository structure

A simple C++ project structure

https://hiltmon.com/blog/2013/07/03/a-simple-c-plus-plus-project-structure/

## Make file

http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/
