package dao.lim;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryUser {
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("dao/lim/Config.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if(reader!=null) reader.close();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
	
	public static void main(String[] args) {
		System.out.println(sqlSessionFactory);
	}
}
