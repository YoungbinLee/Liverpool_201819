setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Everton'
Awayteam = 'Liverpool'
No_round = 29

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-2-3-1",
    HomeColour = "blue", Home2Colour = "white",
    HomeGKColour = c("#00FF00"),
    HomeLineup = c(
        "Pickford",
        "Coleman", "Keane", "Zouma", "Digne",
        "Gueye", "Schneiderlin",
        "Walcott", "G Sigurdsson", "Bernard",
        "Calvert_Lewin"
    ),
    HomeSub = c("Richalison 59'", 82, "André Gomes 76'", 72, "Tosun 74", 112),

    Away = "4-3-3",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = c("#FFFF00"),
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Henderson", "Fabinho", "Wijnaldum",
        "Origi", "Mané", "Salah"
    ),
    AwaySub = c("Milner 63'", 82, "Lallana 84'", 102, "Roberto Firmino 63", 92)
)


dev.off()
