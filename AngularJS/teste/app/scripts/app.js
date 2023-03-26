(function () {
    'use strict';

    angular.module('Pleno', [])

        .controller('PainelController', function ($scope) {

            // lista de usuários pré cadastrados
            $scope.Plenos = [
                {Nome: "Patrick", Idade: 29, Mae: "Evanilde", Pai: "Claudinei", Cidade: 'Rio Claro'}           
            ];

            //inicialização de um usuário vazio
            $scope.Pleno = {Nome: '', Idade: '', Mae: '', Pai: '', Cidade: ''};

            //método para adicionar o usuário a lista
            $scope.Salvar = function () {
                $scope.Plenos.push($scope.Pleno);
                $scope.Pleno = {Nome: '', Idade: '', Mae: '', Pai: '', Cidade: ''};
                $scope.statusSenha = {};
            };

            //método para validar a senha do usuário
            $scope.validarSenha = function () {
                $scope.statusSenha = {};

                if ($scope.Pleno.senha && $scope.Pleno.senha.length >= 6) {
                    $scope.statusSenha.classe = 'has-success';
                    $scope.statusSenha.icone = 'glyphicon-ok';
                    $scope.statusSenha.mensagem = 'Senha forte';

                }else {
                    $scope.statusSenha.classe = 'has-error';
                    $scope.statusSenha.icone = 'glyphicon-remove';
                    $scope.statusSenha.mensagem = 'Senha fraca';
                }
            };
        });

})();