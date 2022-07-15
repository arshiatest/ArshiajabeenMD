({
    
   doInit : function(component, event, helper) {
       
	var action = component.get("c.fetchUser");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var storeResponse = response.getReturnValue();
                             
                component.set("v.Isadmin", storeResponse);
                 console.log('Isadmin-----'+storeResponse);
            
            }
            
        });
        $A.enqueueAction(action);
    },
    allowDrop: function(cmp, event, helper){
        event.preventDefault();
    },
    drag: function(cmp, ev, helper){
          var parentId = document.getElementById(ev.target.id).parentElement.id;
        var divtitle = document.getElementById(ev.target.id).parentElement.title;
         console.log("divtitle=="+divtitle);
        console.log("parentId=="+parentId);
        cmp.set("v.startId",ev.target.id);
        console.log("ev.target.id=="+ev.target.id);
        cmp.set("v.parentId",parentId);
    },
    drop: function(cmp, ev, helper){
        var drag = cmp.get("v.startId");
        console.log("drag=="+drag);
        var div = document.getElementById(ev.target.id).parentElement.id;
       // var divtest = document.getElementById(ev.target.id).parentElement.title;
      // var div = document.getElementById(ev.target.id).children;
      
        console.log("div=="+div);
        //console.log("divtest=="+divtest);
       
       
       var fragment = document.createDocumentFragment();
       // console.log("fragment=="+fragment);
        
        fragment.appendChild(document.getElementById(drag));
        document.getElementById("myid").appendChild(fragment);
        
      /*  document.getElementById("divid").appendChild(fragment);
        var c = document.getElementById("divid").children;
        var x = document.getElementById('drag1').parentElement.id;
       var fragment = document.createDocumentFragment();
        fragment.appendChild(document.getElementById(c[0].id));
        document.getElementById(cmp.get("v.parentId")).appendChild(fragment);*/
    },
    

    
    
    saverecord: function(component, event, helper) {
    var newsurvet = component.get("v.survey");
    
    var action = component.get("c.save");
    action.setParams({ 
        "sur": newsurvet
            
    });
    action.setCallback(this, function(response) {
        var state = response.getState();
        if (state === "SUCCESS") {
            var name = response.getReturnValue();
            alert("success");
        }
        else if (state === "ERROR")
        {
            alert("Failed");
        }
    });
    $A.enqueueAction(action);
},
    saverecord1: function(component, event, helper) {
    var newsurvet = component.get("v.survey");
    
    var action = component.get("c.save1");
    action.setParams({ 
        "sur": newsurvet
            
    });
    action.setCallback(this, function(response) {
        var state = response.getState();
        if (state === "SUCCESS") {
            var name = response.getReturnValue();
            alert("success");
        }
        else if (state === "ERROR")
        {
            alert("Failed");
        }
    });
    $A.enqueueAction(action);
}
})