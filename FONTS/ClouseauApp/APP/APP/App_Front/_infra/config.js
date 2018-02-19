
angular.module('app').config(configuration);

/* @ngInject */
function configuration($locationProvider, $routeProvider) {

    $locationProvider.hashPrefix('');

    $routeProvider.when('/game', {
        templateUrl: '../../App_Front/views/game.html',
        controller: GameController,
        controllerAs: 'GameController'
    }).when('/score', {
        templateUrl: '../../App_Front/views/score.html',
        controller: ScoreController,
        controllerAs: 'ScoreController'

    }).otherwise('/game');

}
configuration.$inject = ['$locationProvider', '$routeProvider']
