package dao.cho;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.cho.YusilBean;
import util.cho.ServiceUtil;

public class YusilDao {
	private static SqlMapClient sqlMapper = ServiceUtil.getSqlMap();
	
	public static List<YusilBean> selectYusil(){
		try {
			return (List<YusilBean>)sqlMapper.queryForList("you.selectYusil");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		System.out.println(selectYusil());
	}

}
