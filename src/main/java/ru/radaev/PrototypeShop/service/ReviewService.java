package ru.radaev.PrototypeShop.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.radaev.PrototypeShop.domain.Review;
import ru.radaev.PrototypeShop.exception.ReviewNotFoundException;
import ru.radaev.PrototypeShop.repository.ReviewRepository;

import java.util.List;

@Service
public class ReviewService {
    private final ReviewRepository reviewRepository;
    private final UserService userService;

    @Autowired
    public ReviewService(ReviewRepository reviewRepository, UserService userService) {
        this.reviewRepository = reviewRepository;
        this.userService = userService;
    }

    public void saveReview(Review review) {
        review.setAuthor(userService.getLoggedUser());
        reviewRepository.save(review);
    }

    public Review getReviewById(Long id) {
        return reviewRepository.findById(id).orElseThrow(() -> new ReviewNotFoundException(id));
    }

    public List<Review> getReviewsByProductId(Long id) {
        return reviewRepository.findAllByProductId(id);
    }

    public List<Review> getAllReview() {
        return reviewRepository.findAll();
    }

    public void deleteReviewById(Long id) {
        reviewRepository.deleteById(id);
    }
}
