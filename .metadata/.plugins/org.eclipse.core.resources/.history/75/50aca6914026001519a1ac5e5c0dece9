<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Time Based Follow Up</fullName>
        <protected>false</protected>
        <recipients>
            <recipient>bhavikapandya16@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <template>unfiled$public/Follow_up_Date</template>
    </alerts>
    <fieldUpdates>
        <fullName>DNC update</fullName>
        <description>update DNC</description>
        <field>Status__c</field>
        <literalValue>DNC</literalValue>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DNCupdate</fullName>
        <field>RecordTypeId</field>
        <lookupValue>DNC</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Landline Update</fullName>
        <field>Status__c</field>
        <literalValue>Landline</literalValue>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LandlineUpdate</fullName>
        <field>RecordTypeId</field>
        <lookupValue>LANDLINE</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MobileUpdateW F</fullName>
        <field>RecordTypeId</field>
        <lookupValue>MOBILE</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MobileUpdateWF</fullName>
        <field>Status__c</field>
        <literalValue>Mobile</literalValue>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NoNumber update</fullName>
        <field>RecordTypeId</field>
        <lookupValue>NO_NUMBER</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>bhavika1</fullName>
        <field>RecordTypeId</field>
        <lookupValue>NO_NUMBER</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>DNC _WF</fullName>
        <actions>
            <name>DNCupdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Do Not Call WorkFlow</description>
        <formula>DoNotCall == TRUE</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>FollowUp</fullName>
        <actions>
            <name>Time Based Follow Up</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>TODAY() &gt; Follow_Date__c</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Landline WF</fullName>
        <actions>
            <name>LandlineUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( DoNotCall == FALSE, ISBLANK( MobilePhone ) , NOT(ISBLANK( Phone )) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MobileWF</fullName>
        <actions>
            <name>MobileUpdateW F</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>mobile work flow</description>
        <formula>AND( DoNotCall == FALSE, ISBLANK( Phone ) , NOT(ISBLANK( MobilePhone )) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>NoNumberWF</fullName>
        <actions>
            <name>NoNumber update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( DoNotCall == FALSE, ISBLANK( Phone ) ,ISBLANK( MobilePhone ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
