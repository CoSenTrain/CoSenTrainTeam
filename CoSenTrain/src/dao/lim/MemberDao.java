package dao.lim;

import java.io.Closeable;

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
	 

}