antlr4 -no-listener Row.g4
javac *.java
java Col 1 < t.rows
java Col 2 < t.rows
java Col 3 < t.rows