<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Approval Status</fullName>
        <protected>false</protected>
        <recipients>
            <recipient>bhavikapandya16@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <template>unfiled$public/ApprovalRequest</template>
    </alerts>
    <alerts>
        <fullName>Send an email to the opportunity owner</fullName>
        <protected>false</protected>
        <recipients>
            <recipient>bhavikapandya16@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <template>unfiled$public/BigDealEmail</template>
    </alerts>
    <rules>
        <fullName>BigDeal</fullName>
        <actions>
            <name>Send an email to the opportunity owner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Negotiation/Review</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>50000</value>
        </criteriaItems>
        <description>big deal is created</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
