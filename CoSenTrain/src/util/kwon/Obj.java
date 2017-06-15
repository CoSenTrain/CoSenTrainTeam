package util.kwon;

public class Obj {
	public static boolean isStrNull(String str) {
		return (str==null || str.trim().length()==0 || str.trim().toLowerCase().equals("null"));
	}
}
