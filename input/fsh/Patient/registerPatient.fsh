Profile: UgandaPatient
Parent: Patient
Id: uganda-patient
Title: "Uganda Patient"
Description: "A training patient profile for Uganda"
* contact 0..*
* contact.relationship 1..1
* contact.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding.code = #N
* contact.name 1..1
* contact.name.given 1..*
* contact.name.family 1..1

* contact.telecom 0..*
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom ^slicing.ordered = false
* contact.telecom ^slicing.description = "Slice based on the type of telecom system."
* contact.telecom contains 
    email 0..* and
    phone 0..*
* contact.telecom[email].value 1..1
* contact.telecom[email].system = #email
* contact.telecom[phone].value 1..1
* contact.telecom[phone].system  = #phone

* maritalStatus 1..1
* gender 1..1
* birthDate 1..1

* name 1..*
* name.family 1..1

