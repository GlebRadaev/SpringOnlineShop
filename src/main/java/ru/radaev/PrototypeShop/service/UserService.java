package ru.radaev.PrototypeShop.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import ru.radaev.PrototypeShop.domain.User;
import ru.radaev.PrototypeShop.exception.UserAlreadyExistsException;
import ru.radaev.PrototypeShop.exception.UserNotFoundException;
import ru.radaev.PrototypeShop.repository.UserRepository;

import javax.validation.Valid;
import java.util.List;

@Service
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User getUserById(Long id) {
        return userRepository.findById(id).orElseThrow(() -> new UserNotFoundException(id));
    }

    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    public User getLoggedUser() {
        String loggedUserEmail = SecurityContextHolder.getContext().getAuthentication().getName();
        return userRepository.findByEmail(loggedUserEmail).orElseThrow(() -> new UsernameNotFoundException(loggedUserEmail));
    }

    public void saveUser(@Valid User user) {
        userRepository.findByEmail(user.getEmail().toLowerCase()).ifPresent(s -> {
            throw new UserAlreadyExistsException(user.getEmail());
        });

        user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
        userRepository.save(user);
    }

    public void editUser(User user) { // Чтобы изменение существующего пользователя стало возможным, в методе убрана проверка на идентичную эл. почту.
        userRepository.save(user);
    }

    public void deleteUserById(Long id) {
        userRepository.deleteById(id);
    }
}
