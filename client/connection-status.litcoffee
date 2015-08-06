    Template.connectionStatus.helpers
      secondsUntilReconnectionAttempt: -> Template.instance().retryTime.get()
      retryCount: -> Meteor.status().retryCount

    Template.connectionStatus.events
      'click .reconnect': -> Meteor.reconnect()

    Template.connectionStatus.onCreated ->
      instance = this

      instance.isConnected = null
      instance.retryTime = new ReactiveVar null

Clear the interval, just to be safe.

      Meteor.clearInterval instance.retryTimeInterval

      modalOptions =
        dismissible: no
        opacity: .5
        in_duration: 300
        out_duration: 200

      updateSecondsUntilRetry = ->
        retryTime = Math.round (Meteor.status().retryTime - (new Date()).getTime())/1000
        retryTime = 0 if isNaN retryTime
        instance.retryTime.set retryTime

      Tracker.autorun ->

If the client was connected, but is now disconnected, open the modal

        if instance.isConnected and not Meteor.status().connected
          $('#connection-status-modal').openModal modalOptions

Immediately update seconds until retry

          updateSecondsUntilRetry()

Update seconds until retry ever second

          instance.retryTimeInterval = Meteor.setInterval updateSecondsUntilRetry, 1000

Update the reactive var `isConnected`

        instance.isConnected = Meteor.status().connected

If connection is restored, attempt to close modal (will always be closed on initial connection) and clear the retryTime interval

        if instance.isConnected
         $('#connection-status-modal').closeModal()
         Meteor.clearInterval instance.retryTimeInterval