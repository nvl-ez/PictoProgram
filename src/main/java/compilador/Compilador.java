package compilador;

import compiler.lexic.Scanner;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;

/**
 *
 * @author nahu
 */
public class Compilador {

    public static void main(String[] args) {
        String filePath = "testtext.txt";

        try {
            // Use FileInputStream and InputStreamReader to handle Unicode (UTF-8)
            BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), StandardCharsets.UTF_8));

            // Create the JFlex-generated Scanner and pass the reader
            Scanner scanner = new Scanner(reader);
                
            // Scan tokens until EOF
            while (!scanner.yyatEOF()) {
                // Call the scanner to retrieve the next token
                int token = scanner.yylex();  // Advances to the next token

                // Check if a token was returned (non-EOF)
                if (token != 0) {
                    System.out.println("Token: " + scanner.yytext());  // Print the matched token
                }
            }

            reader.close();  // Close the file after reading
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
