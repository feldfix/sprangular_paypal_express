angular.module('Sprangular.PaypalExpress')
  .config ($routeProvider) ->
    $routeProvider
      .when '/checkout/delivery',
        controller: 'CheckoutDeliveryCtrl'
        templateUrl: 'checkout/delivery.html'
        resolve:
          order: (Cart) ->
            Cart.lastOrder
      .when '/checkout/payment',
        requires: {user: true, cart: true}
        controller: 'CheckoutCtrl'
        templateUrl: 'checkout/index.html'
        resolve:
          countries: (Geography) -> Geography.getCountryList()
          order: (Cart) ->
            Cart.reload().then -> Cart.current