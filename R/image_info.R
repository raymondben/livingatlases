#' Fetch information about an image, given its image ID
#'
#' Note that there is currently no web service that provides image information, and so we are scraping results directly from the Living Atlas web server.
#' This web scraping may be fragile, and will be replaced by a web-service-based function when one becomes available.
#'
#' @param id character: IDs of images (e.g. as returned by \code{\link{la_occurrences}}  in the imageUrl column). Each ID will be of a format something like "84654e14-dc35-4486-9e7c-40eb2f8d3faa"
#' @param image_number character or numeric: ID numbers of images (e.g. as returned by ALA's image search at \url{https://images.ala.org.au/}. Each \code{image_number} will be of a format something like 122218480
#' @param verbose logical: show additional progress information?
#' @return A data.frame with one row per \code{id}, and at least the columns \code{imageIdentifier} and \code{imageURL}
#' @seealso \code{\link{la_config}}, \code{\link{la_occurrences}}
#' @examples
#' \dontrun{
#' la_image_info(c("84654e14-dc35-4486-9e7c-40eb2f8d3faa",
#'   "39836d30-0761-473d-bac2-9ed9494fd37e")
#' }
#' @export
la_image_info <- function(id, image_number, verbose = la_config()$verbose) {
  ALA4R::image_info(id, image_number, verbose)
}
