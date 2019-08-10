setwd("/Users/youngbin/Desktop/Blog/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
    )

Hometeam = 'Tottenham'
Awayteam = 'Liverpool'
No_round = 5

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-4-2",
    HomeColour = "white", Home2Colour = c("#27408B"), 
    HomeGKColour = c("#551A8B"),
    HomeLineup = c("Vorm",
                   "Trippier", "Alderweireld","Vertonghen","Rose",
                   "Eriksen","Dier\n(Wanyama 83')", "Dembélé\n(Lamela 60')",
                   "Winks\n(Son Heung-Min 73')", 
                   "Lucas Moura", "Kane")
    ,

    Away = "4-3-3",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = c("#FFFF00"), 
    AwayLineup = c("Alisson",
                   "Robertson", "van Dijk", "Gomez", 
                   "Alexander-Arnold\n(Matip 90')",
                   "Milner", "Wijnaldum","Keita\n(Sturridge 83')",
                   "Mané", "Firmino\n(Henderson 74')", "Salah")
    ,
    
    Homescorer = 8,
    Awayscorer = c(7, 10)
)

dev.off()


