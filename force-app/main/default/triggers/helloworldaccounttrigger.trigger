trigger helloworldaccounttrigger on Account (before insert) {
 
 MyHelloWorld.addHelloWorld(Trigger.new);
    
}