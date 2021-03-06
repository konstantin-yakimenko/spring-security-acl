package org.krams.tutorial.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.krams.tutorial.domain.PersonalPost;
import org.krams.tutorial.domain.Post;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service for processing Personal related posts. 
 * <p>
 * For a complete reference to Spring JDBC and JdbcTemplate
 * see http://static.springsource.org/spring/docs/3.0.x/spring-framework-reference/html/jdbc.html
 * <p>
 * For transactions, see http://static.springsource.org/spring/docs/3.0.x/spring-framework-reference/html/transaction.html
 */
@Service("personalService")
@Transactional
public class PersonalService implements GenericService {

	protected static Logger logger = Logger.getLogger("service");

	// We'll be calling SQL statements. SimpleJdbcTemplate is a perfect tool.
	private JdbcTemplate jdbcTemplate;
	
	@Resource(name="dataSource")
	public void setDataSource(DataSource dataSource) {
		System.out.println("YakimKY - PersonalService - dataSource = " + dataSource);
	    this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public Post getSingle(Long id) {
		try {
			logger.debug("Retrieving single personal post");
			
			// Prepare SQL statement
			String sql = "select id, date, message from personal_post where id = ?";
			
			// Assign values to parameters
			Object[] parameters = new Object[] {id};
			
			// Map SQL result to a Java object
			RowMapper<Post> mapper = new RowMapper<Post>() {  
		        public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
		        	Post post = new PersonalPost();
		        	post.setId(rs.getLong("id"));
		        	post.setDate(rs.getDate("date"));
		        	post.setMessage(rs.getString("message"));
		            return post;
		        }
		    };
		    
		    // Run query then return result
		    return jdbcTemplate.queryForObject(sql, mapper, parameters);
		
		} catch (Exception e) {
			logger.error(e);
			return null;
		}	
	}
	
	public List<Post> getAll() {
		logger.debug("Retrieving all personal posts");
		
		// Prepare the SQL statement
		String sql = "select id, date, message from personal_post";
		
		// Map SQL result to a Java object
		RowMapper<Post> mapper = new RowMapper<Post>() {  
	        public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
	        	Post post = new PersonalPost();
	        	post.setId(rs.getLong("id"));
	        	post.setDate(rs.getDate("date"));
	        	post.setMessage(rs.getString("message"));
	            return post;
	        }
	    };
		
		// Run query then return result
		return jdbcTemplate.query(sql, mapper);	
	}
	
	public Boolean add(Post post)  {
		try {
			logger.debug("Adding new post");
	
			// Prepare SQL statement
			String sql = "insert into personal_post(date, message) values " +
					"(:date, :message)";
			
			// Assign values to parameters
			Map<String, Object> parameters = new HashMap<String, Object>();
			parameters.put("date", post.getDate());
			parameters.put("message", post.getMessage());
			
			// Save
			jdbcTemplate.update(sql, parameters);
			
			// Return
			return true;
			
		} catch (Exception e) {
			logger.error(e);
			return false;
		}	
	}
	
	public Boolean edit(Post post)  {
		try {
			logger.debug("Adding new post");
	
			// Prepare our SQL statement
			String sql = "update personal_post set date = :date, " +
					"message = :message where id = :id";
			
			// Assign values to parameters
			Map<String, Object> parameters = new HashMap<String, Object>();
			parameters.put("id", post.getId());
			parameters.put("date", post.getDate());
			parameters.put("message", post.getMessage());
			
			// Save
			jdbcTemplate.update(sql, parameters);
			
			// Return
			return true;
			
		} catch (Exception e) {
			logger.error(e);
			return false;
		}		
	}

	public Boolean delete(Post post)  {
		try {
			logger.debug("Deleting existing post");
			
			// Prepare our SQL statement
			String sql = "delete from personal_post where id = ?";
			
			// Assign values to parameters
			Object[] parameters = new Object[] {post.getId()};
			
			// Delete
			jdbcTemplate.update(sql, parameters);
	
			// Return
			return true;
			
		} catch (Exception e) {
			logger.error(e);
			return false;
		}	
	}
	
}