angular.module 'quiver'
	.controller 'WorldController', ($scope) =>
		Physics (world) =>				
			Physics.util.ticker.on (time, dt) =>
				world.step time
				scope.$apply
		
			square = Physics.body 'rectangle',
				x: 250
				y: 250
				width: 50
				height: 50

			world.add square