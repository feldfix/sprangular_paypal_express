'use strict'

angular.module('Sprangular.PaypalExpress').directive 'paypalButton', ->
  restrict: 'E'
  scope:
    user: '='

  templateUrl: 'directives/paypal_button.html'
  controller: ($scope, $location, Cart, Checkout, $cookies, Env) ->
    $scope.processing = false
    # Angular 1.4 syntax $cookies.get("XSRF-TOKEN")
    $scope.authenticityToken = $cookies['XSRF-TOKEN']

    $scope.checkout = ->
      $scope.processing = true


    $scope.paymentMethodId = ->
      console.log Env.config.payment_methods
      paymentMethod = _.find Env.config.payment_methods, (method) -> method.type == 'Spree::Gateway::PayPalExpress'

      alert('Payment method "Spree::Gateway::PayPalExpress" not found') unless paymentMethod

      paymentMethod.id
