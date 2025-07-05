#' @title get.colors
#'
#' @param palette.name String indicating any palette available in the package (not case-sensitive).
#' @param n.colors Number of colors to return. Default: \code{NULL} (the number of colors of the palette itself).
#' @param reverse Logic value indicating whether the colors should be reversed before being returned. Default: \code{FALSE}.
#' @param start.perc Numeric value between 0 and 100 indicating at which percentage make the palette begin (always considered in the "original" direction). Default" \code{0}.
#' @param end.perc Numeric value between 0 and 100 indicating at which percentage make the palette end (always considered in the "original" direction). Default" \code{100}.
#'
#' @returns A color vector
#'
#' @export get.colors

get.colors =
  function(palette.name,
           n.colors = NULL,
           reverse = FALSE,
           start.perc = 0,
           end.perc = 100) {


    ### Check id
    nicePalettes = nicePalettes::nicePalettes

    if (!(tolower(palette.name) %in% tolower(names(nicePalettes)))) {
      warning(paste0("The palette '",palette.name,"' is not available.\nChoose one among:\n'",
                     paste0(sort(unique(names(nicePalettes))), collapse = "', '"), "'."))
      return()
    } else {
      color_list = nicePalettes[[which(tolower(names(nicePalettes)) == tolower(palette.name))]]
      tot.colors = length(color_list)
    }


    ### select boundaries
    if (start.perc > 0) {
      start = ceiling(tot.colors * start.perc/100)
    } else {
      start = 1
    }


    if (end.perc > start & end.perc < 100) {
      end = ceiling(tot.colors * end.perc/100)
      if (end > tot.colors) {
        end = tot.colors
      }
    } else {
      end = tot.colors
    }


    ## Define if reversing
    if (reverse == F) {
      final.color = color_list[start:end]
    } else {
      final.color = rev(color_list[start:end])
    }


    ## Return colors
    if (is.null(n.colors)) {
      return(final.color)
    } else {
      return(colorRampPalette(final.color)(n.colors))
    }

  } # END function
