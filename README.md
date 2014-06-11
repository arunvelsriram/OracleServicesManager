OracleServicesManager
=====================

OracleServicesManager is simple Batch script used to start/stop Oracle services in Windows.

The reason behind its development is that, the Oracle services which run in the background 
reduces computer's performance. To enhance the performance these services need to be stopped 
when you are not using Oracle.

This tool was originally created for Oracle 10g Enterprise Edition. So you can make use of it if you have Oracle 10g Enterprise Edition. Otherwise edit the source to make it work with the version of Oracle you have.

How to Use it
-------------
1. Getting things ready
------------------------
	1. Press Win Key + R and type 'services.msc'.
	2. Identify those services that are required for Oracle to run.
	3. Configure them to start manually. To do that right click the service and and choose 
	Properties. In the Properties Dialog set the Startup type as Manual.
	4. Note down the service name from the properties dialog.
	5. Do step 3 and 4 for all the services you identified in step 2.

2. Editing the source
---------------------
	1. If you want to add a service called 'xxx' to the source then add 'net start xxx' to the first if block and 
	'net stop xxx' to the second if block.
	2. Save the file.

So, thats very simple and pretty straight forward. Don't forgot to Start the services when you want to work with Oracle. 

##Important##

	If you are in Winows Vista, Windows 7, Windows 8 or Windows 8.1 always run this file as administrator. 
	To do so right click the file and select "Run as administrator".
