
<!-- README.md is generated from README.Rmd. Please edit that file. To render README.md use `devtools::build_readme()` -->

# sasjtemplate

<!-- badges: start -->
<!-- badges: end -->

The package `sasjtemplate` installs .Rmd templates for writing a paper
in the style required by the South African Statistical Journal.

## Installation

You can install the development version of
[`sasjtemplate`](https://github.com/mrdowdeswell/sasjtemplate) from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mrdowdeswell/sasjtemplate")
```

## Background

The R markdown templates are derived from the `example.tex` file
provided by the South African Statistical Journal (SASJ) on their
[submissions](https://www.journals.ac.za/index.php/sasj/about/submissions)
page. Each template’s YAML mirrors the instructions provided in the SASJ
`example.tex` file.

## Usage

Once the package is installed, you can create a new .Rmd file using one
of the templates. In RStudio, *File* \> *New File* \> *R Markdown…* will
open a “New R Markdown” dialog box. Select “From Template”, choose one
of the available `sasjtemplate` options, provide a name for your file
and provide a directory to create the folder in.

The resulting .Rmd file may be knitted immediately to produce a sample
.pdf file. The first seven sections of the file are identical to the
file produced from the SASJ .tex template. The eighth section provides
further supporting information on using the R markdown version and
functionality.

Of course, for your purposes, you will need to edit the YAML
(explanatory comments are provided) and contents of the .Rmd file in
order to write your own paper.
