Ext.define 'ticketsRestaurant.MovementModel',
  extend:'Ext.data.Model'
  config:
    fields:['date', 'concept', 'amount']
    
    
Ext.define 'ticketsRestaurant.UserDataModel', 
  extend:'Ext.data.Model',
  config:
    fields:[
      {
        name:'username'
        type:'string'
      }
      {
        name:'amount'
        type:'string'
      }
    ]
    hasMany:[
      {
        model:'ticketsRestaurant.MovementModel'
        name:'movements'
        associationKey:'movements'
      }
    ]
   
      


Ext.define 'ticketsRestaurant.UserDataStore',
  extend:'Ext.data.Store'
  xtype:'userdatastore'
  config:
    model:'ticketsRestaurant.UserDataModel'
    autoLoad:false
    storeId:'userDataStore'
    ###
    data:[
      {
        username:'jose miguel'
        amount:'128 €'
      }
    ]
    ###
    proxy:
      type:'ajax'
      timeout:90000
      url:webservicesUrl+"/robotController/getData"


#Ext.create 'ticketsRestaurant.UserDataStore'
