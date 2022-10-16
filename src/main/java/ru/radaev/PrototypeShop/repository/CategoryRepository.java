package ru.radaev.PrototypeShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.radaev.PrototypeShop.domain.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
}
