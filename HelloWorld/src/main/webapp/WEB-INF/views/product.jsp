<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>Table</title>
</head>
<script src="http://code.angularjs.org/1.4.8/angular.js"></script>  
   <script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>  
   <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>  
   <script>  
     var app = angular.module('MyForm', ['ui.bootstrap', 'ngResource']);  
     app.controller('myCtrl', function ($scope) {  
       $scope.predicate = 'name';  
       $scope.reverse = true;  
       $scope.currentPage = 1;  
       $scope.order = function (predicate) {  
         $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;  
         $scope.predicate = predicate;  
       };  
       $scope.products = ${myJson};  //This code is extracting the string object being sent from controller
       $scope.totalItems = $scope.products.length;  
       $scope.numPerPage = 5;  
       $scope.paginate = function (value) {  
         var begin, end, index;  
         begin = ($scope.currentPage - 1) * $scope.numPerPage;  
         end = begin + $scope.numPerPage;  
         index = $scope.products.indexOf(value);  
         return (begin <= index && index < end);  
       };  
     });  
   </script>  
   <style>  
     .odd {  
       background-color: antiquewhite;  
       color: #008b8b;  
     }  
     td th {  
       height: 30px;  
       min-width: 100px;  
     }  
     thead {  
       background-color: darkgray;  
       color: white;  
       height: 30px;  
     }  
   </style> 
<body ng-app="MyForm">
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="product">Category1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="product">Product</a></li>
      <span class="caret"></span>
      
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
     <li><a href="#">Sign In</a></li>
     </ul>
    
     
    
  
</nav>

<div ng-controller="myCtrl">
<h3>List Of Products</h3>  
     <div class="container-fluid">  
       <pre>Click header link to sort, input into filter text to filter</pre>  
       <hr />  
       <table class="table table-striped">  
         <thead>  
           <tr>  
             <th>Edit</th>
             <th>  
               <a href="" ng-click="order('id')">ProductId</a>  
             </th>   
             <th>  
               <a href="" ng-click="order('Name')">Product Name</a>  
             </th>  
             <th><a href="" ng-click="order('category')"> Category</a> </th>  
             <th><a href="" ng-click="order('price')">Price</a> </th> 
             <th><a href="" ng-click="order('status')">Status</a> </th> 
             <th><a href="" ng-click="order('desc')">Description</a> </th>  
           </tr>  
         </thead>  
         <tbody>  
           <tr>  
             <td>Filter =>></td>  
             <td> <input type="text" ng-model="search.id" /></td>  
             <td> <input type="text" ng-model="search.Name" /></td>  
             <td> <input type="text" ng-model="search.category" /> </td>  
             <td><input type="text" ng-model="search.price" /> </td> 
             <td><input type="text" ng-model="search.status" /> </td> 
             <td><input type="text" ng-model="search.desc" /> </td> 
             
           </tr>  
           <tr ng-repeat="user in products | orderBy:predicate:reverse | filter:paginate| filter:search" ng-class-odd="'odd'">  
             <td>  
               <button class="btn">  
                 Edit  
               </button>  
             </td>
             <td>{{ user.productId}}</td>  
             <td>{{ user.productName}}</td>  
             <td>{{ user.category}}</td>  
             <td>{{ user.price}}</td> 
             <td>{{ user.Status}}</td>
             <td>{{ user.desc}}</td>     
           </tr> 
           
         </tbody>  
       </table>  
       
       <pagination total-items="totalItems" ng-model="currentPage"  
             max-size="5" boundary-links="true"  
             items-per-page="numPerPage" class="pagination-sm">  
       </pagination>  
     </div> 
     
</div>

<div class="navbar navbar-inverse">
    <div class="panel-heading">@copyright FOOD.com</div>
  
</div>

</body>
</html>