part of 'internet_bloc.dart';

sealed class InternetEvent {}

final class InternetLostEvent extends InternetEvent {}

final class InternetGainedEvent extends InternetEvent {}
