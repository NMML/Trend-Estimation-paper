# Roxygen to create help files
cd "/media/Hitachi2GB/00NMML/ActiveRPack/spPVsurvey_package"
R
library(roxygen2)
roxygenize("spPlotSampCourse", roclets = c("namespace","rd"))

# build R package in Linux
cd "/media/Hitachi2GB/00NMML/ActiveRPack/spPVsurvey_package"
R CMD build spPVsurvey
R CMD INSTALL spPVsurvey_1.0.tar.gz

# knitr
cd "/media/Hitachi2GB/00NMML/ActiveRPack/PvIliamna_package/pkg-source/PvIliamna/inst/doc/jknit"
R
library(knitr)
knit("trendPVA.Rnw")


#-------------------------------------------------------------------------------
#                    GITHUB
#-------------------------------------------------------------------------------

#github cloud commits
cd "/media/TranscendUSB3.0/Trend-Estimation-Paper-with-Devin/"
git add .
git commit -a -m 'added /inst/scripts to develop code for knitr'
git push github.Trend-Est-Devin
git pull github.Trend-Est-Devin

#to see an earlier version
cd "/media/Hitachi2GB/00NMML/ActiveRPack/spPVsurvey_package"
git log splmm.R
git show c742d1026aa031baf9409c0262b5bc944bb736d1:./covParmIni.R

#initializing stuff
cd "/media/TranscendUSB3.0/Trend-Estimation-Paper-with-Devin/"
git init
git config --global jay.verhoef 'Jay Ver Hoef'
git config --global user.email jay.verhoef@noaa.gov
git remote add github.Trend-Est-Devin https://github.com/NMML/Trend-Estimation-paper.git 
git clone https://github.com/NMML/Trend-Estimation-paper.git
git remote -v

#clean up directory before committing it
cd "/media/TranscendUSB3.0/Trend-Estimation-Paper-with-Devin"
find . -type f -iname \*~ -delete
