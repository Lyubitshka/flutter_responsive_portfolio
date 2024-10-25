part of 'connected_bloc.dart';

sealed class ConnectedEvent extends Equatable {
  const ConnectedEvent();

  @override
  List<Object> get props => [];
}

class OnConnectedEvent extends ConnectedEvent {}

class OnNotConnectedEvent extends ConnectedEvent {}
