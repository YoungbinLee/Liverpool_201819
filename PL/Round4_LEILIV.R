setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="AppleSDGothicNeo:style=Regular",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
    )

Hometeam = 'Leicester city'
Awayteam = 'Liverpool'
No_round = 4

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-2-3-1",
    HomeColour = "blue", Home2Colour = "blue", 
    HomeGKColour = c("#E0EEEE"),
    HomeLineup = c("Schmeichel",
                   "Ricardo Pereira", "Morgan", "Macguire", "Chilwell",
                   "Mendy", "Ndidi",
                   "Ghezzal", "Maddison\n(Amartey 83')",
                   "Albrighton\n(Iheanacho 61')", "Gray\n(Okazaki 76')")
    ,

    Away = "4-3-3",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = c("#FFFF00"), 
    AwayLineup = c("Alisson",
                   "Robertson", "van Dijk", "Gomez", "Alexander-Arnold\n(Matip 89')",
                   "Milner", "Wijnaldum","Henderson\n(Keita 71')",
                   "Mane", "Firmino", "Salah\n(Shaqiri 71')")
    ,
    
    Homescorer = 8,
    Awayscorer = c(10, 11)
)

dev.off()


