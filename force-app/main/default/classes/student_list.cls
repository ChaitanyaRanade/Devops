public class student_list {
    public Student std {get;set;}
    
    public Student_List(){
        std = new Student();
        std.lastName = 'test';
        std.firstName = 'QA';
        std.city = 'blore';
        std.phone = '238127382';
    }
}