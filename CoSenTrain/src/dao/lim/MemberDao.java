package dao.lim;

import java.io.Closeable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

 
import bean.lim.Members;

public class MemberDao {
	private final static MemberDao instance = new MemberDao();
	private SqlSessionFactory sqlSessionFactory;

	private MemberDao() {
		sqlSessionFactory = SqlSessionFactoryUser.getSqlSessionFactory();
	}
    
	public static MemberDao getInstance(){
		return instance;
	}
	
	private void closeSqlSession(Closeable c) {
		try {
			if(c != null) c.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	 
	public List<Members> getMembers() throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("getMembers");
			
		} catch (Exception e) {
		     e.printStackTrace();
		     return null;
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
		
	}
	
	public Integer getNumber() throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getNumber");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
	}

	public void insertMember(Members member) throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertMember", member);
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public void modifyMember(Members member) throws Exception{
		SqlSession sqlSession  = null;
		try {
			sqlSession= sqlSessionFactory.openSession();
			sqlSession.update("modifyMember", member);
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
			
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
	}
	
	public void modifypwWeb(Members member) throws Exception{
		SqlSession sqlSession  = null;
		try {
			sqlSession= sqlSessionFactory.openSession();
			sqlSession.update("modifypwWeb", member);
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
			
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
	}
	
	public void modifypwTicketing(Members member) throws Exception{
		SqlSession sqlSession  = null;
		try {
			sqlSession= sqlSessionFactory.openSession();
			sqlSession.update("modifypwTicketing", member);
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
			
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
	}
	
	public void deleteMember(Members member) throws Exception{
		SqlSession sqlSession  = null;
		try {
			sqlSession= sqlSessionFactory.openSession();
			sqlSession.update("deleteMember", member);
			sqlSession.commit();
			
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
			
			// TODO: handle exception
		}finally {
			closeSqlSession(sqlSession);
		}
		
		
	}

}