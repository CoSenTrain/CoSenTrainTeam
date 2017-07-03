package dao.cho;

import java.io.Closeable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.cho.YusilBean;

public class YusilDao {
	private final static YusilDao instance = new YusilDao();
	private SqlSessionFactory sqlSessionFactory;
	
	private YusilDao(){
		sqlSessionFactory = SqlSessionFactoryMgr.getSqlSessionFactory();
	}
	
	public static YusilDao getInstance(){
		return instance;
	}
	private void closeSqlSession(Closeable c) {
		try {
			if(c != null) c.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<YusilBean> selectYusil(){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectYusil");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}

	public List<YusilBean> selectYusilInfo(int no){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectYusilInfo",no);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	/*public Integer selectSeq()throws Exception{
		return sqlSessionFactory.openSession().selectOne("selectSeq");
	}
	*/
}
