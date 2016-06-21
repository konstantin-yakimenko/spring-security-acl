insert into contact (first_name, last_name) values
    ('Chris', 'Schaefer');
insert into contact (first_name, last_name) values
    ('Scott', 'Tiger');
insert into contact (first_name, last_name) values
    ('John', 'Smith');

    
    

INSERT INTO acl_sid (id, principal, sid) VALUES
	(1, 1, 'john');
INSERT INTO acl_sid (id, principal, sid) VALUES
	(2, 1, 'jane');
INSERT INTO acl_sid (id, principal, sid) VALUES
	(3, 1, 'mike');

INSERT INTO acl_class (id, class) VALUES
	(1, 'org.krams.tutorial.domain.AdminPost');
INSERT INTO acl_class (id, class) VALUES
	(2, 'org.krams.tutorial.domain.PersonalPost');
INSERT INTO acl_class (id, class) VALUES
	(3, 'org.krams.tutorial.domain.PublicPost');
 
INSERT INTO acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) VALUES
	(1, 1, 1, NULL, 1, 0);
INSERT INTO acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) VALUES
	(2, 1, 2, NULL, 1, 0);
INSERT INTO acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) VALUES
	(3, 1, 3, NULL, 1, 0);
INSERT INTO acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) VALUES
	(4, 2, 1, NULL, 1, 0);
INSERT INTO acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) VALUES
	(5, 2, 2, NULL, 1, 0);
INSERT INTO acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) VALUES
	(6, 2, 3, NULL, 1, 0);
INSERT INTO acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) VALUES
	(7, 3, 1, NULL, 1, 0);
INSERT INTO acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) VALUES
	(8, 3, 2, NULL, 1, 0);
INSERT INTO acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) VALUES
	(9, 3, 3, NULL, 1, 0);
 
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(2, 2, 1, 1, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(3, 3, 1, 1, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(4, 1, 2, 1, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(5, 2, 2, 1, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(6, 3, 2, 1, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(7, 4, 1, 1, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(8, 5, 1, 1, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(9, 6, 1, 1, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(10, 7, 1, 1, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(11, 8, 1, 1, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(12, 9, 1, 1, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(13, 7, 2, 1, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(14, 8, 2, 1, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(15, 9, 2, 1, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(28, 4, 3, 2, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(29, 5, 3, 2, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(30, 6, 3, 2, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(31, 4, 4, 2, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(32, 5, 4, 2, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(33, 6, 4, 2, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(34, 7, 3, 2, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(35, 8, 3, 2, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(36, 9, 3, 2, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(37, 7, 4, 2, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(38, 8, 4, 2, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(39, 9, 4, 2, 2, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(40, 7, 5, 3, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(41, 8, 5, 3, 1, 1, 1, 1);
INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
	(42, 9, 5, 3, 1, 1, 1, 1);

/*    
insert into acl_sid (id, principal, sid) values
	(1, 1, 'john');
insert into acl_sid (id, principal, sid) values
	(2, 1, 'jane');
insert into acl_sid (id, principal, sid) values
	(3, 1, 'mike');

insert into acl_class (id, class) values
	(1, 'ru.jakimenko.test.acl.Contact');

insert into acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) values
	(1, 1, 1, NULL, 1, 0);
insert into acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) values
	(2, 1, 2, NULL, 1, 0);
insert into acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) values
	(3, 1, 3, NULL, 1, 0);

insert into acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) values
	(1, 1, 1, 1, 1, 1, 1, 1);
insert into acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) values
	(2, 2, 1, 1, 1, 1, 1, 1);
insert into acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) values
	(3, 3, 1, 1, 1, 1, 1, 1);
*/
	
	
	
    