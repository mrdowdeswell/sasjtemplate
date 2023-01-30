#' Knit using bookdown
#' 
#' @param keep_tex Keep the raw .tex file?
#'
#' @export
with_bookdown = function(keep_tex = TRUE) {
  # locations of resource files in the package
  pkg_resource = function(...) {
    system.file(..., package = "sasjtemplate")
  }

  template = pkg_resource("rmarkdown/templates/sasj-with-bookdown/resources/SASJ-Rmd-Template.tex")

  # call the base bookdown::pdf_document2 function
  bookdown::pdf_document2(
    template         = template,
    #fig_width = 6.5, fig_height = 4,
    toc              = FALSE,
    citation_package = 'natbib',
    md_extensions    = '-autolink_bare_uris', #'-autolink_bare_uris-auto_identifiers'
    pandoc_args      = '--top-level-division=section',
    keep_tex         = keep_tex
  )
}