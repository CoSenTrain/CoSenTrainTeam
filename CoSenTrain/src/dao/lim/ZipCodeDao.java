package dao.lim;

import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.lim.ZipCode;

public class ZipCodeDao {
	private static SqlMapClient sqlMapper = util.lim.ServiceUtil.getSqlMap();
	
	public static List<ZipCode> getZipCode(){
		try {
			return (List<ZipCode>)sqlMapper.queryForList("zipcode.getZipCode");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
		
	}
	public static List<ZipCode> selectZipCode(String dong){
		try {
			return (List<ZipCode>)sqlMapper.queryForList("zipcode.selectZipCode",dong);
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
		
		
	}
	
	public static ZipCode getZip(){
		try {
			return (ZipCode)sqlMapper.queryForObject("zipcode.getZip");			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
		
	}
	
	
}
