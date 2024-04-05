
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../model/IPODetails_Model.dart';

@immutable
abstract class IPOState extends Equatable {}

//class IPODetailsInitial extends IPOState {}

class IPODetailsLoading extends IPOState {
  @override
  List<Object?> get props => [];
}

class IPODetailsLoaded extends IPOState {
  final List<IpoDeatilsDemo> ipoList;
  IPODetailsLoaded(this.ipoList);
  @override
  List<Object?> get props => [ipoList];
}

class IPODetailsError extends IPOState {
  final String error;
  IPODetailsError(this.error);
  @override
  List<Object?> get props => [error];
}