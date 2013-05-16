Ext.define 'ticketsRestaurant.MainView',
  extend:'Ext.Container'
  xtype:'mainView'
  config:
    id:'mainView'
    layout:
      type:'card'
    items:[
      {
        xtype:'loginView'
      }
      {
        xtype:'homeView'
      }
      
     
    ]
