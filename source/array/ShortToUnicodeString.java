public class ShortToUnicodeString extends ArrayInitBaseListener{
	public void enterInit(ArrayInitParser.InitContext ctx){
		System.out.print('"');
	}

	public void exitInit(ArrayInitParser.InitContext ctx){
		System.out.print('"');
	}

	public void enterValue(ArrayInitParser.ValueContext ctx){
		int value = Integer.valueOf(ctx.INT().getText());

		System.out.printf("\\u%04x", value);
	}
}