package web.module.date.web;

public class dateController {
	public String dateFmt(String date) {//YYYYMMDDHHMMSS를 YY.MM.DD.HH.MM으로 반환
		String year = date.substring(2, 4) + "-";
		String month = date.substring(4, 6) + "-";
		String day = date.substring(6, 8) + " ";
		String hour = date.substring(8, 10) + ":";
		String min = date.substring(10, 12);
		String result = year + month + day + hour + min;
		return result;
	}
}
