({
    doInit : function(cmp, event, helper) {
        cmp.set('v.table1Data', [
            {"queid":"dnd-r-0", "question":"Was the audio quality good?"},
            {"queid":"dnd-r-1", "question":"was the session interactive?"},
            {"queid":"dnd-r-2", "question":"Were you satisfied with the information covered at the All Hands meeting?"},
            {"queid":"dnd-r-3", "question":"did you gain any knowledge from this session?"},
            {"queid":"dnd-r-4", "question":"How often do you think these meetings should be held?"},
            {"queid":"dnd-r-5", "question":"Do you feel that the speakers were clear in the information they were trying to portray?"}
            
        ]);
        
        
        cmp.set('v.table2Data', []);
    },
    allowDrop : function(cmp, event, helper) {
        event.preventDefault();
    },
    handleDrag : function(cmp, event, helper) {
        cmp.set("v.draggedDivID", event.target.id);
    },
    handleDroptable2 : function(cmp, event, helper) {
        console.log('handledrop2');
        var srcId = cmp.get("v.draggedDivID");
        console.log('srcid'+srcId);
        var table1Data = cmp.get("v.table1Data");
        var table2Data = cmp.get("v.table2Data");
        
        
        //var rowIndex = parseInt(srcId.replace("dnd-r-", ""));
        var rowIndex;
        for(var i=0; i<table1Data.length; i++){
            if(table1Data[i].queid== srcId){
                rowIndex=i;	
            }
        }
        var rowThatWasDragged = table1Data[rowIndex];
        table2Data.push(rowThatWasDragged);
        
        table1Data.splice(rowIndex, 1);
        cmp.set("v.table1Data", table1Data);
        cmp.set("v.table2Data", table2Data);
        var tab2 = cmp.get("v.table2Data");
        console.log('tab2'+tab2);
    },
    handleDroptable1 : function(cmp, event, helper) {
        console.log('handledrop1');
        var srcId = cmp.get("v.draggedDivID");
        console.log('srcid'+srcId);
        var table1Data = cmp.get("v.table1Data");
        var table2Data = cmp.get("v.table2Data");
        
        var rowIndex;
        for(var i=0; i<table2Data.length; i++){
            if(table2Data[i].queid== srcId){
                rowIndex=i;	
            }
        }
        var rowThatWasDragged = table2Data[rowIndex];
        table1Data.push(rowThatWasDragged);
        
        table2Data.splice(rowIndex, 1);
        cmp.set("v.table1Data", table1Data);
        cmp.set("v.table2Data", table2Data);
        var comp1data = cmp.get("v.table1Data");
        console.log('it is comp1data');
        //console.log('comp1data'+comp1data);
        
    },
    
    goToNewPage: function(cmp, event, helper) {
        var element = document.getElementById("test");
        element.style.display = 'none';
        console.log('Came here::');
        var cmp1 = document.getElementById("test2");
        cmp1.style.display = 'none';
        var cmp2 = document.getElementById("test1");
        cmp2.style.display= 'inline';
        
    }, 
    
    cancelfun:function(cmp, event, helper) {
        cmp.set('v.table1Data', [
            {"queid":"dnd-r-0", "question":"Was the audio quality good??"},
            {"queid":"dnd-r-1", "question":"was the session interactive?"},
            {"queid":"dnd-r-2", "question":"Were you satisfied with the information covered at the All Hands meeting?"},
            {"queid":"dnd-r-3", "question":"did you gain any knowledge from this session?"},
            {"queid":"dnd-r-4", "question":"How often do you think these meetings should be held?"},
            {"queid":"dnd-r-5", "question":"Do you feel that the speakers were clear in the information they were trying to portray?"}
            
        ]);
        cmp.set('v.table2Data', []);
    }
    
})