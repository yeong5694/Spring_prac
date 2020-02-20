package ac.kr.yeong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ac.kr.yeong.model.Course;
import ac.kr.yeong.model.User;
import ac.kr.yeong.service.CourseService;

@Controller
public class CourseController {
	@Autowired
	private CourseService courseService;
	
	@RequestMapping("/courseSearch")
	public String courseSearch(Model model, @RequestParam("id") String id) {
		List<Course> course=courseService.searchCourses(id);
		model.addAttribute("courses", course);
		return "courses";
	}
}
