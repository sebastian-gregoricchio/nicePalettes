#' @title plot.palettes
#'
#' @returns A ggplot2 object
#'
#' @export plot.palettes


plot.palettes =
  function(){

    require(ggplot2)

    data("nicePalettes")

    # convert list to data.frame
    pal.df.list = list()

    for (i in 1:length(nicePalettes)) {
      pal.df.list[[i]] = data.frame(palette = names(nicePalettes)[i],
                                    colors = nicePalettes[[i]],
                                    colors_id = gsub("#","",nicePalettes[[i]]),
                                    position = 1:length(nicePalettes[[i]]))
    }

    pal.df = do.call(rbind, pal.df.list)
    pal.df$palette = factor(pal.df$palette, levels = rev(unique(sort(pal.df$palette))))

    color_values = pal.df$colors
    names(color_values) = pal.df$colors_id

    palette_plot =
      ggplot(data = pal.df,
             aes(x = position,
                 y = palette,
                 fill = colors_id)) +
      geom_tile(show.legend = F, width = 1, height = 0.8) +
      scale_fill_manual(values = color_values) +
      theme_void() +
      ggtitle("nicePalettes") +
      theme(axis.text.y = element_text(color = "black", hjust = 1),
            plot.title = element_text(color = "black", hjust = 0.5))

    return(palette_plot)
}
