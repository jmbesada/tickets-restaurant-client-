document.addEventListener 'deviceready', ->
  console.log('Phonegap framework initialized')

 
webservicesUrl='http://tickets_restaurant.cloudfoundry.com'
#webservicesUrl='http://192.168.0.193:8080' 
Ext.application
  launch: ->
    setup()
    Ext.widget 'mainView',
      fullscreen:true
    console.log 'Initialized the app successfully' 


