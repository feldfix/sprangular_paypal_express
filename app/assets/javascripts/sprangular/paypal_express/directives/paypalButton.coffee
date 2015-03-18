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
    $scope.paymentMethodId = @_findPaymentMethodId()

    $scope.checkout = ->
      $scope.processing = true

    _findPaymentMethodId: ->
      paymentMethod = _.find Env.config.payment_methods, (method) -> method.name == 'paypal'

      alert('Payment method "paypal" not found') unless paymentMethod

      paymentMethod.id