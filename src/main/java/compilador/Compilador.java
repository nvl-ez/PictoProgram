package compilador;

import front.lexic.Scanner;
import front.sintactic.Parser;
import intermediateCode.Operand;
import intermediateCode.ThreeAddressCode;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java_cup.runtime.ComplexSymbolFactory;
import java_cup.runtime.SymbolFactory;
import nodes.Node;
import optimizer.Optimizer;
import utils.ErrorHandler;
import utils.SymbolTable;

/**
 *
 * @author nahu
 */
public class Compilador {

    public static void main(String[] args) {
        /*---------------------------------------------------\
        |   PROGRAMS THAT WILL COMPILE                       |                         
        |----------------------------------------------------| 
        |   IOTest.txt
        |
        |
        |
         */
        String filePath = "IOTest.txt";
        ErrorHandler eh = new ErrorHandler();

        try {
            preprocessFile(filePath);
            FileReader input = new FileReader(new File(filePath));

            SymbolTable st = new SymbolTable(eh, true);

            //Set up scanner
            SymbolFactory sf = new ComplexSymbolFactory();
            Scanner scanner = new Scanner(input);
            scanner.setErrorHandler(eh);

            //Set up parser
            Parser parser = new Parser(scanner, sf);
            parser.setSymbolTable(st);
            parser.setErrorHandler(eh);
            
            ThreeAddressCode tac = new ThreeAddressCode();
            
            //Set static references to other modules
            Node.setSymbolTable(st);
            Node.setErrorHandler(eh);
            Operand.setThreeAddressCode(tac);
            Node.setThreeAddressCode(tac);
            parser.setThreeAddressCode(tac);

            parser.parse();

            scanner.closeTokenStream();
            
            tac.save(false);

            if (!eh.isErrorFree()) {
                System.out.println(eh.toString());
                System.out.println("The assembly file was not changed.");
            } else {
                System.out.println("Program compiled into \"assembly_optimized.x68\"");
                tac.assemble("assembly");
                Optimizer opt = new Optimizer(tac.getCode(), tac.getVarTable());
                opt.optimize();
                tac.recalculate();
                tac.save(true);
                tac.assemble("assembly_optimized");
            }
            eh.save();

        } catch (Exception e) {
            System.out.println("ERROR: File located at \"" + filePath + "\" was not found");
            e.printStackTrace();
        }
    }

    //Sometimes text edditors add special characters, these cause problems for the lexic.
    public static void preprocessFile(String filePath) throws IOException {
        // Read the file content into a string
        String content = Files.readString(Paths.get(filePath), StandardCharsets.UTF_8);

        // Remove the character \uFE0F
        String updatedContent = content.replace("\uFE0F", "");

        // Write the updated content back to the file
        Files.writeString(Paths.get(filePath), updatedContent, StandardCharsets.UTF_8);
    }
}
