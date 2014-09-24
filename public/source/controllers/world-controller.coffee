angular.module 'quiver'
	.controller 'WorldController', ($scope) =>
		Physics (world) =>				
			window.world = world
			$scope.entities = world._bodies

			Physics.util.ticker.on (time, dt) =>
				world.step time
				$scope.$apply
		
			square1 = Physics.body 'rectangle',
				x: 250
				y: 250
				width: 50
				height: 50

			world.add square1

			square2 = Physics.body 'rectangle',
				x: 50
				y: 350
				width: 50
				height: 50

			world.add square2