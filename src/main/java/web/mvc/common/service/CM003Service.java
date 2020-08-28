package web.mvc.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.Transactional;
import web.mvc.common.dao.CM003Dao;
import web.mvc.common.domain.CM003Param;

public class CM003Service {
	@Autowired
	private CM003Dao dao;

	@Autowired
	BCryptPasswordEncoder encoder;

	public String findId(CM003Param param) {
		String result = dao.findId(param);
		if(result == null) {
			return "";
		}
		return result;
	}


	public long findPass(CM003Param param) {
		Long userSeq = dao.findPass(param);
		if(userSeq == null) {
			return 0;
		}
		return userSeq;
	}

	public String generateOTP() {
		String otp = "";
		for(int i = 0; i < 6; i++) {
			int random = (int)(Math.random()*100);

			if(letterList.validLetter(random)) {
				otp += Character.toString((char)random);
			} else {
				i--;
			}
		}
		return otp;
	}

	@Transactional
	public void updatePassword(long userSeq, String password) {
		password = encoder.encode(password);
		dao.updatePassword(userSeq, password);
	}




	private enum  letterList{
		/*	아스키 코드 값 목록
			1번째, 2번째 모두 포함
			예)
			A : 65
			Z : 90
			65 <= BIG_ALPHA <= 90
		 */
		BIG_ALPHA(65, 90),
		SMALL_ALPHA(97, 122),
		NUMBERS(48, 57);

		private int min;
		private int max;

		private static boolean validLetter(int ascii) {
				if(ascii >= BIG_ALPHA.min && ascii <= BIG_ALPHA.max) {
					return true;
				} else if(ascii >= SMALL_ALPHA.min && ascii <= SMALL_ALPHA.max) {
					return true;
				}
				else if(ascii >= NUMBERS.min && ascii <= NUMBERS.max) {
					return true;
				} else {
					return false;
				}
		}


		letterList(int min, int max) {
			this.min = min;
			this.max = max;
		}
	}
}

