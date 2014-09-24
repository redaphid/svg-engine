angular.module 'quiver'
	.directive 'customCircle', ->
		scope :
			radius: '@'
		templateNamespace: 'svg'
		replace: true
		template: '<circle ng-attr-cx="{{radius}}" ng-attr-cy="{{radius}}" ng-attr-r="{{radius}}"/>'
