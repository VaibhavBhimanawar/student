public class StudentController {
    // List to hold student records
    public List<Student__c> students { get; set; }
    public Student__c newStudent { get; set; }

    // Constructor to initialize the students list and new student record
    public StudentController() {
        students = [SELECT Id, Name, Age__c, Grade__c FROM Student__c LIMIT 10]; // Corrected field names
        newStudent = new Student__c(); // Empty student record for input form
    }

    // Method to save a new student
    public PageReference saveStudent() {
        insert newStudent; // Inserts the new student record into Salesforce
        students.add(newStudent); // Add the new student to the list of students
        newStudent = new Student__c(); // Reset the form for the next input
        return null; // Returns to the same page
    }

    // Method to update existing students' details
    public PageReference updateStudent() {
        update students; // Updates the list of students in Salesforce
        return null;
    }
}
