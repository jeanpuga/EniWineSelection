angular.module('app').controller('GameController', GameController);

/* @ngInject */
function GameController($scope, $http) {
    var vm = this;

    vm.select = select;
    vm.loadData = loadData;
    vm.start = start;
    vm.load= load;
    vm.submit = submit;
    vm.valid = valid;
    vm.game = {};
    vm.teory = {};
    vm.tentativas = 0;
    vm.result = new Array(3);

    vm.load();

    function load() {
        console.log('load');
        loadData().then(start);
    }
      
    function start() {
        console.log('start');
        vm.tentativas = 0;
        vm.game = new Game(vm.data.pivot);
        vm.teory = new Teory();
        vm.isErrSuspect = false;
        vm.isErrPlace = false;
        vm.isErrWeapon = false;
    }

    function submit() {
        console.log('submit');
        vm.tentativas++;
        valid(vm.game.submit(vm.teory));
    }

       
    function valid(result) {
        console.log('valid');

        //document.getElementById("imgSuspectResult").src = document.getElementById("imgSuspect").src;
        //document.getElementById("imgPlaceResult").src = document.getElementById("imgPlace").src;
        //document.getElementById("imgWeaponResult").src = document.getElementById("imgWeapon").src;


        switch (result) {
            case (0): {
                vm.isErrSuspect = false;
                vm.isErrPlace = false;
                vm.isErrWeapon = false;
                $('#modalWinner').modal('show')

                break;
            }
            case (1): {
                vm.isErrSuspect = true;
                vm.isErrPlace = false;
                vm.isErrWeapon = false;
                break;
            }
            case (2): {
                vm.isErrSuspect = false;
                vm.isErrPlace = true;
                vm.isErrWeapon = false;
                break;
            }
            case (3): {
                vm.isErrSuspect = false;
                vm.isErrPlace = false;
                vm.isErrWeapon = true;
                break;
            }
        }

    }

   
    function select(obj) {
        console.log('teste');

        switch (obj.ParametroTipoID) {
            case (1): {
                document.getElementById("imgSuspect").src = '../../Content/IMAGES/' + (obj.Valor.toLowerCase()) + '.jpeg';
                vm.teory.suspect = obj.Chave;
                vm.result[0] = obj;
                break;
            }
            case (2): {
                document.getElementById("imgPlace").src = '../../Content/IMAGES/' + (obj.Valor.toLowerCase()) + '.jpeg';
                vm.teory.place = obj.Chave;
                vm.result[1] = obj;
                break;
            }
            case (3): {
                document.getElementById("imgWeapon").src = '../../Content/IMAGES/' + (obj.Valor.toLowerCase()) + '.jpeg';
                vm.teory.weapon = obj.Chave;
                vm.result[2] = obj;
                break;
            }
        }
    }

    function loadData(){
        return $http({
            method: 'GET',
            url: 'api/Parametros'
        }).then(function (success) {
            console.log('Carregado com sucesso');
            vm.data = success.data;
            vm.data.pivot = {
                suspect: vm.data.filter(e=>e.ParametroTipoID == 1).map(e=> ({ key: e.Chave, value: e.Valor })),
                place: vm.data.filter(e=>e.ParametroTipoID == 2).map(e=> ({ key: e.Chave, value: e.Valor })),
                weapon: vm.data.filter(e=>e.ParametroTipoID == 3).map(e=> ({ key: e.Chave, value: e.Valor })),
            };

        }, function (error) {
            console.log('err::', error);
        });
    }

    

}
GameController.$inject = ['$scope', '$http']
