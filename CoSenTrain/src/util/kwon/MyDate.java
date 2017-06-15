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
			return "일";
		case 2:
			return "월";
		case 3:
			return "화";
		case 4:
			return "수";
		case 5:
			return "목";
		case 6:
			return "금";
		case 7:
			return "토";
		default:
			return null;
		}
	}
}
