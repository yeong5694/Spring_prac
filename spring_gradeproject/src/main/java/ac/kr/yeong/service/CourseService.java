package ac.kr.yeong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ac.kr.yeong.dao.CourseDao;
import ac.kr.yeong.model.Course;

@Service
public class CourseService {
	@Autowired
	private CourseDao courseDao;
	
	public List<Course> getCourses(){
		return courseDao.getCourses();
	}
	
	public void insert(Course course){
		courseDao.insert(course);
	}
}
