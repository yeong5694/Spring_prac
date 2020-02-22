package ac.kr.yeong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.validation.Valid;
import ac.kr.yeong.model.Course;
import ac.kr.yeong.model.User;
import ac.kr.yeong.service.CourseService;

@Controller
public class CourseController {
	@Autowired
	private CourseService courseService;
	
	@RequestMapping("/course")
	public String courseSearch(Model model) {
		List<Course> course=courseService.getCourses();
		model.addAttribute("courses", course);
		return "courses";
	}
	
	@RequestMapping("/insertView")
	public String insertView(Model model) {
		model.addAttribute("course", new Course());
		return "insertView";
	}
	
	@RequestMapping("/courseInsert")
	public String courseInsert(Model model,@Valid Course course, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("--web form data doesn't validated--");
			List<ObjectError> errors=result.getAllErrors();
		
			for(ObjectError error : errors) {
				System.out.println(error.getDefaultMessage());
			}
			return "insertView";
		}

		
		courseService.insert(course);
		return "courseInsert";
	}
	
	
}
