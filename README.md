# Insertpdf Extension For Quarto

A Quarto shortcode extension that takes advantage of the latex package "pdfpages" to directly add pdf with multiple pages into the report. Also gives control of specific pages to add and trimming off margins before inserting.

## Installing

Note that, it is recommended to use a quarto version at least 1.2 to work with extensions.

```bash
quarto add A2-ai/insertpdf
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

To use this shortcode, start with {{< insertpdf >}}. Inside the shortcode after "insertpdf", add the relative file path to the pdf you want inserted.

For example: 
```
{{< insertpdf ../../this.pdf >}}
```

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

