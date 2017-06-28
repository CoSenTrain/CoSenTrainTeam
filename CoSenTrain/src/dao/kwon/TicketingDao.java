package dao.kwon;

import java.io.Closeable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.kwon.TktingSchedule;

public class TicketingDao {
	private final static TicketingDao instance = new TicketingDao();
	private SqlSessionFactory sqlSessionFactory;

	//constructor
	private TicketingDao() {
		sqlSessionFactory = SqlSessionFactoryMgr.getSqlSessionFactory();
	}
	
	//getInstance()
	public static TicketingDao getInstance() {
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
	
	public List<TktingSchedule> selectSchedule(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectSchedule", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<String> selectStationsOrdered(boolean asc) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("order", (asc ? "ASC" : "DESC"));
			return sqlSession.selectList("selectStationsOrdered", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<TktingSchedule> getTSchedule(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("getTSchedule", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public int getRountFare(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getRountFare", map);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}	
}
