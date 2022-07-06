abstract class UserStates {}

class UserInitState extends UserStates {}

class ChangeBottomNavigationIndex extends UserStates {}

class DepartmentLoadingState extends UserStates {}

class DepartmentSuccessState extends UserStates {}

class DepartmentErrorState extends UserStates {
  final String error;

  DepartmentErrorState(this.error);
}

class DoctorsInDepartmentLoadingState extends UserStates {}

class DoctorsInDepartmentSuccessState extends UserStates {}

class DoctorsInDepartmentErrorState extends UserStates {
  final String error;

  DoctorsInDepartmentErrorState(this.error);
}

class HospitalLoadingState extends UserStates {}

class HospitalSuccessState extends UserStates {}

class HospitalErrorState extends UserStates {
  final String error;

  HospitalErrorState(this.error);
}

class IntenseveCareLoadingState extends UserStates {}

class IntenseveCareSuccessState extends UserStates {}

class IntenseveCareErrorState extends UserStates {
  final String error;

  IntenseveCareErrorState(this.error);
}

class BookingBedLoadingState extends UserStates {}

class BookingBedSuccessState extends UserStates {}

class BookingBedErrorState extends UserStates {
  final String error;

  BookingBedErrorState(this.error);
}

class DepartmentInHospitalLoadingState extends UserStates {}

class DepartmentInHospitalSuccessState extends UserStates {}

class DepartmentInHospitalErrorState extends UserStates {
  final String error;

  DepartmentInHospitalErrorState(this.error);
}
