part of 'category_bloc.dart';

abstract class CategoryState extends Equatable{

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState{
  final List<CategoryModel> data;
  CategoryLoaded({this.data});
}

class CategoryError extends CategoryState{
  final error;
  CategoryError({this.error});
}