// implement food review 
class FoodReview {
  final int rating;
  final String photo;
  final String? comment;

  FoodReview({
    required this.rating,
    required this.photo,
    this.comment,
  });
}