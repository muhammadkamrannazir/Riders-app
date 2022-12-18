import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rider_app/views/pages/bottom_pages/home.dart';
import 'package:rider_app/views/pages/home.dart';

// enum StepStatus { REGISTER, PROFILE, VEHICLE }

class StepperController extends GetxController {
  // Rx<StepStatus> currentStepStatus = StepStatus.REGISTER.obs;

  // changeStepStatus({required StepStatus stepStatus}) {
  //   currentStepStatus.value = stepStatus;
  // }
  RxBool isSignUp = false.obs;
  RxBool isProfile = false.obs;
  RxBool isVehicle = false.obs;

  RxInt currentStep = 0.obs;
  var totalSteps = 3;

  var dishImages = <File>[].obs;
  tapped(int step) {
    currentStep.value = step;
  }

  continued() {
    currentStep < (totalSteps - 1)
        ? currentStep.value += 1
        : Get.to( BottomTabs());
  }

  var currentIngredients = [].obs;
  var currentPreparationSteps = [].obs;
  var instructionsToFollow = <InstructionTextFields>[].obs;

  addNewIngredient() {
    currentIngredients.add(
      IngredientsTextFields(
        txtItem: TextEditingController(),
        txtQuantity: TextEditingController(),
        txtPrice: TextEditingController(),
      ),
    );
    currentIngredients.refresh();
  }

  addNewStep() {
    currentPreparationSteps.add(TextEditingController());
    currentPreparationSteps.refresh();
  }

  addNewInstructionStep() {
    instructionsToFollow.add(
      InstructionTextFields(
        txtStep: TextEditingController(),
        time: 20,
      ),
    );
    instructionsToFollow.refresh();
  }

  incrementTimer(int index) {
    int previousTime = instructionsToFollow[index].time!;
    instructionsToFollow[index].time = (previousTime + 5);
    instructionsToFollow.refresh();
  }

  decrementTimer(int index) {
    int previousTime = instructionsToFollow[index].time!;
    instructionsToFollow[index].time = (previousTime - 5);
    instructionsToFollow.refresh();
  }

  removeImage(File file) {
    dishImages.value.remove(file);
    dishImages.refresh();
  }

  // imagePicker() {
  //   showModalBottomSheet(
  //       context: Get.context!, builder: ((builder) => CustomImagePicker()));
  // }
}

class IngredientsTextFields {
  TextEditingController? txtItem;
  TextEditingController? txtQuantity;
  TextEditingController? txtPrice;
  IngredientsTextFields({this.txtItem, this.txtQuantity, this.txtPrice});
}

class InstructionTextFields {
  TextEditingController? txtStep;
  int? time;
  InstructionTextFields({this.txtStep, this.time});
}
