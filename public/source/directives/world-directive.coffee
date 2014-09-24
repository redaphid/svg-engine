angular.module 'quiver'
	.directive 'world', ->
		scope :
			radius: '@'
		templateNamespace: 'svg'
		replace: true
		templateUrl: '/templates/world.svg'
		controller: 'WorldController'
			