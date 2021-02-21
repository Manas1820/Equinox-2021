import 'package:cloud_firestore/cloud_firestore.dart';

class UserDetails {
  String username;
  String userTeamId;
  UserDetails(String username, String userTeamId) {
    this.userTeamId = username;
    this.username = userTeamId;
  }
  UserDetails.fromSnapshot(DocumentSnapshot snapshot)
      : username = snapshot.data()['username'],
        userTeamId = snapshot.data()['userTeamId'];
}

class TeamDetails {
  List members;
  String teamName;

  TeamDetails(members, teamName) {
    this.members = members;
    this.teamName = teamName;
  }

  TeamDetails.fromSnapshot(DocumentSnapshot snapshot)
      : members = snapshot.data()['members'],
        teamName = snapshot.data()['teamname'];
}

Future<UserDetails> getUser(String id) async {
  var snap = await FirebaseFirestore.instance.collection('users').doc(id).get();
  Map<String, dynamic> data = snap.data();
  UserDetails user = UserDetails(data['username'], data['userTeamId']);
  return user;
}

Future<TeamDetails> getTeam(String id) async {
  var snap = await FirebaseFirestore.instance.collection('team').doc(id).get();
  Map<String, dynamic> data = snap.data();
  TeamDetails team = TeamDetails(data['members'], data['teamName']);
  return team;
}
