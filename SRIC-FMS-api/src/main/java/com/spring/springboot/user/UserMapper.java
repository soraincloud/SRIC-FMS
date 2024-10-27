package com.spring.springboot.user;

import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * 对 data_user 数据库的操作层
 */

@Mapper
public interface UserMapper
{
    /**
     * @author SRIC
     *
     * 获取 user 数据列表
     */
    @Select(value = "SELECT * FROM `data_user`")
    List<User> getUserList();

    /**
     * @author SRIC
     *
     * 获取 user 数据列表 分页
     */
    @Select(value = "SELECT * FROM `data_user` LIMIT #{limitBefore}, #{limitSize}")
    List<User> getUserManageList(UserManageListRequestPojo userManageListRequest);

    /**
     * @author SRIC
     *
     * 获取 user 数据列表总数
     */
    @Select(value = "SELECT COUNT(*) FROM `data_user`")
    int getUserManageCount();

    /**
     * @author SRIC
     *
     * 根据 uuid 修改 username
     */
    @Update(value = "UPDATE `data_user` SET USERNAME = #{username} WHERE uuid = #{uuid}")
    int updateUsernameByUuid(@Param("uuid") String uuid, @Param("username") String username);

    /**
     * @author SRIC
     *
     * 根据 uuid 修改 password
     */
    @Update(value = "UPDATE `data_user` SET PASSWORD = #{password} WHERE uuid = #{uuid}")
    int updatePasswordByUuid(@Param("uuid") String uuid, @Param("password") String password);

    /**
     * @author SRIC
     *
     * 根据 username 获取 user 数据
     */
    @Select(value = "SELECT * FROM `data_user` WHERE USERNAME = #{username}")
    User getUserByUsername(@Param("username") String username);

    /**
     * @author SRIC
     *
     * 根据 uuid 获取 user 数据
     */
    @Select(value = "SELECT * FROM `data_user` WHERE uuid = #{uuid}")
    User getUserByUuid(@Param("uuid") String uuid);

    /**
     * @author SRIC
     *
     * 根据 mail 获取 user 数据
     */
    @Select(value = "SELECT * FROM `data_user` WHERE MAIL = #{mail}")
    User getUserByMail(@Param("mail") String mail);

    /**
     * @author SRIC
     *
     * 添加一条 user 数据
     */
    @Insert(value = "INSERT INTO `data_user` (uuid, UID, username, password, mail, createtime, avatar, mark, status) VALUES(UUID(),null,#{username},#{password},#{mail},NOW(),null,null,null)")
    int insertUser(SignUpRequestPojo signUpRequest);
}
