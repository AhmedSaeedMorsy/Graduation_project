class DepartmentModel {
  List <DataModel> departmentData =[];
  
  DepartmentModel();
  DepartmentModel.fromJson(List json){
   for ( var element in json){
     departmentData.add(DataModel.fromJson(element));
   }
  }  
}

class DataModel {
  late int id;
  late String  name;

  DataModel.fromJson( json) {
    id = json["id"];
    name = json["name"];
  }
}
