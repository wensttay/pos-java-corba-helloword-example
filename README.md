# pos-java-corba-helloword-example
A simple helloword example using corva and java.

# Steps to Run this Project:
1. On this file root project open a terminal and run this commands:
```sh
idlj -fall Hello.idl
javac *.java HelloApp/*.java
orbd -ORBInitialPort 1050 -ORBInitialHost localhost&

```
2. Now open a new terminal in the same directory and run this command:
```sh
java HelloClient -ORBInitialPort 1050 -ORBInitialHost localhost&
```

Obs: All commands are obligatorily executed on "Hello.idl" folder.
