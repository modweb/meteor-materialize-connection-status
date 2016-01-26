Package.describe({
<<<<<<< HEAD
  name: 'modweb:materialize-connection-status',
  summary: 'Materialized connection status.',
  version: '0.0.3',
  git: 'https://github.com/modweb/meteor-materialize-connection-status'
=======
  name: 'appworkshop:materialize-connection-status',
  summary: 'Materialized connection status with cordova/phonegap support.',
  version: '0.0.4',
  git: 'https://github.com/appworkshop/meteor-materialize-connection-status'
>>>>>>> bde3923... Workaround materialize issue where modal overlay remained (https://github.com/Dogfalo/materialize/issues/1647)
});

Package.onUse(function(api) {
  api.versionsFrom('1.1');
  api.use(['coffeescript', 'templating', 'reactive-var', 'tracker'], 'client');
  api.addFiles(
    ['client/connection-status.html',
    'client/connection-status.litcoffee'], 'client');
});
