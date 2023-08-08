return {
  ['insertpdf'] = function(args, kwargs) 
    -- use latex package "pdfpages"
    quarto.doc.use_latex_package("pdfpages")

    -- get arguments from shortcode
    local path = pandoc.utils.stringify(args[1])
    local trimArg = pandoc.utils.stringify(kwargs["trim"])
    local pagesArg = pandoc.utils.stringify(kwargs["pages"])
    
    -- if trimArg has a value, lets use it
    -- otherwise we'll use the default value below
    local trim = "0cm 1.35cm 0cm 0cm" 
    if trimArg ~= "" then
      trim = trimArg
    end

    -- if pagesArg has a value, let's use it
    -- otherwise we'll use the default value below
    local pages = "-"
    if pagesArg ~= "" then
      pages = pagesArg
    end

    -- inserts the pdf into the pandoc 
    return pandoc.RawInline('latex', "\\includepdf[pages={" .. pages .. "}, clip, trim=" .. trim .. " , pagecommand={\\pagestyle{empty}}]{" .. path .. "}")
  end
}
