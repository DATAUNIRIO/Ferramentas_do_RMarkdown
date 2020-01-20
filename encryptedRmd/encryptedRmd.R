# https://github.com/dirkschumacher/encryptedRmd

#remotes::install_github("dirkschumacher/encryptedRmd")

library(encryptedRmd)

# Encrypt html files
#library(encryptedRmd)
#encrypt_html_file("devel/example/test.html", output_path = "docs/test.encrypted.html")
#> The key to your file is: 0c0bbfae15c18151f965c4a2bcfef5a40982d638c4e83dac5779c65612568900
#> Your file has been encrypted and saved at docs/test.encrypted.html


#Encrypted rmarkdown html format

---
title: "test"
output: encryptedRmd::encrypted_html_document
---
  
  
  