package dao.kwon;

import java.io.Closeable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.kwon.Discount;

public class CarDao {
	private final static CarDao instance = new CarDao();
	private SqlSessionFactory sqlSessionFactory;

	//constructor
	private CarDao() {
		sqlSessionFactory = SqlSessionFactoryMgr.getSqlSessionFactory();
	}
	
	//getInstance()
	public static CarDao getInstance() {
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
	
	public List<String> selectCarTypes() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectCarTypes");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public static void main(String[] args) {
		System.out.println(instance.selectCarTypes());
	}
}