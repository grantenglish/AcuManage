//Define an angular module for our app
var app = angular.module('myApp', []);

app.controller('patientsController', function($scope, $http) {
  getPatients(); // Load all available patients
  function getPatients(){
  $http.get("ajax/getPatients.php").success(function(data){
        $scope.patients = data;
       });
  };

  //
  // get a single pattient
  //
  function getPatient(){
  $http.get("ajax/getPatient.php?patientId="+patient).success(function(data){
        $scope.patients = data;
       });
  };

  //
  //add patient and return all
  //
  $scope.addPatient = function (patient) {
    $http.get("ajax/addPatient.php?patient="+patient).success(function(data){
        getPatients();
        $scope.patientInput = "";
      });
  };

  //
  // delete patient and return remaining
  //
  $scope.deletePatient = function (patient) {
    $http.get("ajax/deletePatient.php?patientId="+patient).success(function(data){
        getPatients();
      });
  };
});
