# Extract-Logs-using-Perl   

This script extracts lines from a log file based on specific criteria defined in an INI configuration file. It utilizes the _Config::IniFiles_ module to read the configuration and search for patterns within the log file.   
Extracted lines are then saved to a separate output file.     

### Prerequisites    
* Need to create a separate configuration file (e.g., config.ini) with the specific information the script needs as input.
* The script requires an additional software module called Config::IniFiles to be installed. Install it using the command **_cpan install Config::IniFiles_**.


