# Wie funktioniert dieses Repository 


## Grober ablauf zum compilen 

1. Eintragen aller Informationen in ./src/Informationen.tex
2. aufrufen von `make` um die Datei zu compilieren 



## Informationen.tex

Der Erste Teil beschäftigt sich lediglich mit denn Persönlichen Informationenn
Sowie einigen Toggeln 


### Toggels 
diese Toggels verändern verschiedene Dinge des Textes zum Beispiel ändern sie das Deckblatt zu der Vorlage für eine Bachlor arbeit oder sie fügen einen Sperrvermerk hinzu 

Mögliche Optionen 

0 == \False = Option wird ausgeschaltet 
1 == \True  = Option wird angeschaltet 

#### Sperrvermerk

fügt einen Sperrvermerk ein der wie folgt aussieht 

```
Die in dieser schriftlichen Arbeit enthaltenen Informationen sind vertraulichund ausschließlich
 für die entsprechenden Prüfer und Mitarbeiter der Leibniz-Akademie bestimmt.
Jeglicher Zugriff durch andere Personen, Veröffentlichung, Vervielfältigung,
Verteilung oder sonstige in diesem Zusammenhang stehende Handlung sind nur mit ausdrücklicher
Genehmigung der Verf. und \Firma\space zulässig. Darüber hinaus besitzt der
Verf. die urheberrecht\-lichen Ansprüche und \Firma\space die Nutzungsrechte
an bzw. aus dieser Arbeit.
```

falls dieser angepasst werden muss, dann muss dieser in main.tex geändert werden. 

#### BachlorThesis

Toggelt ob das Deckblatt eine Thesis sein soll 
0 ist für eine normale PR / Hausarbeit etc. 


#### Makefile 
Dieser Toggel verwaltet ob die Makefile verwendet wird oder nicht, wenn du mit deinem Text editor / Tex plugin compilen willst musst du das auf false setzten. 
Meine Empfelung ist die makefile zu benutzten. Da diese Genau das macht wie es von mir vorgesehen ist. 


die folgenden beiden Pfade müssen angepasst werden wenn der Toggle auf 0 / False gesetzt wurde. Dies ging leider nicht anders 
```
\addbibresource{./src/quellen.bib}
```
```
\include{./src/Informationen.tex}
```
#### digitalSig

Toggelt ob ein Bild (von deiner Unterschrift) oder eine digitales Signaturfeld erscheinen soll auf der Ehrenwörtlichen erklärung, Wenn true wird ein digitales Signatur feld verwendet 

# Die verschiedene Datein 

Diese Findet man Unter /src/Inhalt sodass man sich mit den anderen Datein nicht beschäftigen muss bis auf die Quellen Datei.


Introduction.tex -> Deine Einleitung 
Main_part.tex    -> Dein Hauptteil dies sollte der größte teil sein du kannst auch gerne hier weitere Unterteilungen machen 
Ending.tex       -> Dein schlussteil



# Make Dokumentation 

die makefile wenn einfach so aufgerufen, compiliert das projekt

## clean 

```shell
$ make clean
```

löscht alle auxillary files und lässt nur die pdf über
