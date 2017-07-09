package dao.lim;

import org.apache.ibatis.session.SqlSessionFactory;

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

}
