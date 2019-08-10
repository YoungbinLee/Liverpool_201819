setwd("/Users/youngbin/Desktop/R/Blog/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in CairoFonts page
    regular="AppleSDGothicNeo:style=Regular",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
    )

Hometeam = 'Liverpool'
Awayteam = 'Brighton & Hove Albion'
No_round = 3

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#FFFF00"), 
    HomeLineup = c("Alisson",
                   "Alexander-Arnold\n(Matip 89')","Gomez","Van Dijk","Robertson",
                   "Milner", "Wijnaldum", "Keita\n(Henderson 67')",
                   "Salah", "Firmino",
                   "Mane\n(Sturridge 80')"
                   )
    ,
   
    Away = "4-5-1",
    AwayColour = "white", Away2Colour = "blue",
    AwayGKColour = "black", 
    AwayLineup = c("Ryan",
                   "Bong", "Balogun", "Duffy", "Montoya",
                   "March\n(Locadia 75')", "Bissouma\n(Groß 80')",
                   "Stephens", "Pröpper", "Knockaert\n(Jahanbakhsh 76')",
                   "Murray")
    ,
    Homescorer = c(9)
)

dev.off()


