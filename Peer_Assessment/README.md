
<html lang="en" class="">
  <body class="logged_in  env-production windows vis-public page-blob">
   <h1>Getting and Cleaning Data Course Project</h1>	

  <h2><a id="user-content-installation" class="anchor" href="#installation" aria-hidden="true">
      <span class="octicon octicon-link"></span></a>Installation</h2>
   <ul class="task-list">
    <li>Create a <code>project_directory</code> for this assessment (my was "c:\coursera_assesment").</li>
    <li>Download the script <code>run_analysis.R</code> to the project directory.</li>	  
	<li>Download the raw data from 
	  <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a> 
	  the project directory.</li> 
     <ul class="task-list">
	  <li>Unzip it - this will create a new (sub)folder "<code>UCI HAR Dataset</code>.</li>
      <li>Rename that folder with <code>data</code>.</li>
      <li>You can delete the zip file after this step.</li> 
	  <li>The project directory structure should look like this (shown first 2 levels only):
	 <pre><code>project_directory (In my computer "c:\coursera_assesment")
   |- [data] 
   |   |-  [test] 
   |   |-  [train] 
   |   |-  activity_labels.txt
   |   |-  features.txt
   |   |-  features_info.txt
   |   |-  README.txt
   |- run_analysis.R</code></pre></li>	 
	 </ul>
	</ul>  
  <h2><a id="user-content-Dependencies" class="anchor" href="#Dependencies" aria-hidden="true">
      <span class="octicon octicon-link"></span></a>Dependencies</h2>
   <ul class="task-list">  
    <li>The script run_analysis.R depends on the package "data.table".<br>
	    If you have not installed them, you will be prompted a choice to do so.</li>
   </ul>	  
  <h2><a id="user-content-Running-the-analysis" class="anchor" href="#Running-the-analysis" aria-hidden="true">
      <span class="octicon octicon-link"></span></a>Running the analysis</h2>	
   <ul class="task-list">
     <li>Change the <b>working directory</b> in R to the <code>project_directory</code> (my was:  "c:\coursera_assesment").</li>
     <li>Source the script run_analysis.R in R: <code>source("run_analysis.R")</code></li>	
     <li>Two datasets will be written to the <code>project_directory</code>: </li>	 
	 <ul class="task-list">
	  <li>uci-harusd-tidy-raw-data.txt     (tidy joined data, created after Step 4.)</li>
	  <li>uci-harusd-tidy-means-data.txt   (tidy data with means, created after Step 5.)</li>
	 </ul>
   </ul>  
  <h2><a id="user-content-codebook" class="anchor" href="#codebook" aria-hidden="true">
      <span class="octicon octicon-link"></span></a>Codebook</h2>	
   <ul class="task-list"> 
    <li>Information about the datasets is provided in <code>CodeBook.md</code>.</li>    
   </ul>	
  <h2><a id="user-content-Code" class="anchor" href="#Code" aria-hidden="true">
      <span class="octicon octicon-link"></span></a>Code</h2>	  
   <ul class="task-list"> 
    <li>The code contains detailed commments explaining the steps in which the original data was transformed.</li>    
   </ul>	  
  </body>
</html>


