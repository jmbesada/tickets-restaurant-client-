homeViewTpl=new Ext.XTemplate """
<div id="homeView_amount">
  <span>--{username}</span>--
  <div id="homeView_amount_1">
    SALDO<br/>DISPONIBLE
  </div>
  <div id="homeView_amount_2">
    {amount}
  </div> 
</div>

<div id="homeView_movements">
 <tpl for="movements">
    <div id="homeView_movements_item">
      <div id="homeView_movements_item_concept">
        {concept}
      </div>
      <div id="homeView_movements_item_remainder">
        <span id="homeView_movements_item_remainder_date">{date}</span>
        </br>
        <span id="homeView_movements_item_remainder_amount">{amount}</span>
      </div>
    </div>
    
 </tpl>
</div>
"""



Ext.define 'ticketsRestaurant.HomeView',
  extend:'Ext.Panel'
  xtype:'homeView'
  config:
    id:'homeView'
    layout:
      type:'vbox'
    items:[
      {
        xtype:'titlebar'
        title:'Tarj. Ticket Restaurant®'
        height:'50px'
        layout:
          type:'hbox'
        items:[
          xtype:'button'
          iconCls:'refresh'
          iconMask:true
          handler: ->
            loadDataFromHomeView()
        ]
      }
      {
        xtype:'dataview'
        itemTpl:homeViewTpl
        store:
          xtype:'userdatastore'
        loadingText:''
        flex:1
      }
    ]
    
    
   
        
       



