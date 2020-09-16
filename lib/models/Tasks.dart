
class Tasks {
  final int id;
  String name;
  DateTime deadline;
  bool checked;

  Tasks({
    this.id,
    this.name,
    this.deadline,
    this.checked = false
  });
}

List<Tasks> tasks = [
  Tasks(id: 0, name: "Faire les courses", deadline: new DateTime(2020, 09, 14), checked: true),
  Tasks(id: 1, name: "Faire du sport", deadline: new DateTime(2020, 09, 16)),
  Tasks(id: 2, name: "Ranger la chambre", deadline: new DateTime(2020, 09, 15)),
  Tasks(id: 3, name: "Finir l'appli", deadline: new DateTime(2020, 09, 19)),
];
