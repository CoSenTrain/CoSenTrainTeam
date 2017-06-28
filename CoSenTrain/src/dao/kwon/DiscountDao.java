package dao.kwon;

import java.io.Closeable;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.kwon.Discount;

public class DiscountDao {
	private final static DiscountDao instance = new DiscountDao();
	private SqlSessionFactory sqlSessionFactory;

	//constructor
	private DiscountDao() {
		sqlSessionFactory = SqlSessionFactoryMgr.getSqlSessionFactory();
	}
	
	//getInstance()
	public static DiscountDao getInstance() {
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
	
	public List<Discount> selectDiscount() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectDiscount");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
}