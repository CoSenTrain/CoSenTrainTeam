package dao.kwon;

import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.kwon.TktingSchedule;
import util.kwon.ServiceUtil;

public class TicketingDao {
	private static SqlMapClient sqlMapper = ServiceUtil.getSqlMap();
	
	public static List<TktingSchedule> selectSchedule(Map<String, Object> map) {
		try {
			return (List<TktingSchedule>) sqlMapper.queryForList("tkt.selectSchedule", map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static List<String> selectStationsOrdered(boolean asc) {
		try {
			return (List<String>) sqlMapper.queryForList("tkt.selectStationsOrdered", (asc ? "ASC" : "DESC"));
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static List<TktingSchedule> getTSchedule(Map<String, Object> map) {
		try {
			return (List<TktingSchedule>) sqlMapper.queryForList("tkt.getTSchedule", map);
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
