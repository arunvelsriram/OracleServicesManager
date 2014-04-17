@echo off
echo:
echo  Starting/Stopping Oracle services manually in windows     
echo  Originally written for Oracle 10g (may work for other versions also)
echo:
echo  RUN THIS FILE AS ADMINISTRATOR
echo:  
echo  Written by : Arunvel Sriram S
echo  Email : arunvelsriram@gmail.com  
echo: 
REM ##################################################################################                                                                                        
echo            ORACLE SERVICES THAT WILL MAKE YOUR COMPUTER SLOW
echo:
echo                    - OracleDBConsoleorcl
echo                    - OracleJobSchedulerORCL
echo                    - OracleOraDb10g_home1iSQL*Plus
echo                    - OracleOraDb10g_home1TNSListener
echo                    - OracleServiceORCL
REM ##################################################################################
echo ______________________________________________________________________
echo:
echo  [1] Start Oracle services 
echo  [2] Stop Oracle services
echo  [3] Exit
set /p choice=" "
if %choice%==1 (
	net start OracleDBConsoleorcl
	net start OracleJobSchedulerORCL
	net start OracleOraDb10g_home1iSQL*Plus
	net start OracleOraDb10g_home1TNSListener
	net start OracleServiceORCL
)	
if %choice%==2 (
	net stop OracleDBConsoleorcl
	net stop OracleJobSchedulerORCL
	net stop OracleOraDb10g_home1iSQL*Plus
	net stop OracleOraDb10g_home1TNSListener
	net stop OracleServiceORCL
)
if %choice%==3 (
	exit
)
pause
