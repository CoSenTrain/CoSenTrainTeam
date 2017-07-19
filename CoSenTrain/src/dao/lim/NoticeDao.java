package dao.lim;

import java.io.Closeable;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.lim.Notice;

public class NoticeDao {
	private final static NoticeDao instance = new NoticeDao();
	private SqlSessionFactory sqlSessionFactory;

	public NoticeDao() {
		super();
		sqlSessionFactory = SqlSessionFactoryUser.getSqlSessionFactory();
	}

	public static NoticeDao getInstance() {
		return instance;
	}

	private void closeSqlSession(Closeable c) {
		try {
			if(c != null) c.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
  
	public Integer getNoticeNumber() throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getNoticeNumber");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
	}
	
	public void insertNotice(Notice notice) throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertNotice", notice);
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public List<Notice> getNotice(HashMap<String, Object>map) throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("getNotice",map);
			
		} catch (Exception e) {
		     e.printStackTrace();
		     return null;
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
		
	}
	public Integer getTotalRow(HashMap<String, Object>map) throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getTotalRow", map);
			
		} catch (Exception e) {
			 e.printStackTrace();
		     return null;
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
	}
	
	
	public Notice getOneNotice(int no) throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getOneNotice", no);
			
		} catch (Exception e) {
			 e.printStackTrace();
		     return null;
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
	}
	
	
}
