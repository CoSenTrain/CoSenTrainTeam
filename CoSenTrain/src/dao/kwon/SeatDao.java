package dao.kwon;

import java.io.Closeable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.kwon.Seat;

public class SeatDao {
	private final static SeatDao instance = new SeatDao();
	private SqlSessionFactory sqlSessionFactory;

	//constructor
	private SeatDao() {
		sqlSessionFactory = SqlSessionFactoryMgr.getSqlSessionFactory();
	}
	
	//getInstance()
	public static SeatDao getInstance() {
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
	
	public int getRunningNo(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getRunningNo", map);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<Seat> getCarNoList(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("getCarNoList", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<Seat> getSeatList(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("getSeatList", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<Integer> getBookedSeats(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			map.put("runningNo", getRunningNo(map));
			return sqlSession.selectList("getBookedSeats", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
}
