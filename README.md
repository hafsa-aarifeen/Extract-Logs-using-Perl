# Extract-Logs-using-Perl   

This script extracts lines from a log file based on specific criteria defined in an INI configuration file. It utilizes the _Config::IniFiles_ module to read the configuration and search for patterns within the log file.   
Extracted lines are then saved to a separate output file.     

### Prerequisites    
* Need to create a separate configuration file (e.g., config.ini) with the specific information the script needs as input.
* The script requires an additional software module called Config::IniFiles to be installed. Install it using the command **_cpan install Config::IniFiles_**.

### Script Functionality   

#### 01. 
 


### Steps to run the script    

* Save the Perl script as _extract_logs.pl_.    
* Save the configuration file in the same directory as **_config.ini_**   
* Run the script using **_perl extract_logs.pl_**.    
* Enter the INI file name.    
* The output will be saved in _output_file_ specified in config file.

