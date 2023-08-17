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

After this, inside the shortcode after the file path, you can follow with trim and pages options (respectively) if you want to crop the margins of each page and/or you want only specific pages to be inserted.
For example:
```
{{< insertpdf ../../this.pdf trim="1cm 2cm 3cm 4cm" pages="1,3" >}}
```

This code trims 1cm off the left, 2cm bottom, 3cm right, and 4cm top of each inserted page and inserts only pages 1 and 3 from the pdf. The default is trim 1.35cm off the bottom and all pages inserted.
Please pay attention to where the spaces and the quotations are place in the example.

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

