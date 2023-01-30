#' @export
with_bookdown = function(keep_tex = TRUE) {
  # locations of resource files in the package
  pkg_resource = function(...) {
    system.file(..., package = "sasjtemplate")
  }

  template = pkg_resource("rmarkdown/templates/sasj-with-bookdown/resources/SASJ-Rmd-Template.tex")
  #header = pkg_resource("reports/quarterly/header.html")

  # call the base html_document function
  bookdown::pdf_document2(
    template = template,
    #fig_width = 6.5, fig_height = 4,
    toc = FALSE,
    citation_package = 'natbib',
    md_extensions = '-autolink_bare_uris',
    pandoc_args = '--top-level-division=section',
    keep_tex = keep_tex
  )
}