package pack.model;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.UserBean;

@Repository
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDaoInter{
	
	@Autowired
	public UserDaoImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}

	@Override
	public Boolean insertUser(UserBean bean) {
		int re = getSqlSession().insert("insertUser", bean);
		if (re == 1) return true;
		else return false; 
	}
	
	@Override
	public UserDto selectUser(String user_id) {
		return getSqlSession().selectOne("selectUser", user_id);
	}
	
	@Override
	public Boolean updateUser(UserBean bean) {
		int re = getSqlSession().update("updateUser", bean);
		if(re==1) return true;
		else return false; 
	}
}
