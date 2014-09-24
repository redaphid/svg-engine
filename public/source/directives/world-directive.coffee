angular.module 'quiver'
	.directive 'qWorld', ->
		templateNamespace: 'svg'
		replace: true
		templateUrl: '/templates/world.svg'
		controller: 'WorldController'
			