password <- "pw"
html_files <- list.files("docs", pattern = "\\.html$", full.names = TRUE, recursive = TRUE)

for (file in html_files) {
  staticryptR::staticryptr(
    files = file,
    directory = ".",
    password = password,
    short = TRUE,
    template_button = "Bestätigen",
    template_color_primary = "#00923f",
    template_color_secondary = "#bce2cc",
    template_instructions = "Um auf den Inhalt des Workshops zugreifen zu können, müssen Sie sich erst einloggen. Einloggen können sich alle Personen, die zu Beginn des Workshops ein Passwort erhalten haben. Sollte es Probleme geben, kontaktieren Sie uns per E-Mail.",
    template_error = "Falsches Passwort",
    template_placeholder = "Passwort",
    template_remember = "Passwort merken",
    template_title = "Data Scientist - Focus Python"
    # template_toggle_hide = "template_toggle_hide",
    # template_toggle_show = "template_toggle_show"
  )
  
  cat(glue::glue("\n\n> Encrypted '{file}'"))
}