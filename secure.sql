/* 
These are the SQL commands that I ran to help the school secure their database.
*/ 

/*
The first thing we need to do is manage the roles and permissions. Create the following four permission roles:

p_students_read: permission to read the students table
p_teachers_read: permission to read the teachers table
p_students_write: permission to write to the students table
p_teachers_write: permission to write to the teachers table
*/

-- Create the roles
CREATE ROLE p_students_read;
CREATE ROLE p_teachers_read;
CREATE ROLE p_students_write;
CREATE ROLE p_teachers_write;

/*
Give the roles, p_students_read and p_teachers_read, permission to SELECT items in the students and teachers tables, respectively.
*/

-- Give the roles permission to read
GRANT SELECT ON students TO p_students_read;
GRANT SELECT ON teachers TO p_teachers_read;

/*
Give the roles, p_students_write and p_teachers_write, permission to SELECT, INSERT, UPDATE, and DELETE items in the students and teachers tables, respectively.
*/

-- Give the roles permission to write
GRANT SELECT, INSERT, UPDATE, DELETE ON students TO p_students_write;
GRANT SELECT, INSERT, UPDATE, DELETE ON teachers TO p_teachers_write;

/*
Create two group roles

g_school: group for the school employees
g_district: group for the district employees
*/

-- Create the groups
CREATE ROLE g_school;
CREATE ROLE g_district;

/*
Grant the permission roles, p_students_read and p_teachers_read, to the group g_school.
*/

-- Give the school group read permissions
GRANT p_students_read TO g_school;
GRANT p_teachers_read TO g_school;

/*
Grant the permission roles, p_students_write and p_teachers_write, to the group g_district.
*/

-- Give the district group write permissions
GRANT p_students_write TO g_district;
GRANT p_teachers_write TO g_district;

/*
Create three user account roles that can log in: u_principal_skinner, u_teacher_hodge, and u_it_sonia.
*/

-- Create the user accounts
CREATE ROLE u_principal_skinner;
CREATE ROLE u_teacher_hodge;
CREATE ROLE u_it_sonia;

/*
Add the user role u_principal_skinner to the group g_district and the user roles, u_teacher_hodge and u_it_sonia, to the group g_school.
*/

-- Add the users to the groups
GRANT g_district TO u_principal_skinner;
GRANT g_school TO u_teacher_hodge;
GRANT g_school TO u_it_sonia;

/*
Lastly, add default-deny permissions. Remove all public permissions for the tables, students and teachers.
*/

-- Remove public permissions
REVOKE ALL ON students FROM PUBLIC;
REVOKE ALL ON teachers FROM PUBLIC;
