(function(){
  angular.module('Pleno')
    .controller('PainelController', function($scope) {
      $scope.Inicio = "Cadastro Painel";

      $scope.Pleno = [
      	{
      		id: "d9385462d3deff78c352ebb3f941ce12",
      		Nome: "Patrick",
      		Idade: 29,
      		Mae: "Evanilde",
      		Pai: "Claudinei",
      		Cidade: 'Rio Claro'
      	}
      ];

      $scope.novoPleno = {};

      $scope.criarPleno = function() {
      	$scope.Pleno.push({
      		id: SparkMD5.hash(Date.now() + ""),
      		Nome: $scope.novoPleno.Nome,
      		Idade: $scope.novoPleno.Idade,
      		Mae: $scope.novoPleno.Mae,
      		Pai: $scope.novoPleno.Pai,
      		Cidade: $scope.novoPleno.Cidade
      	});

      	$scope.novoPleno = {};
      }

      $scope.removerPleno = function(id) {
      	angular.forEach($scope.Pleno, function(Pleno, i){
      		if(Pleno.id == id){
      			$scope.Pleno.splice(i, 1);
      		};
      	});
      }

    });
})
();