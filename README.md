# Spatial Modeling in GEE and R

This course provides a guided walk through of the core steps of generating a detection spatial model using remote sensed data. The content is suggested to be completed in the complied order. The material is build off of a R Markdown documents and each folder contains an updated html file that can be read as a user. While the content is design to be used as a standalone document additional resource should be pursued in order to get a full understanding of the process.

## Getting Started

This is a tutorial meant to help you engage with the freely available tools than can be used for spatial modeling. Read through the rest of this document and then download or clone this repo. Tutorials are modular so all data is contained within the "part#" folders. Part one contains a presentation of background information. Part 2-6 contain content. Open the html documents in each part to engage with the material.  part 2:4 & 6 use GEE and part 5 R.

### Prerequisites

*See installation section below for more details*
- Google Earth Engine Account
- R
- R Studio

### Installing

GEE
- all dependences are built into the web interface for GEE.
- an account is needed to accept the web interface. Sign up [here](https://signup.earthengine.google.com/#!/)

R
- install R based on your system requirements [R](https://www.r-project.org/)
- install R studio if needed [RStudio](https://www.rstudio.com/)
The following packages need to installed
```r
# List of necessary packages for tutorial
install.packages('randomForest')
install.packages('rfUtilities')
install.packages('raster')
install.packages('rgdal')
install.packages('corrplot')

```

## Deployment

HTML documents can be open via a web browser
Javascript code needs to be executed in the [GEE gui](https://code.earthengine.google.com/)
R code is recommended to be executed in [RStudio](https://www.rstudio.com/)
## Built With

* [Google Earth Engine ](https://earthengine.google.com/) - Execute Javascript via code.earthengine.google.com
* [R](https://www.r-project.org/) - r markdown docs are created with R studio

## Contributing

Please communicate with Dan Carver at dan.carver@carverd.com before attempting to contribute. Communication is always appreciated

## Versioning

Edits and version are maintained via git and stored on github

## Authors

* **Dan Carver** - primary contact -
* **Dane Coats**
* **Megs Seely**
* **Erika Higa**
* **Tim Mayer**
* **Katie Walker**
* **Jilian Laroe**


## License

No Licensing at this time

## Acknowledgments

* Steven Filippelli and Brian Woodward for initial code
* All those who have provide feedback along the process.
