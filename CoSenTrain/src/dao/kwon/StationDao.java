package dao.kwon;

import java.io.Closeable;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.kwon.Station;

public class StationDao {
	private final static StationDao instance = new StationDao();
	private SqlSessionFactory sqlSessionFactory;

	//constructor
	private StationDao() {
		sqlSessionFactory = SqlSessionFactoryMgr.getSqlSessionFactory();
	}
	
	//getInstance()
	public static StationDao getInstance() {
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
	
	public List<Station> selectStations() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectStations");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
}