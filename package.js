Package.describe({
  name: 'modweb:materialize-connection-status',
  summary: 'Materialized connection status.',
  version: '0.0.2',
  git: 'https://github.com/modweb/meteor-materialize-connection-status'
});

Package.onUse(function(api) {
  api.versionsFrom('1.1');
  api.use(['coffeescript', 'templating', 'reactive-var', 'tracker'], 'client');
  api.addFiles(
    ['client/connection-status.html',
    'client/connection-status.litcoffee'], 'client');
});
