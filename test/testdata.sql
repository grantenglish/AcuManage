#
# test data, assumes empty tables
#
  
# contacts
insert into contact (id,name,phone,email,notes)
  values ('1','Grant','410.207.9206','grantenglish@yahoo.com','');
insert into contact (id,name,phone,email,notes)
  values ('2','Sandy','410.207.9206','sandyenglish@comcast.net','');

# practitioners
insert into practitioner (id,contactId) values ('1','2');

#patients
insert into patient (id,contactId,practitionerId,notes)
    values ('1','1','1','Test Patient');

#appointments
insert into appointment (id,practitionerId,patientId,appDateTime,notes)
    values ('1','1','1','2014-06-08 10:30:00','Note 1');
insert into appointment (id,practitionerId,patientId,appDateTime,notes)
    values ('2','1','1','2014-06-15 10:30:00','Note 2');
insert into appointment (id,practitionerId,patientId,appDateTime,notes)
    values ('3','1','1','2014-06-22 10:30:00','Note 3');

# treatments
insert into treatment (id,practitionerId,patientId,roomId,trtDateTime,notes)
  values ('1','1','1','1','2014-06-08 10:30:00','Test notes');
