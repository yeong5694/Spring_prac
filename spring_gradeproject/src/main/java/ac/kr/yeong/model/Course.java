package ac.kr.yeong.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor

public class Course {
	private int year;
	private int semester;
	private String c_name;
	private String code;
	private String division;
	private int point;
	private String score;
}
