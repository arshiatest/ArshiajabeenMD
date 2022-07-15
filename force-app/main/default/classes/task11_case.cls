public class task11_case {
    public task11_case(){
    case c= new case(subject='low power',status='working',priority='high');
insert c;
caseteammember ctm= new caseteammember();
user u= [select id from user where alias='ttrai'];
caseteamrole role= [select id from caseteamrole where name='caserole'];
ctm.parentid=c.id;
ctm.memberid=u.id;
ctm.teamroleid=role.id;
insert ctm;

    }
}