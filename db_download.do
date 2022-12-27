clear all
set more off


**6883 il 10 ago 2022
**6883 il 10 set 2022
**capture mkdir data
**capture mkdir data/raw_data


/****
import delimited "Full_Items_List_EN.txt", clear varnames(1)

**cd data/raw_data
qui count
forvalues i=1/`r(N)' {
  local urltsv = datadownloadurltsv in `i'
  **local urlcsv = datadownloadurlcsv in `i'
  local filename = code  in `i'
  di "Download file `filename' - `i' of `r(N)'"
  copy "`urltsv'" `filename'.tsv, replace
  **copy "`urlcsv'" `filename'.csv, replace

  if "`c(os)'" == "Unix" shell 7zz a -t7z `filename'.7z `filename'.tsv  -mx9 -bb1
  else shell "$E7z" a -t7z `filename'.7z `filename'.tsv  -mx9 -bb1
  erase `filename'.tsv
}
cd ../..
****************/

**evidenzia cambiamenti nei dbs
import delimited "Full_Items_List_EN0.txt", clear varnames(1)
save temp, replace

import delimited "Full_Items_List_EN.txt", clear varnames(1)
merge 1:1 code using temp

**aggiunti nell'ultimo
fre code if _merge==1

**tolti dal precedente
fre code if _merge==2
erase temp




exit

