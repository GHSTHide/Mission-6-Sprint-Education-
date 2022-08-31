public class educationProgression {

    public static void courseProgress(){
        List<Contact> educList = [SELECT Id, Prior_Qualification__c, Enrolment_Progression__c FROM Contact];        
        List<Contact> educToUpdate = new list<Contact>();
        
        for(Contact con:educList){
            if(con.Prior_Qualification__c == 'Below Tertiary'){
                con.Enrolment_Progression__C = 'Advanced';
                educToUpdate.add(con);    
            }
            if(con.Prior_Qualification__c == 'Tertiary Graduate'){
                con.Enrolment_Progression__c = 'Ultimate';
                educToUpdate.add(con);       
            }
            if(con.Prior_Qualification__c == 'Tertiary Post-Graduate'){
                con.Enrolment_Progression__c = 'Extra';
                educToUpdate.add(con);       
            }
        }
          update educToUpdate;
          system.debug(educToUpdate);       	
    }//End of Loop
}// End of class