trigger task7 on Case (after insert) {
    list<caseteammember> ctms= new list<caseteammember>();
 user u=[select id from user where alias='pkatz'];
    caseteamrole role=[select id from caseteamrole where name='caserole'];
    for(case c:trigger.new){
       if(c.origin=='web'){
            caseteammember ctm= new caseteammember();
            ctm.parentid=c.id;
            ctm.MemberId=u.id;
            ctm.TeamRoleId = role.id;
            ctms.add(ctm);
        }  
    }
    insert ctms;
}