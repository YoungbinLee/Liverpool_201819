setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Burnley'
Awayteam = 'Liverpool'
No_round = 15

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-4-2",
    HomeColour = "#8B1A1A", Home2Colour = "#8EE5EE",
    HomeGKColour = "#76EE00",
    HomeLineup = c(
        "Hart",
        "Bardsley","Tarkowski","Mee","Taylor",
        "Berg Gudmundsson","Westwood","Cork","Brady",
        "Barnes","Wood"
    )
    ,
    HomeSub = c("Lennon 71'",92, "Vydra 83'",102, "Vokes 71'",112),
   
    Away = "4-3-3",
    AwayColour = 'white', Away2Colour = 'gray',
    AwayGKColour = c("#FF34B3"), 
    AwayLineup = c(
        "Alisson",
        "Moreno","van Dijk","Matip","Gomez",
        "Keita","Henderson","Milner",
        "Shaqiri","Origi","Sturridge"
    ),
    AwaySub = c("Alexander-Arnold 23'",52, "Salah 65'",22,
                "Roberto Firmino 66'",102),
    
    Homescorer = c(8),
    Awayscorer = c(8, 102, 9)
)

dev.off()


