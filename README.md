# pos-java-corba-helloword-example
A simple helloword example using corva and java.

# Steps to Run this Project:

To up the server:
```sh
$ sh up.sh
```

To up a client:
```sh
$ sh up-a-client.sh
```

To down everything:
```sh
$ sh down.sh
```

<b><h4>Or if you prefer, you can do the step one step commands:</h4></b>

1. On this file root project open a terminal and run this commands:

```sh
$ idlj -fall Hello.idl
$ javac *.java HelloApp/*.java
$ orbd -ORBInitialPort 1050 -ORBInitialHost localhost&
$ java HelloServer -ORBInitialPort 1050 -ORBInitialHost localhost&
```
2. Now open a new terminal in the same directory and run this command:

```sh
$ java HelloClient -ORBInitialPort 1050 -ORBInitialHost localhost&
```

3. Now to close and remove all things open a terminal in the same directory and run this commands:

```sh
$ pkill orbd
$ rm *.class
$ rm -R HelloApp
$ rm -R orb.db
```

Obs: 
- All commands are obligatorily executed on "Hello.idl" folder.
- The command "sh down.sh" or "pkill orbd" needs to be executed to open the locked PORT.
