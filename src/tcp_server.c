// Server side C/C++ program to demonstrate socket programming
#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>

#define PORT 9001    // Predefined port number 
#define buflen 1024  // Set buffer length

int main(int argc, char const *argv[])
{
    int server_fd, new_socket, valread;
    struct sockaddr_in address;
    int opt = 1;
    int addrlen = sizeof(address); 
    char buffer[buflen] = {0};
    char *hello = "Hello from server";

    // Creating socket file descriptor
    if ((server_fd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == 0)   // protocol = 0 means select default
    {
        perror("socket failed");
        exit(EXIT_FAILURE);
    }

    // Create socket and make it reusable
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt)))
    {
        perror("setsockopt failed");
        exit(EXIT_FAILURE);
    }

    // Configure the sockaddr_in struct
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons( PORT );

    // Bind server to a sockaddr_in e.g., and IP address and a port
    if (bind(server_fd, (struct sockaddr *)&address, sizeof(address))<0)
    {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }

    // Listen to the socket
    if (listen(server_fd, 3) < 0)   // maximum length for the queue of pending connections is set to 3
    {
        perror("listen");
        exit(EXIT_FAILURE);
    }
    printf("Server is running.\n");

    // Accepting a connection
    if ((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t*)&addrlen))<0)
    {
        perror("accept");
        exit(EXIT_FAILURE);
    }

    // Receive data from the connection
    valread = recv(new_socket, buffer, buflen, 0);
    printf("%s\n", buffer);

    // Send data on the connection
    send(new_socket , hello , strlen(hello) , 0 );

    return 0;
}
