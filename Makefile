#Author: Gabrielle Dement
#File: Makefile
#Date Created: 02/21/2026
#Last Modified: 02/21/2026
#Purpose: Builds the employee management system

#Compiler being used
CC = g++

#Name of final executable
TARGET = employee

#Compile flags with all errors and warnings
CFLAGS = -c -Wall -Wextra

#Default target
all: $(TARGET)

#Link object files
$(TARGET): main.o Employee.o Officer.o Supervisor.o
	$(CC) -g main.o Employee.o Officer.o Supervisor.o -o $(TARGET)

#Compiles .o's:

main.o: main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) main.cpp

Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) Employee.cpp

Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) Officer.cpp

Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) Supervisor.cpp

#Removes object files, emacs backups, and the exe
clean:
	$(RM) $(TARGET) *.o *~
