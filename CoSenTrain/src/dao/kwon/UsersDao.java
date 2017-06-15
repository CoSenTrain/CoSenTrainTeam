package dao.kwon;

import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.kwon.Users;
import util.kwon.ServiceUtil;

public class UsersDao {
	private static SqlMapClient sqlMapper = ServiceUtil.getSqlMap();
	
	public static List<Users> selectUsers(Map<String, Object> map) {
		try {
			return (List<Users>) sqlMapper.queryForList("users.selectUsers", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static Users signUserIn(Map<String, Object> map) {
		try {
			return (Users) sqlMapper.queryForObject("users.signUserIn", map);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return null;
		}
	}
}