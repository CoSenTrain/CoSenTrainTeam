package dao.lim;

import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.lim.Members;
import util.lim.ServiceUtil;

 
public class MemberDao {
	private static SqlMapClient sqlMapper = ServiceUtil.getSqlMap();
	
	public static Integer getNumber() throws Exception{
		return (Integer)sqlMapper.queryForObject("member.getNumber");
	}
	public static void insertMember(Members member) throws Exception{
		sqlMapper.insert("member.insertMember",member);
	}
	
	
}