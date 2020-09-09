# MLB-Standings

The purpose of this project is to create a visualization of the changes of the MLB standings for each division over the course of the 2020 season.
In order to accomplish this I created a webscraper using python to download the current MLB standings every day from the popular baseball statistics website https://www.baseball-reference.com/ then import the data into R and use ggplot and gganimate to create animated graphs of the standings for each division in the MLB.

There are two versions of my webscraper, the current date scraper and the past date scraper. The current date scraper must be ran every day to obtain the standings; however if a day is missed or forgotten the past date scraper allows to go back to any date and download the standings for that date. I will also create a third one to loop through the entire season and download the standings data from the entire season all in one run however I am not finished with this version yet.

In addition to the webscrapers I also wrote three R scripts to take the raw data and transform it into a usable form for ggplot then I combined everything into an Rmarkdown file which exports the animations into one easy to read html document.

The first R script "mlb standings format.R" takes each individual days standings generated from the webscraper and combines them into one dataframe for each division then exports them for the next script.

The next R script "mlb standings graphics.R" takes the combined data and transforms it into a usable format for ggplot while also adding data for team logos and colors. Then it generates animated ggplot gifs for each division.

The final R script "final output Rmd.Rmd" is just a simple Rmarkdown file that generates an output of an html file containing each animation.

The order to run the scripts are:
1) "current date scraper.ipynb" or "past date scraper.ipynb" (Note: this would have to be done every day from the beginning of the season so I also included the data from the beginning until September 9th.
2) "mlb standings format.R"
3) "mlb standings graphics.R"
4) "final output Rmd.Rmd"

To skip the scripts and just view the final output you can just click on "final-output-Rmd.html"

This is not the complete season standings, only through today September 9th 2020.
