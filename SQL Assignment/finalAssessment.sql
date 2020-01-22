--Stored procedure for student master table

create proc spInsertStudentMaster
@RegNo bigint,
@name varchar(50),
@gender varchar(15),
@contact bigint,
@email varchar(50)
as
begin
if not exists (select RegNo from studentMaster where RegNo=@RegNo)
begin 
insert into studentMaster values(@RegNo,@name,@gender,@contact,@email);
end
else
begin
print 'Student Registration number already exits';
end
end

--Stored Procedure for studentAssignment table

create proc spInsertStudentAssignment
@ID int,
@name varchar(50)
as
begin
 if exists (select AssignmentID from studentAssignment where AssignmentID=@ID)
 begin
 print 'Assignment ID already Exits'
 end
 else
 begin
 insert into studentAssignment values(@ID,@name); 
 end
end

--Stored Procedure for insertion in student assess table
create proc spInsertStudentAssess
@RegNo bigint,
@AssessID int,
@marks int
as 
begin
if not exists (select AssignmentID from studentAssignment where AssignmentID=@AssessID) or not exists((select RegNo from studentMaster where RegNo=@RegNo))
begin
print 'Registration number or Assignment ID not exists in database' 
end
else if exists (select AssignmentID from studentAssess where AssignmentID=@AssessID and RegNo=@RegNo)
begin
print 'You have already submitted the assignment'
end
else
begin
insert into studentAssess(RegNo,AssignmentID,Marks)values(@RegNo,@AssessID,@marks) ;
end
end


--Query 1 counting the female 

Select count(*) as FemaleCount from studentMaster where Gender='female' 

--Query for record of those trainee who have not submitted any assignment
select * from studentMaster where studentMaster.RegNo not in (select RegNo from studentAssess)

select sm.RegNo,sm.Name from studentMaster sm left join studentAssess sa on sm.RegNo=sa.RegNo where sa.RegNo is  null

--QUery to find the topper of the class

select RegNo,name from studentMaster where RegNo in (select RegNo from studentAssess group  by RegNo having sum(Marks)=(select max(x.high) from (select sum(Marks) as high from studentAssess group by RegNo)x))

select distinct sm.RegNo,sm.Name from studentMaster sm inner join studentAssess sa on sm.RegNo=sa.RegNo where  sa.RegNo= (select top 1 RegNo from studentAssess  group by RegNo order by sum(Marks) desc)

select  sm.RegNo,sm.Name,sa.total as Total from studentMaster sm inner join  (select top 1  RegNo,sum(Marks)as total from studentAssess group by RegNo order by total desc) sa on sm.RegNo=sa.RegNo 

