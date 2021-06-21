class User {
  int id;
  String name;
  String role;
  String username;
  String uuid;
  String department;
  String address;
  String contactNo;
  String contactNoOther;
  String city;
  String designation;
  String branchname;
  String adharNo;
  String salary;
  String joiningDate;
  String deviceToken;
  String active;
  Null zon;

  User(
      {this.id,
      this.name,
      this.role,
      this.username,
      this.uuid,
      this.department,
      this.address,
      this.contactNo,
      this.contactNoOther,
      this.city,
      this.designation,
      this.branchname,
      this.adharNo,
      this.salary,
      this.joiningDate,
      this.deviceToken,
      this.active,
      this.zon});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    role = json['role'];
    username = json['username'];
    uuid = json['uuid'];
    department = json['department'];
    address = json['address'];
    contactNo = json['contact_no'];
    contactNoOther = json['contact_no_other'];
    city = json['city'];
    designation = json['designation'];
    branchname = json['branchname'];
    adharNo = json['adhar_no'];
    salary = json['salary'];
    joiningDate = json['joining_date'];
    deviceToken = json['deviceToken'];
    active = json['active'];
    zon = json['zon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['role'] = this.role;
    data['username'] = this.username;
    data['uuid'] = this.uuid;
    data['department'] = this.department;
    data['address'] = this.address;
    data['contact_no'] = this.contactNo;
    data['contact_no_other'] = this.contactNoOther;
    data['city'] = this.city;
    data['designation'] = this.designation;
    data['branchname'] = this.branchname;
    data['adhar_no'] = this.adharNo;
    data['salary'] = this.salary;
    data['joining_date'] = this.joiningDate;
    data['deviceToken'] = this.deviceToken;
    data['active'] = this.active;
    data['zon'] = this.zon;
    return data;
  }
}
