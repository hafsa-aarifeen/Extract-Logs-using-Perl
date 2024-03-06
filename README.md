# Extract-Logs-using-Perl   

This script extracts lines from a log file based on specific criteria defined in an INI configuration file. It utilizes the _Config::IniFiles_ module to read the configuration and search for patterns within the log file.   
Extracted lines are then saved to a separate output file.     

### Prerequisites    
* Need to create a separate configuration file (e.g., config.ini) with the specific information the script needs as input.
* The script requires an additional software module called Config::IniFiles to be installed. Install it using the command **_cpan install Config::IniFiles_**.

### Script Functionality   

#### The script reads the configuration file to get input about   
* The location of the log file.
* specific message pattern we looking for
* How many lines to capture after finding the message?
* What pattern to search for within those captured lines?
* The output file name

#### How the code works
* The script opens the log file specified in the config.
* the script searches line by line for the message specified.
* When it finds the message, the script starts capturing lines. It keeps capturing lines until it reaches the number of lines specified.
*  The script checks if the captured lines contain the other pattern specified.
*  If both patterns are found, the script saves all the captured lines to a new output file.
*  Finally, the script tells if it found anything in the log file and where it saved the captured lines.

### Steps to run the script    

* Save the Perl script as _extract_logs.pl_.    
* Save the configuration file in the same directory as **_config.ini_**   
* Run the script using **_perl extract_logs.pl_**.    
* Enter the INI file name.    
* The output will be saved in _output_file_ specified in config file.

