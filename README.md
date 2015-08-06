# modweb:materialize-connection-status

Materialize bottom style sheet modal disables input until modal is dismissed on reconnect.

# Check it out

![Nifty gif, eh?](https://raw.githubusercontent.com/modweb/meteor-materialize-connection-status/master/assets/connection-status-demo.gif)

# Getting started (and finished)

Add materialize-connection-status to your app:

```sh
meteor add modweb:materialize-connection-status
```

Add the Materialize package of your choice, we recommend the [official package](https://atmospherejs.com/materialize/materialize).

```sh
meteor add materialize:materialize
```

Insert the `{{> connectionStatus}}` template into your main layout.

See [this example](https://github.com/jfols/liftoff/blob/master/client/views/layout/mainLayout.html) using [kadira:flow-router](https://github.com/kadirahq/flow-router).

```html
<template name='mainLayout'>
  {{> header}}
  <div class='container yield'>
    {{> Template.dynamic template=content}}
  </div>
  {{> footer}}
  {{> connectionStatus}}
</template>
```

## Demo

Check out http://liftoff.meteor.com/ and turn off your Internet tubes.
