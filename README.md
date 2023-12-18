# securing-school-data
This repo has been created to demonstrate and document the off-platform project associated with the Data Security module which is part of Codecademy's Backend Engineer Carreer Path.

This challenge project displays knowledge of the following tools/technology
- TLS
- Role Based Access Control (RBAC)
- Authentication and Authorization in Postgres
- Managing Environment Variables

## Brief 
A local elementary school’s database was recently hacked. While the administration believes sensitive information of the students was not the target of this breach, they do not want similar incidents to occur in the future. You and a group of other cybersecurity engineers decide to volunteer your time to secure the school’s Postgres database.

Volunteers were shocked to find that the current configuration of Postgres allowed anyone to connect to the school’s database! The group tasked you to update the broken authentication and access control.

Volunteers also discovered that the school wrote some scripts to generate demographic data. The school shares these scripts with the rest of the schools in the district through a public repository. These scripts, however, contain sensitive data such as API keys for both its local and district database servers. You need to make sure that sensitive information is no longer exposed to the public.

Good luck. The school is counting on you!

> NOTE: If you'd like to checkout the sample code we were provided with checkout the sample branch.

## Actions 
- Secure the database with RBAC, see [secure.sql](./secure.sql). 
- Tighten PostgreSQL security configuration, see [postgresql.conf](./postgresql.conf) and [pg_hba.conf](./pg_hba.conf)
- Implement environment variables, see [sample.env](./sample.env) and [demographics.js](./demographics.js)
- Prevent uploading sensitive information, see [.gitignore](./.gitignore)