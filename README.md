# automate_calendar


**Faux projet** pour montrer les atouts qu'on trouve dans la programmation :

- automatisation de tâches pénibles et redondantes manuellement
- reproductibilité
- généricité de l'approche
- présenter git et ces avantages 
- montrer comment présenter un projet aux autres utilisateurs (collègues par exemple)

Accessoirement : 
- générer un calendrier avec les jours fériés et les vacances, souvent utiles dans les services pour organiser le travail en équipe.

## Arborescence du projet et déroulement

```
% tree -L 2
.
├── README.md
├── automate_calendar.Rproj
├── data_in
├── data_out
├── docs
├── main.R
├── reports
└── scripts
    ├── 00_clean_up.R
    ├── 01_faire_calendrier.R
    ├── 02_exporter_calendrier_arborescence.R
    └── 03_reformer_calendrier.R
```

Ce faux projet permet de :

- 00_clean_up.R : nettoyer les répertoires de données intermédiaires
- 01_faire_calendrier.R : générer un tableau R calendrier d'une date début jusqu'à une date fin en arguments
- 02_exporter_calendrier_arborescence.R : générer une arborescence de fichiers comme présenté ci-dessous en aperçu (4018 fichiers xlsx sont générés entre 2015 et 2025, un par jour)
- 03_reformer_calendrier.R : relire tous ces fichiers pour en faire un tableau de données 

- main.R : spécifier date début et date fin et lancer tous les scripts

- reports/rapport_calendrier.qmd : générer un rapport sur le traitement effectué


## Exemple de fichiers produits

```
% tree 
.
├── README.md
├── automate_calendar.Rproj
├── data_in
│   └── calendrier_complet.xlsx
├── data_out
│   ├── 2015
│   │   ├── 01 - janvier
│   │   │   ├── 2015-01-01.xlsx
│   │   │   ├── 2015-01-02.xlsx
│   │   │   ├── 2015-01-03.xlsx
│   │   │   ├── 2015-01-04.xlsx
│   │   │   ├── 2015-01-05.xlsx
│   │   │   ├── 2015-01-06.xlsx
│   │   │   ├── 2015-01-07.xlsx
│   │   │   ├── 2015-01-08.xlsx
│   │   │   ├── 2015-01-09.xlsx
│   │   │   ├── 2015-01-10.xlsx
│   │   │   ├── 2015-01-11.xlsx
│   │   │   ├── 2015-01-12.xlsx
│   │   │   ├── 2015-01-13.xlsx
│   │   │   ├── 2015-01-14.xlsx
│   │   │   ├── 2015-01-15.xlsx
│   │   │   ├── 2015-01-16.xlsx
│   │   │   ├── 2015-01-17.xlsx
│   │   │   ├── 2015-01-18.xlsx
│   │   │   ├── 2015-01-19.xlsx
│   │   │   ├── 2015-01-20.xlsx
│   │   │   ├── 2015-01-21.xlsx
│   │   │   ├── 2015-01-22.xlsx
│   │   │   ├── 2015-01-23.xlsx
│   │   │   ├── 2015-01-24.xlsx
│   │   │   ├── 2015-01-25.xlsx
│   │   │   ├── 2015-01-26.xlsx
│   │   │   ├── 2015-01-27.xlsx
│   │   │   ├── 2015-01-28.xlsx
│   │   │   ├── 2015-01-29.xlsx
│   │   │   ├── 2015-01-30.xlsx
│   │   │   └── 2015-01-31.xlsx
│   │   ├── 02 - février
│   │   │   ├── 2015-02-01.xlsx
│   │   │   ├── 2015-02-02.xlsx
│   │   │   ├── 2015-02-03.xlsx
│   │   │   ├── 2015-02-04.xlsx
│   │   │   ├── 2015-02-05.xlsx
│   │   │   ├── 2015-02-06.xlsx
│   │   │   ├── 2015-02-07.xlsx
│   │   │   ├── 2015-02-08.xlsx
│   │   │   ├── 2015-02-09.xlsx
│   │   │   ├── 2015-02-10.xlsx
│   │   │   ├── 2015-02-11.xlsx
│   │   │   ├── 2015-02-12.xlsx
│   │   │   ├── 2015-02-13.xlsx
│   │   │   ├── 2015-02-14.xlsx
│   │   │   ├── 2015-02-15.xlsx
│   │   │   ├── 2015-02-16.xlsx
│   │   │   ├── 2015-02-17.xlsx
│   │   │   ├── 2015-02-18.xlsx
│   │   │   ├── 2015-02-19.xlsx
│   │   │   ├── 2015-02-20.xlsx
│   │   │   ├── 2015-02-21.xlsx
│   │   │   ├── 2015-02-22.xlsx
│   │   │   ├── 2015-02-23.xlsx
│   │   │   ├── 2015-02-24.xlsx
│   │   │   ├── 2015-02-25.xlsx
│   │   │   ├── 2015-02-26.xlsx
│   │   │   ├── 2015-02-27.xlsx
│   │   │   └── 2015-02-28.xlsx
│   │   ├── 03 - mars
│   │   │   ├── 2015-03-01.xlsx
│   │   │   ├── 2015-03-02.xlsx
│   │   │   ├── 2015-03-03.xlsx
│   │   │   ├── 2015-03-04.xlsx
│   │   │   ├── 2015-03-05.xlsx
|--------- etcetera
```



