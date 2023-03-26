import org.antlr.v4.runtime.*;
import java.io.File;
import java.io.IOException;

import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
import org.antlr.v4.runtime.tree.TerminalNode;
import org.antlr.v4.runtime.tree.xpath.XPath;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File("src/main/java/sample.sol");
        CharStream stream = CharStreams.fromPath(file.toPath());
        SolidityLexer lexer = new SolidityLexer(stream);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        SolidityParser parser = new SolidityParser(tokens);

        SolidityParser.SourceUnitContext sourceUnitContext = parser.sourceUnit();
        System.out.println(sourceUnitContext.getText());
    }
}
