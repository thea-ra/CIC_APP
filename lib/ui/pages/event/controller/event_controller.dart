// ignore_for_file: avoid_print

import 'package:cic_project/ui/pages/event/model/event_model.dart/event_model.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';

import '../../../../util/helper/api_base_helper.dart';

class EventController extends GetxController {
  final isLoading = false.obs;
  final isShow = false.obs;
  final interestor = 0.obs;
  final isupcoming = false.obs;
  double late = 0;
  double lng = 0;
  String address = '';
  final eventdetail = EventModel().obs;
  final pasteventDetial = EventModel().obs;
  final dataList = <EventModel>[].obs;
  final pastData = <EventModel>[].obs;

  @override
  void onInit() {
    // ignore: todo
    // TODO: implement onInit
    getUpcomping();
    getAddressFromLatLng(11.587872925529721, 104.89773410019525);
    getPastEvent();
    super.onInit();
  }

  //Fetch data from api
  final apibasehelper = ApiBaseHelper();
  Future<List<EventModel>> getUpcomping() async {
    isupcoming(true);
    await apibasehelper
        .onNetworkRequesting(
            url: 'v4/event?posted=upcoming&type=new&event_date=',
            methode: METHODE.get,
            isAuthorize: true)
        .then((res) {
      res['data'].map((e) {
        dataList.add(EventModel.fromJson(e));
        print(dataList);
      }).toList();
      debugPrint("datalist ${dataList.length}");
    });
    isupcoming(false);
    return dataList;
  }

  //Fetch data from api

  Future<List<EventModel>> getPastEvent() async {
    isLoading(true);
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/event?member_id=432&posted=past',
              methode: METHODE.get,
              isAuthorize: true)
          .then((res) {
        res['data'].map((e) {
          pastData.add(EventModel.fromJson(e));
        }).toList();

        print(pastData);
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('Errorr: ${error.bodyString}');
      });
    } catch (e) {
      debugPrint("e $e");
    }
    isLoading(false);
    return pastData;
  }

  Future<EventModel> getEventDetail(num id) async {
    isLoading(true);
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/event/$id', methode: METHODE.get, isAuthorize: true)
          .then((res) {
        eventdetail.value = EventModel.fromJson(res['data']);
        late = double.parse(eventdetail.value.latitude.toString());
        lng = double.parse(eventdetail.value.longitude.toString());
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('Errorr: ${error.bodyString}');
      });
    } catch (e) {
      debugPrint("e $e");
    }
    isLoading(false);
    return eventdetail.value;
  }

  Future<EventModel> getPastEventDetail(num id) async {
    isLoading(true);
    try {
      await apibasehelper
          .onNetworkRequesting(
              url: 'v4/event?member_id=432&posted=past/$id',
              methode: METHODE.get,
              isAuthorize: true)
          .then((res) {
        pasteventDetial.value = EventModel.fromJson(res['data']);
        late = double.parse(pasteventDetial.value.latitude.toString());
        lng = double.parse(pasteventDetial.value.longitude.toString());
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('Errorr: ${error.bodyString}');
      });
    } catch (e) {
      debugPrint("e $e");
    }
    isLoading(false);
    return pasteventDetial.value;
  }

  // event address
  Future<String> getAddressFromLatLng(double late, double long) async {
    await placemarkFromCoordinates(late, long)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      address = '${place.name}';
      // print('my street : ${place.name}');
      print('here is flexible location: $address');
    }).catchError((e) {
      debugPrint(e);
    });

    return address;
  }
}
