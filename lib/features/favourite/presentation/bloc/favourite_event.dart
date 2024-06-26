part of 'favourite_bloc.dart';

abstract class FavouriteEvent extends Equatable {
  const FavouriteEvent();

  @override
  List<Object> get props => [];
}

class AddToFavorite extends FavouriteEvent {
  final bool isFavourite;
  final ProductEntity product;

  const AddToFavorite({
    required this.isFavourite,
    required this.product,
  });
}
