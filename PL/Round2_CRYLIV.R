setwd("/Users/youngbin/Desktop/R/Blog/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="AppleSDGothicNeo:style=Regular",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
    )

Hometeam = 'CRYSTAL PALACE'
Awayteam = 'LIVERPOOL'
No_round = 2

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-4-2",
    HomeColour = "blue", Home2Colour = "red", 
    HomeGKColour = 'green', 
    HomeLineup = c("Hennessey",
                   "Wan-Bissaka", "Tomkins", "Sakho", "van Aanholt",
                   "Townsend\n(Ward 79')", "Milivojevic",
                   "McArthur", "Schlupp\n(Meyer 83')", 
                   "Benteke\n(Sørlothat 70')", "Zaha")
    ,

    Away = "4-3-3",
    AwayColour = c("#C1CDCD"), Away2Colour = c("#838B8B"),
    AwayGKColour = c("#FFFF00"), 
    AwayLineup = c("Alisson",
                   "Robertson", "van Dijk", "Gomez", "Alexander-Arnold",
                   "Milner\n(Henderson 67')", "Wijnaldum","Keita\n(Lallana 87')",
                   "Salah", "Firmino\n(Sturridge 94')", "Mane")
    ,
    Awayscorer = c(6, 11)
)

dev.off()


