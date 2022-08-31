trigger enrolCourse on Course_Enrolment__c (before insert) {
    for(Course_Enrolment__c con:Trigger.new){
        List<Course__C> courseToInsert = new List<Course__c>();
        if(trigger.isAfter){
            if(Trigger.isInsert){
                
                    Course__c cou = new Course__C();
                    //cou.Course_Name__c = 'Sprint Training';
                    cou.Start_Date__c = '1-08-2022';
                    cou.End_Date__c = '30-09-2022';
                    //cou.Student_Name__C = con.id;                   
                    courseToInsert.add(cou);
                    insert courseToInsert;                  
          }            
        }
    }// end of for loop 
}// End of trigger