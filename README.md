# Ferramentas_do_RMarkdown

1. Botão para Dashboard
2. Bsplus

##### For including table of contents in your report
You can add a table of contents using the toc option in the YAML header. 
output:
  html_document:
  number_sections: yes
toc: yes

##### Floating TOC
You can specify the toc_float option to float the table of contents to the left of the main document content. The floating table of contents will always be visible even when the document is scrolled.
output:
  html_document:
  toc: true
toc_float: true
  
  
  
##### Code_folding
hide option enables you to include R code but have it hidden by default. Users can then choose to show hidden R code chunks either indvidually or document wide. For example:
code_folding: hide
  