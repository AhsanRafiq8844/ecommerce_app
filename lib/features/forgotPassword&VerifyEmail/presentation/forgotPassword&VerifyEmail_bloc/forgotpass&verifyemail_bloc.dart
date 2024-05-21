import 'package:bloc/bloc.dart';
import 'package:ecommerce_user/core/utilities/enums.dart';
import 'package:ecommerce_user/features/fotgotPassword&VerifyEmail/domain/entities/forgotpassword_entity.dart';
import 'package:ecommerce_user/features/fotgotPassword&VerifyEmail/domain/usecases/forgotpassword_usecase.dart';
import 'package:equatable/equatable.dart';

part 'forgetpassword_event.dart';
part 'forgotpass&verifyemail_state.dart';

class ForgetpasswordAndeVerifyEmailBloc extends Bloc<
    ForgotpassAndVerifyEmailEvent, ForgetpasswordAndeVerifyEmailState> {
  final ForgotPassUsecase forgotPassUsecase;
  VerifyStatus status = VerifyStatus.forgotPassword;
  ForgetpasswordAndeVerifyEmailBloc(this.forgotPassUsecase)
      : super(ForgotStausState()) {
    on<SendLink>((event, emit) async {
      emit(ForgetpasswordLoadingState());
      final failureOrSuccess =
          await forgotPassUsecase(ForgetPasswordUsecaseParams(event.email));

      failureOrSuccess
          .fold((failure) => emit(ForgetpasswordErrorState(failure.message)),
              (success) {
        emit(ForgetpasswordFinishedState(success));
        status = VerifyStatus.verifyEmail;

        emit(VerifyStausState());
      });
    });
  }
}
