Ext.define 'ticketsRestaurant.LoginView',
  extend:'Ext.Panel'
  xtype:'loginView'
  config:
    id:'loginView'
    layout:
      type:'vbox'
    items:[
      {
        id:'loginView_header'
        xtype:'label'
        html:'Accede a tu area privada'
      }
      {
        id:'loginView_remainder'
        xtype:'label'
        html:'Introduce tus credenciales'
      }
      {
        id:'loginView_form'
        xtype:'formpanel'
        height:'200px'
        defaults:
          cls:'field'
          labelCls:'fieldLabel'
        items:[
          {
            id:'loginView_username'
            xtype:'textfield'
            name:'username'
            label:'Usuario:'
            placeHolder:'Tu usuario'
            labelWidth:'125x'
            required:true
          }
          {
            id:'loginView_password'
            xtype:'passwordfield'
            name:'password'
            label:'Contraseña:'
            placeHolder:'Tu contraseña'
            labelWidth:'125px'
            required:true
          }
          {
            id:'loginView_secretDate'
            xtype:'datepickerfield'
            name:'secretDate'
            label:'Fecha:'
            placeHolder:'Fecha secreta'
            labelWidth:'125px'
            dateFormat:'d/m/Y'
            picker:
              yearFrom: new Date().getFullYear()-50
              yearTo: new Date().getFullYear()
              cancelButton: 'Cancelar'
              doneButton: 'Establecer'
            required:true
          }
         
        ]
      }
      {
        id:'loginView_login'
        xtype:'button'
        text:'Continuar'
        ui:'plain'
        handler: ->
         login()
      }
      {
        id:'loginView_footer' 
        xtype:'label'
        docked:'bottom'
        height:'50px'
      }
    ]
    listeners:
      painted: ->
        loadCredentials()
      