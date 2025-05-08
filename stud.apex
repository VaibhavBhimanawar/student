<apex:page controller="StudentController">
    <apex:form >
        <!-- Form for creating a new student -->
        <apex:pageBlock title="Create New Student">
            <apex:pageBlockSection columns="2">
                <apex:inputField value="{!newStudent.Name}" label="Student Name"/>
                <apex:inputField value="{!newStudent.Age__c}" label="Age"/>
                <apex:inputField value="{!newStudent.Grade__c}" label="Grade"/>
            </apex:pageBlockSection>
            <!-- Submit button to save the student -->
            <apex:commandButton value="Save Student" action="{!saveStudent}"/>
        </apex:pageBlock>

        <!-- Display existing students -->
        <apex:pageBlock title="Existing Students">
            <apex:pageBlockTable value="{!students}" var="stu">
                <apex:column value="{!stu.Name}" headerValue="Student Name"/>
                <apex:column value="{!stu.Age__c}" headerValue="Age"/>
                <apex:column value="{!stu.Grade__c}" headerValue="Grade"/>
                <apex:column >
                    <!-- Button to update student -->
                    <apex:commandButton value="Update" action="{!updateStudent}" />
                </apex:column>
            </apex:pageBlockTable>
        </apex:pageBlock>
    </apex:form>
</apex:page>
