package ac.kr.yeong.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import ac.kr.yeong.model.Course;

@Repository
public class CourseDao {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate=new JdbcTemplate(dataSource);
	}
	
	public List<Course> getCourses(String id){
		String sqlStatement="select *from course"; //나중에 id 추가하기
		return jdbcTemplate.query(sqlStatement,  new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
				Course course =new Course();
				course.setC_name(rs.getString("c_name"));
				course.setCode(rs.getString("code"));
				course.setDivision(rs.getString("division"));
				course.setPoint(rs.getInt("point"));
				course.setScore(rs.getString("Score"));
				course.setYear(rs.getInt("year"));
				course.setSemester(rs.getInt("semester"));
				return course;
			}
			
		});
	}
}
