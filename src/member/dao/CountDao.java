package member.dao;

import member.vo.CountVO;

public interface CountDao {
	void countUpdate();
	CountVO todaycount();
	CountVO maxcount();
	CountVO allcount();
}
