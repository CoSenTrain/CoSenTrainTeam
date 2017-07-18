package dao.lee;

import java.io.Closeable;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.lee.AreaGraphBean;
import bean.lee.TimeGraphBean;
import dao.lee.SqlSessionFactoryMgr;

public class GraphDao {
	private final static GraphDao instance = new GraphDao();
	private SqlSessionFactory sqlSessionFactory;

	//constructor
	private GraphDao() {
		sqlSessionFactory = SqlSessionFactoryMgr.getSqlSessionFactory();
	}
	
	//getInstance()
	public static GraphDao getInstance() {
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
	
	public List<TimeGraphBean> selectGraphStartTime() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectGraphStartTime");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<TimeGraphBean> selectGraphArriveTime() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectGraphArriveTime");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	
	
	public List<AreaGraphBean> selectGraphSrc() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectGraphSrc");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<AreaGraphBean> selectGraphDest() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectGraphDest");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	

}