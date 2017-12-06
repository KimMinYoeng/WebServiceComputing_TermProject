package koreatech.cse.repository;


import koreatech.cse.domain.Searchable;
import koreatech.cse.domain.User;
import koreatech.cse.repository.provider.UserSqlProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    @Insert("INSERT INTO USERS (NAME, EMAIL, PASSWORD, AGE) VALUES (#{name}, #{email}, #{password}, #{age})")
    @SelectKey(statement = "SELECT LAST_INSERT_ID()", keyProperty = "id", before = false, resultType = int.class)
    void insert(User user);

    @Update("UPDATE USERS SET NAME = #{name}, EMAIL = #{email}, PASSWORD = #{password}, AGE = #{age} WHERE ID = #{id}")
    void update(User user);

    @Select("SELECT * FROM USERS WHERE ID = #{id}")
    User findOne(@Param("id") int id);

    @Select("SELECT * FROM USERS WHERE EMAIL = #{email}")
    User findByEmail(@Param("email") String email);

    @Select("SELECT * FROM USERS WHERE NAME = #{NAME}")
    User findByName(@Param("name") String name);

    @Select("SELECT * FROM USERS WHERE NAME = #{name}")
    User findByName2(String name);

    @Select("SELECT * FROM USERS WHERE NAME = #{NAME}")
    User findByTitle(@Param("title") String title);

    @Delete("DELETE FROM USERS WHERE ID = #{id}")
    void delete(@Param("id") int id);

    @SelectProvider(type = UserSqlProvider.class, method = "findAllByProvider")
    List<User> findByProvider(Searchable searchable);

    //@formatter off
    @Select("<script>"
            + "SELECT * FROM USERS"
            + "<if test='name != null'> WHERE NAME = #{name}</if>"
            + "<if test='name != null and email != null'> OR EMAIL = #{email}</if>"
            + "<if test='orderParam != null'>ORDER BY ${orderParam} DESC</if>"
            + "</script>")
    //@formatter on
    List<User> findByScript(Searchable searchable);

    //@formatter off
    @Select("<script>"
            + "SELECT * FROM USERS"
            + "<choose>"
            + "<when test='name != null and email != null'> WHERE NAME = #{name} OR EMAIL = #{email}</when>"
            + "<when test='name != null'> WHERE NAME = #{name}</when>"
            + "<otherwise> </otherwise>"
			+ "</choose>"
            + "<if test='orderParam != null'>ORDER BY ${orderParam} DESC</if>"
            + "</script>")
    //@formatter on
    List<User> findByScript2(Searchable searchable);

    //@formatter off
    @Select("<script>"
            + "SELECT * FROM USERS"
            + "<if test='stringList != null and !stringList.empty'> WHERE NAME IN <foreach item='item' collection='stringList' open='(' separator=',' close=')'>#{item}</foreach></if>"
            + "</script>")
    //@formatter on
    List<User> findByList(@Param("stringList") List<String> stringList);
}
