<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email Alert2</fullName>
        <protected>false</protected>
        <recipients>
            <recipient>bhavikapandya16@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <alerts>
        <fullName>NewProjectCreated</fullName>
        <protected>false</protected>
        <recipients>
            <recipient>bhavikapandya16@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>ClosedStatus</fullName>
        <description>Status will be closed</description>
        <field>End_Date__c</field>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ClosedStatus1</fullName>
        <description>Status will be closed</description>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>5DayspriorProjectDetails</fullName>
        <actions>
            <name>Email Alert2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send an email notification to remind the Project Manager</description>
        <formula>TRUE</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Calendar task</fullName>
        <actions>
            <name>task1</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Calender Task is assigned to manager whenever a new project is created</description>
        <formula>TRUE</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>NewProjectEmail</fullName>
        <actions>
            <name>NewProjectCreated</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send a notification email</description>
        <formula>TRUE</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>ProjectStatus</fullName>
        <actions>
            <name>ClosedStatus1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>The Project status as Closed if the End Date is today</description>
        <formula>TODAY() == End_Date__c</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>task1</fullName>
        <assignedTo>bhavikapandya16@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Project__c.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
    </tasks>
</Workflow>
