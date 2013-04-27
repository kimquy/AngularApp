# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


app = angular.module("RandomName", ["ngResource"])

app.config ($routeProvider) ->
	$routeProvider
		.when("/xinchao", {template: "xin chao from me"})
		.when('/groups',{
			templateUrl: 'assets/templates/index.html',
			controller: 'groupCtrl'
			})
		.when('/groups/:id',{
			templateUrl: 'assets/templates/editGroup.html',
			controller: 'groupCtrl'
			})
		.when('/lists/:id',{
			templateUrl: 'assets/templates/list.html',
			controller: 'groupCtrl'
			})
		.otherwise(redirectTo: '/groups', {
			templateUrl: 'assets/templates/index.html',
			controller: 'groupCtrl'
			})

@groupCtrl = ($scope, $resource, $routeParams) ->
	Group = $resource("/groups/:id")
	List = $resource('/lists/:id', {id: '@id'}, { 'get': {method:'GET', isArray:true}})

	$scope.groups = Group.query()
	$scope.lists = List.get({group_id: $routeParams.id})

	$scope.deleteGroup = (i, g) ->
		$scope.groups.splice(i,1)
		Group.delete(id: g.group.id)

	$scope.addGroup = ->
		n = $scope.groups.length
		if n > 0
			lastG = $scope.groups[n-1]
			nextIndex = lastG.group.id + 1
		else
			nextIndex = 1

		if $scope.groupName
			$scope.emptyGroupName = ''  
			new_g = {"group" : {name: $scope.groupName, id: nextIndex}}
			$scope.groups.push(new_g)
			Group.save({name: $scope.groupName, id: nextIndex})
			$scope.groupName = ""
		else
			$scope.emptyGroupName = "Group name can not be empty"

	$scope.editGroup = (i) ->
		$scope.currentEditGroup = $scope.groups[i]

	$scope.addList = ->
		n = $scope.lists.length
		if n > 0
			lastL = $scope.lists[n-1]
			nextIndex = lastL.list.id + 1
		else
			nextIndex = 1

		if $scope.listName
			$scope.emptyListName = ''
			new_l = {"list": {name: $scope.listName, id: nextIndex, group_id: $routeParams.id}}
			$scope.lists.push(new_l)
			List.save({name: $scope.listName, group_id: $routeParams.id})
			$scope.listName = " "
		else
			$scope.emptyListName = "List name can not be empty"


	$scope.deleteList = (i, l) ->
		$scope.lists.splice(i,1)
		List.delete(id: l.list.id)








