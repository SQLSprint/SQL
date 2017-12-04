 /*
Name:

(C) Andy Jones

mailto:andrew@coeo.com

Description: -

Show the privileges for the SQL Server service account. This requires xp_cmdshell to be available.

Change History: -
1.0 04/12/2017 Created.

License: free to download and use providing this header is kept in place. Author consent is required for
any sale or re-distibution.
*/
EXECUTE sp_configure 'show advanced options', '1';
RECONFIGURE;
EXECUTE sp_configure 'xp_cmdshell', '1';
RECONFIGURE;
EXECUTE xp_cmdshell 'whoami /priv'
EXECUTE sp_configure 'xp_cmdshell', '0';
RECONFIGURE;
GO