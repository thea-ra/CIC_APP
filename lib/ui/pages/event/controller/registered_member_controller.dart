import 'package:cic_project/ui/pages/event/model/event_model.dart/registerd_model/registered_model.dart';
import 'package:cic_project/util/helper/api_base_helper.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../account/controller/account_controller.dart';

class RegisterContoller extends GetxController {
  final registerdlist = <ModelRegistered>[].obs;
  final apibasehelpers = ApiBaseHelper();
  final isloading = false.obs;
  final iselected = false.obs;
  final index = 0.obs;
  final isTap = false.obs;
  final iduser = [].obs;
  final eventid = 0.obs;
  final suggestionlist = <ModelRegistered>[].obs;
  final copyTaped = false.obs;
  final memberlist = <ModelRegistered>[].obs;
  final userList = <ModelRegistered>[].obs;
  final con = Get.put(AccountController());
  final inviteID = [].obs;
  Future<List<ModelRegistered>> getRegisteredUser(int eventId) async {
    isloading(true);
    await apibasehelpers
        .onNetworkRequesting(
            url: 'v4/event-registration?event_id=$eventId&page=1',
            methode: METHODE.get,
            isAuthorize: true)
        .then((res) {
      res['data'].map((e) {
        registerdlist.add(ModelRegistered.fromJson(e));
      }).toList();
    });
    isloading(false);
    return registerdlist;
  }

  void clearList() {
    registerdlist.clear();
  }

  // get user
  Future<List<ModelRegistered>> inviteUser() async {
    isloading(true);
    await apibasehelpers
        .onNetworkRequesting(
            url: 'v4/member?page=1', methode: METHODE.get, isAuthorize: true)
        .then((res) {
      res['data'].map((e) {
        userList.add(ModelRegistered.fromJson(e));
      }).toList();
    });
    isloading(false);
    return userList;
  }

  void close() {
    userList.clear();
  }

// add to list

  List addMember(ModelRegistered data) {
    memberlist.add(data);
    inviteID.clear();
    memberlist.map((e) {
      inviteID.add(e.id);
    }).toList();
    print(inviteID);
    return memberlist;
  }

  List removemember(ModelRegistered data) {
    memberlist.remove(data);
    return memberlist;
  }

  // Invite member

  Future inviteMember() async {
    try {
      await apibasehelpers
          .onNetworkRequesting(
              url: 'v4/event-registration',
              methode: METHODE.post,
              body: {
                "member_id": '${con.datamemeber.value.id}',
                "event_id": '$eventid',
                "invite_id": [inviteID]
              },
              isAuthorize: true)
          .then((res) {
        print('success to invite');
      }).onError((Error error, stackTrace) {
        print(error);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // function Search
  void searchMember(String query) {
    // debugPrint(userList.toString());

    if (query != '') {
      userList.map((e) {
        if (e.name!.contains(query)) {
          suggestionlist.add(e);
        }
      }).toList();
    } else {
      suggestionlist.clear();
    }

    debugPrint("search =$suggestionlist");
  }
}
