# Match two columns of different dataframes and save in a new dataframe
setwd("C:/Users/crist/Downloads/coisas/indicadores artigos HCPA")
artigos<-artigosdashboard

# Upper case all the info
artigos$ISSN = toupper(artigos$ISSN)
JCR2021$Full.Journal.Title = toupper(JCR2021$Full.Journal.Title)
scimagojr.2020$Title = toupper(scimagojr.2020$Title)

# To match the collumns - impact factor
journalifissn <- merge(JCR2021, scimagojr.2020,
             by.x = "Full.Journal.Title", by.y = "Title" )
write.csv(journalifissn, "journalwosallmetricsscimago.csv")

# To match the collumns - journal
artigosif<- merge(journalifissn, artigos,
                  by.x = "Full.Journal.Title", by.y = "Source.Title" )
write.csv(artigosif, "artigosif.csv")

artigosissn<- merge(journalifissn, artigos,
                    by.x = "Issn", by.y = "ISSN" )
write.csv(artigosif, "artigosif.csv")

### Artigos 2022 de jan a marc
# Upper case all the info
hcpa2022jan.mar$ISSN = toupper(hcpa2022jan.mar$Source.Title)
JCR2021$Full.Journal.Title = toupper(JCR2021$Full.Journal.Title)
scimagojr.2020$Title = toupper(scimagojr.2020$Title)

# To match the collumns - impact factor
journalifissn <- merge(JCR2021, scimagojr.2020,
                       by.x = "Full.Journal.Title", by.y = "Title" )
write.csv(journalifissn, "journalwosallmetricsscimago.csv")

# To match the collumns - journal


hcpa2022jan.marif<- merge(journalifissn, hcpa2022jan.mar,
                  by.x = "Full.Journal.Title", by.y = "Source.Title" )
write.csv(artigosif, "artigosif.csv")

artigosissn<- merge(journalifissn, artigos,
                    by.x = "Issn", by.y = "ISSN" )
write.csv(journalifissn, "journalifissn.csv")

