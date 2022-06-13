use bloodbankms;
select donor_tup from donor;

delimiter $$
create trigger after_donor_update after update
on donor
for each row
begin
insert into yedek set donor_tup = old.tup;
end$$
delimiter ;
show triggers ;
drop trigger after_donor_update;


select hastane_adi from hastane;

delimiter $$
create trigger after_hastane_update after update
on hastane
for each row
begin
insert into yedek set hastane_adi = old.adi;
end$$
delimiter ;
show triggers ;
drop trigger after_hastane_update;


select admin_id from admin;
delimiter $$
create trigger after_admin_update after update
on hastane
for each row
begin
insert into yedek set admin_id = old.id;
end$$
delimiter ;
show triggers ;
drop trigger after_admin_update;
