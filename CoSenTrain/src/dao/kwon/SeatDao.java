package dao.kwon;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.kwon.BookingInfo;
import bean.kwon.Seat;

public class SeatDao {
	private final static SeatDao instance = new SeatDao();
	private SqlSessionFactory sqlSessionFactory;

	//constructor
	private SeatDao() {
		sqlSessionFactory = SqlSessionFactoryMgr.getSqlSessionFactory();
	}
	
	//getInstance()
	public static SeatDao getInstance() {
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
	
	public int getRunningNo(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getRunningNo", map);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<Seat> getCarNoList(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("getCarNoList", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public List<Seat> getSeatList(Map<String, Object> map) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("getSeatList", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {			
			closeSqlSession(sqlSession);
		}
	}
	
	public String getSelectedSeatNames(List<BookingInfo> bookingList) {
		StringBuffer sb = new StringBuffer();
		
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			for (int i = 0; i < bookingList.size(); i++) {
				Object o = sqlSession.selectOne("getSelectedSeatName", bookingList.get(i).getSeatNo());
				sb.append(String.valueOf(o));
				if(i < bookingList.size() - 1) {
					sb.append(", ");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {			
			closeSqlSession(sqlSession);
		}
		
		sb.trimToSize();
		return sb.toString();
	}
	
	public List<String> getSelectedSeatAsList(List<BookingInfo> bookingList) {
		List<String> list = new ArrayList<String>();
		
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			for (int i = 0; i < bookingList.size(); i++) {
				Object o = sqlSession.selectOne("getSelectedSeatName", bookingList.get(i).getSeatNo());
				list.add(String.valueOf(o));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {			
			closeSqlSession(sqlSession);
		}
		
		return list;
	}
	
//	public List<Integer> getBookedSeats(Map<String, Object> map) {
//		SqlSession sqlSession = null;
//		try {
//			sqlSession = sqlSessionFactory.openSession();
//			map.put("runningNo", getRunningNo(map));
//			return sqlSession.selectList("getBookedSeats", map);
//		} catch (Exception e) {
//			e.printStackTrace();
//			return null;
//		} finally {			
//			closeSqlSession(sqlSession);
//		}
//	}
}
