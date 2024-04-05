//part of 'IPODetails_blocs.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class IPOEvent extends Equatable {
  const IPOEvent();
}

class GetIPODetailsListEvent extends IPOEvent {
  @override
  List<Object?> get props => [];
}