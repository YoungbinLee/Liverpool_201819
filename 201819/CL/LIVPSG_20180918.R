setwd("/Users/youngbin/Desktop/Blog/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Paris Saint Germain'
# No_round = 1

CairoPDF(file = paste("CL/Champions League ", "Group C game 1 ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 CHAMPIONS LEAGUE", "Group C game 1", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#FFFF00"), 
    HomeLineup = c("Alisson",
                   "Alexander-Arnold","Gomez","Van Dijk","Robertson",
                   "Milner","Wijnaldum", "Henderson",
                   "Mane\n(Fabinho 93')",
                   "Sturridge\n(Firmino 72')",
                   "Salah\n(Shaqiri 85')")
    ,
   
    Away = "4-3-3",
    AwayColour = "black", Away2Colour = c("#404040"),
    AwayGKColour = c("#00FF00"), 
    AwayLineup = c("Areola",
                   "Bernat","Kimbempe","Thiago Silva","Meuinier",
                   "Di Maria\n(Choupo-Moting 80')","Marquinhos","Rabiot",
                   "Neymar","Cavani\n(Draxler 80')","Mbappe")
    ,
    Homescorer = c(10, 10, 6),
    Awayscorer = c(11, 5)
)

dev.off()


