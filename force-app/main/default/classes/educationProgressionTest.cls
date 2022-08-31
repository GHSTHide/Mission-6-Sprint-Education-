@isTest
private class educationProgressionTest {
    @isTest
    private static void testCourseProgress(){
	test.startTest();
        Contact test1 = new contact();
        test1.FirstName = 'Test';
        test1.LastName = '1';
        test1.Prior_Qualification__c = 'Below Tertiary';
        test1.Enrolment_Progression__c = 'Extra';
        insert test1;
        
        educationProgression.CourseProgress();
        
        List<Contact> conList = [Select Id, Prior_Qualification__C, Enrolment_Progression__C FROM Contact];
        
        String enrolProg;
        for(Contact educ:conList){
            enrolProg = educ.Enrolment_Progression__C;
        }
        System.assertEquals('Advanced', enrolProg);
        test.stopTest();
    }
    @isTest
    private static void testCourseProgress2(){
	test.startTest();
        Contact test1 = new contact();
        test1.FirstName = 'Test';
        test1.LastName = '2';
        test1.Prior_Qualification__c = 'Tertiary Graduate';
        test1.Enrolment_Progression__c = 'Advanced';
        insert test1;
        
        educationProgression.CourseProgress();
        
        List<Contact> conList = [Select Id, Prior_Qualification__C, Enrolment_Progression__C FROM Contact];
        
        String enrolProg;
        for(Contact educ:conList){
            enrolProg = educ.Enrolment_Progression__C;
        }
        System.assertEquals('Ultimate', enrolProg);
        test.stopTest();
    }
    @isTest
    private static void testCourseProgress3(){
	test.startTest();
        Contact test1 = new contact();
        test1.FirstName = 'Test';
        test1.LastName = '3';
        test1.Prior_Qualification__c = 'Tertiary Post-Graduate';
        test1.Enrolment_Progression__c = 'Extra';
        insert test1;
        
        educationProgression.CourseProgress();
        
        List<Contact> conList = [Select Id, Prior_Qualification__C, Enrolment_Progression__C FROM Contact];
        
        String enrolProg;
        for(Contact educ:conList){
            enrolProg = educ.Enrolment_Progression__C;
        }
        System.assertEquals('Extra', enrolProg);
        test.stopTest();
    }    
} // End of class