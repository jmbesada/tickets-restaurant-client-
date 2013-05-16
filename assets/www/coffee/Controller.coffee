setup= ->
  Ext.Viewport.setMasked
    xtype: 'loadmask'
    message: 'Cargando datos....'
    indicator: true
  Ext.Viewport.setMasked false
     
login= ->
   values=Ext.getCmp('loginView_form').getValues()
   if (!values.username || !values.password || !values.secretDate)
     Ext.Msg.alert 'Aviso del sistema', 'No has rellenado todos los campos.'
   else
     loadData values.username, values.password, Ext.Date.format(values.secretDate,'dmY')
    
loadData= (username, password, secretDate)->
  Ext.Viewport.setMasked true
  Ext.getStore('userDataStore').load
    callback: (records, operation, success)->
      Ext.Viewport.setMasked false
      if !success
        Ext.Msg.alert 'Aviso del sistema', 'Ha fallado la autenticación.'
      else
        Ext.getCmp('mainView').setActiveItem(1)
        localStorage.username=username
        localStorage.password=password
        localStorage.secretDate=secretDate
    params:
      'username':username
      'password':password
      'date':secretDate
      
      
      
loadCredentials= ->
  if (localStorage.username)
    Ext.getCmp('loginView_form').setValues
      'username':localStorage.username
      'password':localStorage.password
      'secretDate':Ext.Date.parse localStorage.secretDate, 'dmY'
      
      
loadDataFromHomeView= ->
  if (localStorage.username)
    loadData localStorage.username, localStorage.password, localStorage.secretDate
  else
    Ext.getCmp('mainView').setActiveItem(0)
    
    
  
      