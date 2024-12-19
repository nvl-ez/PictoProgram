@echo off

set lexDir=C:\Users\nahu\Documents\NetBeansProjects\Compilador\src\main\java\front\lexic\
set lexFile=MyLexic.jflex
set lexDirFile=%lexDir%%lexFile%

set sinDir=C:\Users\nahu\Documents\NetBeansProjects\Compilador\src\main\java\front\sintactic\
set sinFile=MySintactic.cup
set sinFileDir=%sinDir%%sinFile%

del %lexDir%*.java
del %sinDir%*.java

echo RUNNING JFlex---------------------------------------------
cd C:\Users\nahu\Documents\NetBeansProjects\Compilador\utils\JFlex\bin
java -Xmx128m -jar C:\Users\nahu\Documents\NetBeansProjects\Compilador\utils\JFlex\lib\jflex-full-1.9.1.jar %lexDirFile%
echo RUNNING CUP-----------------------------------------------
cd C:\Users\nahu\Documents\NetBeansProjects\Compilador\utils\Cup
java -jar java-cup-11b.jar %sinFileDir%

move C:\Users\nahu\Documents\NetBeansProjects\Compilador\utils\Cup\*.java %sinDir%

pause