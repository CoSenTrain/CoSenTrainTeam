package dao.kwon;

import java.io.Closeable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.kwon.Users;

public class UsersDao {
	private final static UsersDao instance = new UsersDao();
	private SqlSessionFactory sqlSessionFactory;

	//constructor
	private UsersDao() {
		sqlSessionFactory = SqlSessionFactoryMgr.getSqlSessionFactory();
	}
	
	//getInstance()
	public static UsersDao getInstance() {
		return instance;
	}
	
	//close
	private void closeSqlSession(Closeable c) {
		try {
			if(c != null) c.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public synchronized int getNextval() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getUserNextval");
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<Users> selectUsers(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectUsers", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}

	public Users signUserIn(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("signUserIn", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public void insertNoneUserRequireNo(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();

			Users user = new Users();
			user.setUserNo(Integer.valueOf(String.valueOf(map.get("userNo")))); 
			user.setName(String.valueOf(map.get("name")));
			user.setPwTicketing(Integer.valueOf(String.valueOf(map.get("pwTicketing"))));
			user.setEmail(String.valueOf(map.get("email")));
			user.setEmailRecivable(String.valueOf(map.get("emailRecivable")));
			user.setPhone(String.valueOf(map.get("phone")));
			user.setUserType(String.valueOf(map.get("userType")));
			
			int rs = sqlSession.insert("insertNoneUserRequireNo", user);
			rs += sqlSession.insert("insertPointRequireNo", map);
			if(rs > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
}