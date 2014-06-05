app = angular.module("app", ["ngResource", "ui.router", "ui.bootstrap", "app.services", "app.directives", "ngGrid", "ui.bootstrap"])

app.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise('/home')

  home =
    name: 'home'
    url: '/home'
    templateUrl: "home.html"
    controller: "HomeController"

  receive =
    name: 'receive'
    url: '/receive'
    templateUrl: "receive.html"
    controller: "ReceiveController"

  directory =
    name: 'directory'
    url: '/directory'
    templateUrl: "directory.html"
    controller: "DirectoryController"

  transfer =
    name: 'transfer'
    url: '/transfer'
    templateUrl: "transfer.html"
    controller: "TransferController"

  editaccount =
    name: 'editaccount'
    url: '/editaccount'
    templateUrl: "editaccount.html"
    controller: "EditAccountController"

  contacts =
    name: 'contacts'
    url: '/contacts'
    templateUrl: "contacts.html"
    controller: "ContactsController"

  contact =
    name: 'contact'
    url: '/contact'
    templateUrl: "contact.html"
    controller: "ContactController"

  account =
    name: 'account'
    url: '/account'
    templateUrl: "account.html"
    controller: "AccountController"

  blocks =
    name: 'blocks'
    url: '/blocks'
    templateUrl: "blocks.html"
    controller: "BlocksController"

  createwallet =
    name: 'createwallet'
    url: '/createwallet'
    templateUrl: "createwallet.html"
    controller: "CreateWalletController"

  $stateProvider.state(home).state(editaccount).state(receive).state(transfer).state(contacts).state(blocks).state(createwallet).state(contact).state(account).state(directory)

