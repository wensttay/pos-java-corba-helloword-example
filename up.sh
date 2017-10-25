idlj -fall Hello.idl
javac *.java HelloApp/*.java
orbd -ORBInitialPort 1050 -ORBInitialHost localhost&
sleep 5
java HelloServer -ORBInitialPort 1050 -ORBInitialHost localhost&