public class plugin implements process.Plugin {

    public process.PluginResult invoke(process.PluginRequest request){
       string name=(string)request.inputParameters.get('name') ;
        integer age= (integer)request.inputParameters.get('age');
      decimal salary,bonus;
        if(age>30){
            bonus=10000;
            salary=40000;
        }
        else{
            bonus=5000;
            salary=20000;
        }
        map<string,object> restmap= new map<string,object>();
        restmap.put('salary',salary);
        restmap.put('bonus',bonus);
        process.PluginResult pr= new process.PluginResult(restmap);
        return pr;
    }
    public process.PluginDescribeResult describe(){
        process.PluginDescribeResult.inputParameter ip1= new process.PluginDescribeResult.inputParameter('name',process.PluginDescribeResult.parametertype.string,true);
        process.PluginDescribeResult.inputParameter ip2= new process.PluginDescribeResult.inputParameter('age',process.PluginDescribeResult.parametertype.integer,true);
      process.PluginDescribeResult.outputParameter op1= new process.PluginDescribeResult.outputParameter('salary',process.PluginDescribeResult.parametertype.decimal);   
     process.PluginDescribeResult.outputParameter op2= new process.PluginDescribeResult.outputParameter('bonus',process.PluginDescribeResult.parametertype.decimal); 
        process.PluginDescribeResult.inputParameter[] inputpara= new process.PluginDescribeResult.inputParameter[]{ip1,ip2};
            process.PluginDescribeResult.outputParameter[]  outputpara= new process.PluginDescribeResult.outputParameter[]{op1,op2};
      process.PluginDescribeResult result = new process.PluginDescribeResult();
        result.inputParameters= inputpara;
        result.outputParameters= outputpara;
        return result;
    }
}