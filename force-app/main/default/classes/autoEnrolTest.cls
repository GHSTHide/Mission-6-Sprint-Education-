@isTest
private class autoEnrolTest {
   	@isTest
    private static void testAutoEnrol(){
        
		Test.startTest();

        Contact newStudent = new Contact();
        newStudent.FirstName = 'Test';
		newStudent.LastName = '1';
        newStudent.Prior_Qualification__c = 'Tertiary Graduate';
        newStudent.Enrolment_Progression__c = 'Ultimate';		
        insert newStudent;
        
		List<Course_Enrolment__c> courseToInsert = [SELECT ID, Course_Name__c FROM Course_Enrolment__c];
        
        string courseId;
        for(Course_Enrolment__c enr:courseToInsert){
			courseId = enr.Course_Name__c;
            }
    
    	system.assertEquals('a005h00000aGMkBAAW', courseId);
    	Test.stopTest();
        } 
}