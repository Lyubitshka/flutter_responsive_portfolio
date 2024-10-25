part of 'connected_bloc.dart';

sealed class ConnectedState extends Equatable {
  const ConnectedState();

  @override
  List<Object> get props => [];
}

class ConnectedInitial extends ConnectedState {}

class ConnectedInitialState extends ConnectedState {}

class ConnectedSucessState extends ConnectedState {}

class ConnectedFailureState extends ConnectedState {}
