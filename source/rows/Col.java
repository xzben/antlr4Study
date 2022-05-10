import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

import java.io.FileInputStream;
import java.io.InputStream;

public class Col{
	public static void main(String[] args) throws Exception{
		InputStream is = System.in;
		ANTLRInputStream input = new ANTLRInputStream(is);
		RowsLexer lexer = new RowsLexer(input);
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		int col = Integer.valueOf(args[0]);
		RowsParser parser = new RowsParser(tokens, col);

		parser.setBuildParseTree(false);
		parser.file();
		System.out.println();
	}
}