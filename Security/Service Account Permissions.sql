EXECUTE sp_configure 'show advanced options', '1';
RECONFIGURE;
EXECUTE sp_configure 'xp_cmdshell', '1';
RECONFIGURE;
EXECUTE xp_cmdshell 'whoami /priv'
EXECUTE sp_configure 'xp_cmdshell', '0';
RECONFIGURE;
