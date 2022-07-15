({
   doInit : function(component, event, helper) {
      $A.createComponent(
         "c:SampleDragDrop",
         {
 
         },
         function(newCmp){
            if (component.isValid()) {
               component.set("v.body", newCmp);
            }
         }
      );
   },
   NavigateComponent : function(component,event,helper) {
      $A.createComponent(
         "c:newtable",
         {
           "res" : event.getParam("result")
         },
         function(newCmp){
            if (component.isValid()) {
                component.set("v.body", newCmp);
            }
         }
      );
   }
})