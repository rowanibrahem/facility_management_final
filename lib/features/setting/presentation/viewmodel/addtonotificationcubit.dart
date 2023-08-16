import 'package:bloc/bloc.dart';
import 'package:facility_management/features/setting/presentation/viewmodel/addcubitstates.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/datamodel.dart';

class AddCubit extends Cubit<AddtoNotification>{
  AddCubit():super(InitialState());

  List<DataModel> notification=[];
  void addtonoti(DataModel model){
    notification.addAll(model as Iterable<DataModel>);
    emit(AddSuccessState());
  }

}