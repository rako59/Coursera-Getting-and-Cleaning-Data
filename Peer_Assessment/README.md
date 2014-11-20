
<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>getting-and-cleaning-data-course-project/README.md at master · rako59/Coursera-Getting-and-Cleaning-Data</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="rako59/Coursera-Getting-and-Cleaning-Data" name="twitter:title" /><meta content="getting-and-cleaning-data-course-project - Course project deliverables for the Coursera course &amp;#39;Getting and Cleaning Data&amp;#39;" name="twitter:description" /><meta content="https://avatars3.githubusercontent.com/u/284934?v=3&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars3.githubusercontent.com/u/284934?v=3&amp;s=400" property="og:image" /><meta content="rako59/Coursera-Getting-and-Cleaning-Data" property="og:title" /><meta content="https://github.com/rako59/Coursera-Getting-and-Cleaning-Data" property="og:url" /><meta content="getting-and-cleaning-data-course-project - Course project deliverables for the Coursera course &#39;Getting and Cleaning Data&#39;" property="og:description" />

      <meta name="browser-stats-url" content="/_stats">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    <link rel="xhr-socket" href="/_sockets">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    
    <meta content="Rails, view, blob#show" name="analytics-event" />

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


  </head>
  
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
     <li>Source the script run_analysis.R in R: <code>source("run_analysis.R")</code> </li>	
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


