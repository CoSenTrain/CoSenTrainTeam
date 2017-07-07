package dao.kwon;

import java.io.Closeable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.kwon.Discount;
import bean.kwon.SeatCarTrain;

public class SeatCarTrainDao {
	private final static SeatCarTrainDao instance = new SeatCarTrainDao();
	private SqlSessionFactory sqlSessionFactory;

	//constructor
	private SeatCarTrainDao() {
		sqlSessionFactory = SqlSessionFactoryMgr.getSqlSessionFactory();
	}
	
	//getInstance()
	public static SeatCarTrainDao getInstance() {
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
	
	public int getMinCarNo(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getMinCarNo", map);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<Integer> selectCars(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectCars", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<SeatCarTrain> selectSeatCarTrain(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectSeatCarTrain", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public static void main(String[] args) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("trainNo", 2);
		map.put("tType", "cosen");
		map.put("carNo", instance.getMinCarNo(map));
		System.out.println(instance.selectCars(map));
		System.out.println(instance.selectSeatCarTrain(map));
	}
}
