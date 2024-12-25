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
import utils.ErrorHandler;
import utils.SymbolTable;

/**
 *
 * @author nahu
 */
public class Compilador {

    public static void main(String[] args) {
        String filePath = "program.txt";
        ErrorHandler eh = new ErrorHandler();
        
        try {
            preprocessFile(filePath);
            FileReader input = new FileReader(new File(filePath));
            
            SymbolTable st = new SymbolTable(eh, true);
            
            
            SymbolFactory sf = new ComplexSymbolFactory();
            
            //Set up scanner
            Scanner scanner = new Scanner(input);
            scanner.setErrorHandler(eh);
            
            
            //Set up parser
            Parser parser = new Parser(scanner, sf);
            parser.setSymbolTable(st);
            parser.setErrorHandler(eh);
            
            Node.setSymbolTable(st);
            Node.setErrorHandler(eh);
            
            ThreeAddressCode tac = new ThreeAddressCode();
            Operand.setThreeAddressCode(tac);
            Node.setThreeAddressCode(tac);
            
            parser.parse();
            
            scanner.closeTokenStram();
            

            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        System.out.println(eh.toString());
    }
    
    //Sometimes text edditors add special characters, these cause problems for the lexic.
    public static void preprocessFile(String filePath)throws IOException{
        // Read the file content into a string
            String content = Files.readString(Paths.get(filePath), StandardCharsets.UTF_8);

            // Remove the character \uFE0F
            String updatedContent = content.replace("\uFE0F", "");

            // Write the updated content back to the file
            Files.writeString(Paths.get(filePath), updatedContent, StandardCharsets.UTF_8);
    }
}
