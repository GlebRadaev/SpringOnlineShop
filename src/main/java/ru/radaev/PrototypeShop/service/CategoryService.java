package ru.radaev.PrototypeShop.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.radaev.PrototypeShop.domain.Category;
import ru.radaev.PrototypeShop.exception.CategoryIsNotEmptyException;
import ru.radaev.PrototypeShop.exception.CategoryNotFoundException;
import ru.radaev.PrototypeShop.repository.CategoryRepository;

import java.util.List;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;

    @Autowired
    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public void saveCategory(Category category) {
        categoryRepository.save(category);
    }

    public Category getCategoryById(Long id) {
        return categoryRepository.findById(id).orElseThrow(() -> new CategoryNotFoundException(id));
    }

    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }

    public void deleteById(Long id) {
        if (!getCategoryById(id).getProducts().isEmpty())
            throw new CategoryIsNotEmptyException(id); // Категория не может быть удалена, если в ней есть товары
        categoryRepository.deleteById(id);
    }
}
