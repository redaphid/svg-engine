angular.module 'quiver'
	.directive 'qBody', ->
		scope :
			entity: '='
		templateNamespace: 'svg'
		replace: true
		templateUrl: '/templates/body.svg'
