import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:frontapp/models/home/user.dart';
import 'package:frontapp/repositories/home/githubInfoHelper.dart';
import 'package:frontapp/utils/endpoints/endPoints.dart';
import 'package:mobx/mobx.dart';
part 'homeController.g.dart';

class ControllerHome = _HomeController with _$ControllerHome;

abstract class _HomeController with Store {
  GithubInfoHelper githubInfoHelper = GithubInfoHelper();
  @observable
  bool gettingData = false;
  @observable
  bool hasError = false;
  List<User> infoPerson = [];
  @action
  Future<void> getPersonInfos () async {
    gettingData = true;
    List result = await githubInfoHelper.getInfo();
  
    if(result.length <= 0){
      hasError = true;
    }else{
      result.forEach((element) { 
        infoPerson.add(
          User(element["login"], element["avatar_url"])
        );
      });
    }
      gettingData = false;
  }
}