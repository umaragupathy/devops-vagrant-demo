package com.demo.respository;


import com.demo.respository.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User,Long>{
    public User findByEmail(String email);
}
