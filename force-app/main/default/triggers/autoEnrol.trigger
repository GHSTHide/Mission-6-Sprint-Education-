trigger autoEnrol on Contact (before insert, before update, after insert, after update) {
    for(Contact con:Trigger.new){       
        
        List<Course_Enrolment__C> courseToInsert = new List<Course_Enrolment__C>();
        
        if(trigger.isAfter){
            if(Trigger.isInsert){
                
                    Course_Enrolment__C cou = new Course_Enrolment__C();
                    cou.Course_Name__c = 'a005h00000aGMkBAAW';
                    cou.Student__C = con.id;                   
                    courseToInsert.add(cou);
                    insert courseToInsert;                  
          }            
        }
    }// end of for loop  
}// end of trigger