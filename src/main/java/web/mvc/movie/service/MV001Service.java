package web.mvc.movie.service;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.HashMap;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import org.springframework.beans.factory.annotation.Autowired;

public class MV001Service {

	public HashMap<Object, String> getBox() throws Exception {
		String key = "edc7a42549392b27e20386b83958389d";
		SimpleDateFormat dateFmt = new SimpleDateFormat("yyyyMM");
		Date time = new Date();
		int day = time.getDate() - 1;
		String targetDt = dateFmt.format(time) + day;
		KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
		HashMap<String, String> parameter = new HashMap<String, String>();
		parameter.put("targetDt", targetDt);
		String dailyResponse = service.getDailyBoxOffice(true, parameter);
		ObjectMapper mapper = new ObjectMapper();
		HashMap<Object, String> dailyResult = mapper.readValue(dailyResponse, HashMap.class);
		return dailyResult;
	}
}
