<#Created by: Dr. Lynn M. Houston, March 23-27, 2020
#Name: COVID KeyCon Viewer ("COVID19 Keyword Convergence Viewer")
#Purpose: Workflow for multiple keyword search and access to JSON objects in COVID19 data set of fulltext articles
#Description: Converts COVID19 JSON files to readable format. Allows multiple key term search of all JSON files (up to 10 terms). Exports results as follows: 1) CSV list showing file name and lines of text containing individual search terms, and 2) a single, merged text file of all articles where all search terms converge (hits containing ALL search terms).
#Instructions: Download research articles from here: https://pages.semanticscholar.org/coronavirus-research. Expand zipped folders. Files will be in JSON format. Copy JSON files into a folder on your desktop named "Covid19_Research. Run this script in Powershell by copying/pasting the text into Powershell, selecting all text, and then clicking "run selection."
#>


#Define paths and directories
$desktopfolder = "$home\Desktop\Covid19_Keyword_Search\"
$hostpath = $desktopfolder
$outputpath = "$home\Desktop\Covid19_Keyword_Search\Search_Results"
$csvoutfolder = "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp"
$dirs1 = ($desktopfolder, $hostpath)
$dirs2 = ($outputpath, $csvoutfolder)


#Create directories
 function Create-dirs(){
    param([Parameter(mandatory = $true)]
    $hostpath)
    if(!(Test-Path -Path $hostpath)){
    New-Item -Path $hostpath -ItemType Directory
    Write-host "$hostpath directory created on your desktop" -ForegroundColor yellow
    }
    else {
    Write-Host "$hostpath already exists" -ForegroundColor yellow
    }
 }
  
foreach($Dir_Path in $dirs1){
Create-dirs $Dir_Path
}
Write-Host "Checking folder structure...
            --
           Please copy all JSON files into 
           $hostpath."
           pause 2.0 

foreach($Dir_Path in $dirs2){
Create-dirs $Dir_Path
}
Write-Host "Preparing files...
            --
           Search results located here: 
           $hostpath." - ForegroundColor yellow


#Prompt user for search terms
$term1 = read-host -Prompt "Input search term #1 and hit enter (you will be asked to enter 10 total)"
Write-Host "Searching for files containing the following: '$term1'"
$term2 = read-host -Prompt "Input search term #2 (hit space bar to leave blank) and hit enter"
Write-Host "Searching for files containing the following: '$term1' and '$term2'"
$term3 = read-host -Prompt "Input search term #3  hit space bar to leave blank) and hit enter"
Write-Host "Searching for files containing the following: '$term1', '$term2', '$term3'"
$term4 = read-host -Prompt "Input search term #4 (hit space bar to leave blank) and hit enter"
Write-Host "Searching for files containing the following: '$term1', '$term2', '$term3', '$term4'"
$term5 = read-host -Prompt "Input search term #5 (hit space bar to leave blank) and hit enter"
Write-Host "Searching for files containing the following: '$term1', '$term2', '$term3', '$term4', '$term5'"
$term6 = read-host -Prompt "Input search term #6 (hit space bar to leave blank) and hit enter"
Write-Host "Searching for files containing the following: '$term1', '$term2', '$term3', '$term4', '$term5', '$term6'"
$term7 = read-host -Prompt "Input search term #7 (hit space bar to leave blank) and hit enter"
Write-Host "Searching for files containing the following: '$term1', '$term2', '$term3', '$term4', '$term5', '$term6', '$term7'"
$term8 = read-host -Prompt "Input search term #8 (hit space bar to leave blank) and hit enter"
Write-Host "Searching for files containing the following:'$term1', '$term2', '$term3', '$term4', '$term5', '$term6', '$term7', '$term8'"
$term9 = read-host -Prompt "Input search term #9 (hit space bar to leave blank) and hit enter"
Write-Host "Searching for files containing the following: '$term1', '$term2', '$term3', '$term4', '$term5', '$term6', '$term7', '$term8', '$term9'"
$term10 = read-host -Prompt "Input search term #10 (hit space bar to leave blank) and hit enter"
Write-Host "Searching for files containing the following: '$term1', '$term2', '$term3', '$term4', '$term5', '$term6', '$term7', '$term8', '$term9', '$term10'"
     

#Generate CSV files with info related to search hits
if ($term1 -ne " ") { 
    Get-ChildItem "$home\Desktop\Covid19_Keyword_Search" -Recurse -Filter *.json | Select-String "$term1" -Context 1,1 | Export-Csv -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\term1_results.csv" -Encoding ASCII -NoTypeInformation
    }
if ($term2 -ne " ") { 
    Get-ChildItem "$home\Desktop\Covid19_Keyword_Search" -Recurse -Filter *.json | Select-String "$term2" -Context 1,1 | Export-Csv -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\term2_results.csv" -Encoding ASCII -NoTypeInformation
    }
if ($term3 -ne " ") { 
    Get-ChildItem "$home\Desktop\Covid19_Keyword_Search" -Recurse -Filter *.json | Select-String "$term3" -Context 1,1 | Export-Csv -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\term3_results.csv" -Encoding ASCII -NoTypeInformation
    }
if ($term4 -ne " ") { 
    Get-ChildItem "$home\Desktop\Covid19_Keyword_Search" -Recurse -Filter *.json | Select-String "$term4" -Context 1,1 | Export-Csv -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\term4_results.csv" -Encoding ASCII -NoTypeInformation
    }
if ($term5 -ne " ") { 
    Get-ChildItem "$home\Desktop\Covid19_Keyword_Search" -Recurse -Filter *.json | Select-String "$term5" -Context 1,1 | Export-Csv -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\term5_results.csv" -Encoding ASCII -NoTypeInformation
    }
if ($term6 -ne " ") { 
    Get-ChildItem "$home\Desktop\Covid19_Keyword_Search" -Recurse -Filter *.json | Select-String "$term6" -Context 1,1 | Export-Csv -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\term6_results.csv" -Encoding ASCII -NoTypeInformation
    }
if ($term7 -ne " ") { 
    Get-ChildItem "$home\Desktop\Covid19_Keyword_Search" -Recurse -Filter *.json | Select-String "$term7" -Context 1,1 | Export-Csv -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\term7_results.csv" -Encoding ASCII -NoTypeInformation
    }
if ($term8 -ne " ") { 
    Get-ChildItem "$home\Desktop\Covid19_Keyword_Search" -Recurse -Filter *.json | Select-String "$term8" -Context 1,1 | Export-Csv -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\term8_results.csv" -Encoding ASCII -NoTypeInformation
    }
if ($term9 -ne " ") { 
    Get-ChildItem "$home\Desktop\Covid19_Keyword_Search" -Recurse -Filter *.json | Select-String "$term9" -Context 1,1 | Export-Csv -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\term9_results.csv" -Encoding ASCII -NoTypeInformation
    }        
if ($term10 -ne " ") { 
    Get-ChildItem "$home\Desktop\Covid19_Keyword_Search" -Recurse -Filter *.json | Select-String "$term10" -Context 1,1 | Export-Csv -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\term10_results.csv" -Encoding ASCII -NoTypeInformation
    }


#Merge CSV files into one
Write-Host "Preparing CSV list of hits...
            --
           Please wait." - ForegroundColor yellow
$filename = "search_list-$(get-date -uformat %d-%m-%Y-%H.%M.%S).csv" 
$outcsv = "$home\Desktop\Covid19_Keyword_Search\Search_Results\$filename"
Get-ChildItem "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp\*.csv" | Select-Object -ExpandProperty FullName | Import-CSV | Export-Csv $outcsv -NoTypeInformation -Append
Get-ChildItem "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp" -Recurse  | Remove-Item -Recurse -Force
Get-Item "$home\Desktop\Covid19_Keyword_Search\Search_Results\CSV_temp"  | Remove-Item -Recurse -Force


#Search JSON data for key terms
Get-ChildItem "$hostpath" -Recurse -Filter *.json |
    where { $_ | Select-String -pattern "$term1" } |
    where { $_ | Select-String -pattern "$term2" } | 
    where { $_ | Select-String -pattern "$term3" } |
    where { $_ | Select-String -pattern "$term4" } | 
    where { $_ | Select-String -pattern "$term5" } |
    where { $_ | Select-String -pattern "$term6" } | 
    where { $_ | Select-String -pattern "$term7" } |
    where { $_ | Select-String -pattern "$term8" } | 
    where { $_ | Select-String -pattern "$term9" } |
    where { $_ | Select-String -pattern "$term10" } | 
Copy-Item -Destination "$outputpath" -ErrorAction Ignore


#Convert JSON files and merge as one TXT file
$outarticles = "$home\Desktop\Covid19_Keyword_Search\Search_Results\merged_articles.txt"
Get-ChildItem "$home\Desktop\Covid19_Keyword_Search\Search_Results\*.json" -include *.json -rec | ForEach-Object {gc -raw $_; ""} | ConvertFrom-Json | out-file $outarticles
Get-ChildItem "$home\Desktop\Covid19_Keyword_Search\Search_Results\*.json" -Exclude ".txt", ".csv" | Remove-Item -Force


#Clean Text: Pass 1
$convert1 = (Get-Content "$home\Desktop\Covid19_Keyword_Search\Search_Results\merged_articles.txt") -replace "metadata", "`rmetadata" -replace "abstract", "`rabstract" -replace "body_text", "`rbody_text" -replace "bib_entries", "`rbib_entries" -replace "ref_entries", "`rref_entries" -replace "back_matter", "`rback_matter" | Out-file "$home\Desktop\Covid19_Keyword_Search\Search_Results\clean_articles.txt"
$convert1


#Clean Text: Pass 2
$convert2 = (Get-Content "$home\Desktop\Covid19_Keyword_Search\Search_Results\clean_articles.txt") -replace "\s\{\@\{text=", "`r" -replace "\@\{text=", " " -replace "\@\{title=", " "  -replace "\;\scite_spans=System.Object\[\]\;\sref_spans=System.Object\[\]\;", " " -replace "\;\sauthors=System.Object\[\]}", " " -replace "section=", "{section=" -replace "\{\{", "{" -replace "}}", "]" -replace "\{", "[" -replace "\}", "]" -replace "…\]", " " -replace "\[section=\]\,", " " -replace "\[\s", " " -replace "\s\s\s\s", "`r" -replace "\[\[", "[" | Out-File "$home\Desktop\Covid19_Keyword_Search\Search_Results\clean2_articles.txt"
$convert2
Rename-Item -Path "$home\Desktop\Covid19_Keyword_Search\Search_Results\clean2_articles.txt" -NewName "articles-$(get-date -uformat %d-%m-%Y-%H.%M.%S).txt" 
Get-Item "$home\Desktop\Covid19_Keyword_Search\Search_Results\merged_articles.txt" | Remove-Item -Force
Get-Item "$home\Desktop\Covid19_Keyword_Search\Search_Results\clean_articles.txt" | Remove-Item -Force

Write-Host "Check Search_Results folder. Files are labelled with timestamps."


