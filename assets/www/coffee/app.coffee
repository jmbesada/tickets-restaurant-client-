document.addEventListener 'deviceready', ->
  console.log('Phonegap framework initialized')


webservicesUrl='http://tickets_restaurant.cloudfoundry.com'
Ext.application
  launch: ->
    setup()
    Ext.widget 'mainView',
      fullscreen:true
    console.log 'Initialized the app successfully'


