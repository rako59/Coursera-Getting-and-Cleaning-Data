
<html lang="en" class="">
  <body class="logged_in  env-production windows vis-public page-blob">
   <h1>Getting and Cleaning Data Course Project</h1>	

  <h2><a id="user-content-installation" class="anchor" href="#installation" aria-hidden="true">
      <span class="octicon octicon-link"></span></a>Installation</h2>
   <ul class="task-list">
    <li>Create a project directory for this assessment (In my computer:  <code>c:\coursera_assesment</code>)</li>
    <li>Download the script <code>run_analysis.R</code> to the project directory</li>	  
	<li> 
	 <p>Download the raw data from 
	  <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a> 
	  the project directory.</p> 

	  
  <h2><a id="user-content-Dependencies" class="anchor" href="#Dependencies" aria-hidden="true">
      <span class="octicon octicon-link"></span></a>Dependencies</h2>
	  
  <h2><a id="user-content-Running-the-analysis" class="anchor" href="#Running-the-analysis" aria-hidden="true">
      <span class="octicon octicon-link"></span></a>Running the analysis</h2>	 
	  
  <h2><a id="user-content-Codebook" class="anchor" href="#Codebook" aria-hidden="true">
      <span class="octicon octicon-link"></span></a>Codebook</h2>	
	  
  <h2><a id="user-content-Code" class="anchor" href="#Code" aria-hidden="true">
      <span class="octicon octicon-link"></span></a>Code</h2>

  </body>
</html>


1. Create a project directory for this assessment (my was:  "c:\coursera_assesment")
2. Download the script run_analysis.R to the project directory
3. a) Download the raw data from 
      {https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip} the project directory.
   b) Unzip it - this will create a new (sub)folder "UCI HAR Dataset".
   d) Rename the folder with "data".
   e) You can delete the zip file after this step. 
   d) The project directory structure should look like this (shown first 2 levels only):

  c:\coursera_assesment
   |- [data] 
   |   |-  [test] 
   |   |-  [train] 
   |   |-  activity_labels.txt
   |   |-  features.txt
   |   |-  features_info.txt
   |   |-  README.txt
   |- run_analysis.R