({
    handleSubmit:function(component, event, helper) {
      
    helper.save(component);

    },
    doChange:function(component, event, helper) {
           var surveyIs  = component.get('v.survey');//.Are_you_satisfied_with_the_quality_of__c);
          surveyIs[event.getSource().get("v.name")] = event.getSource().get("v.text");
        component.set('v.survey',surveyIs);
        console.log('event.getSource().get("v.text") ',event.getSource().get("v.text"));
         console.log('event.getSource().get("v.name") ',event.getSource().get("v.name"));
    }
    ,
    handleSuccess : function(component, event, helper) {
		component.set('v.surveyCompleted',true);
	},
    handleOnchange:function(component, event, helper) {
     //   alert(event.getSource().get("v.value"));
        var selected = event.getSource().get("v.value");
        component.set('v.SelectedSurvey',selected);
        console.log('selected '+selected);
        var SelctedSurveyTypesare = component.get('v.SelctedSurveyTypes');
        SelctedSurveyTypesare.push(selected);
        component.set('v.SelctedSurveyTypes',SelctedSurveyTypesare);
        
      /*  if(selected){
            if(selected=='Facilities'){
                 component.set('v.surveyDependentFields',['Are_you_satisfied_with_the_quality_of__c','Do_you_think_Dell_should_have_Day_Care__c']);
            }else if(selected=='Parenting'){
                 component.set('v.surveyDependentFields',['Does_2_Badminton_Courts_sufficient__c','How_do_you_rate_the_entertainment_events__c']);
            }else{
                 component.set('v.surveyDependentFields',['Do_we_need_to_have_more_Indoor_Games__c']);
            }
        }else{
            component.set('v.surveyDependentFields',[]);
        }*/
    },
    handleChange: function (cmp, event) {
        // This will contain an array of the "value" attribute of the selected options
        var selectedOptionValue = event.getParam("value");
      //  alert("Option selected with value: '" + selectedOptionValue.toString() + "'");
        var selVal  =selectedOptionValue.toString().replace(',',';').replace(',',';').replace(',',';');
         var surveyIs  = cmp.get('v.survey');//.Are_you_satisfied_with_the_quality_of__c);
       console.log('selVal ',selVal);
        surveyIs['Do_we_need_to_have_more_Indoor_Games__c'] = selVal;
        cmp.set('v.survey',surveyIs);
    }
})