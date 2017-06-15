package util.kwon;

import java.util.Calendar;

public class MyDate {
	public static String KorDayOfWeek(String yyyy, String mm, String dd) {
		try {
			return KorDayOfWeek(Integer.valueOf(yyyy.trim()), Integer.valueOf(mm.trim()), Integer.valueOf(dd.trim()));
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return null;
		}
	}
	public static String KorDayOfWeek(int yyyy, int mm, int dd) {
		Calendar cal = Calendar.getInstance();
		cal.set(yyyy, mm, dd);
		switch (cal.get(Calendar.DAY_OF_WEEK)) {
		case 1:
			return "��";
		case 2:
			return "��";
		case 3:
			return "ȭ";
		case 4:
			return "��";
		case 5:
			return "��";
		case 6:
			return "��";
		case 7:
			return "��";
		default:
			return null;
		}
	}
}
