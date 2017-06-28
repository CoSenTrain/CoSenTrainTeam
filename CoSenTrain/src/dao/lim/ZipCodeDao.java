package dao.lim;

import java.io.Closeable;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.lim.ZipCode;

public class ZipCodeDao {
	private final static ZipCodeDao instance = new ZipCodeDao();
	private SqlSessionFactory sqlSessionFactory;
	
	private ZipCodeDao(){
		sqlSessionFactory = SqlSessionFactoryUser.getSqlSessionFactory();
	}
	
	public static ZipCodeDao getInstance(){
		return instance;
	}
	
	private void closeSqlSession(Closeable c){
		try {
			if(c!=null) c.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	
	public List<ZipCode> getZipCode(){
		SqlSession sqlSession =null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("getZipCode");
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
		
	}
	 public List<ZipCode> selectZipCode(String dong){
		 SqlSession sqlSession = null;
		 try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectZipCode", dong); 
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		 
	 }
	public ZipCode getZip() throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getZip");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
	}
	 
	 
	/* 
	
	 
	 
	
	public static ZipCode getZip(){
		try {
			return (ZipCode)sqlMapper.queryForObject("zipcode.getZip");			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
		
	}
	*/
	
}
