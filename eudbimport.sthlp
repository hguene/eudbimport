{smcl}
{* *! version 1.0b  sep2022}{...}
{cmd:help eudbimport}
{hline}


{title:Version}
1.0b  September 2022



{title:Description}
{p2colset 5 15 17 2}{...}
{p2col :{cmd:eudbimport}} import EUROSTAT databases.{p_end}
{p2colreset}{...}


{title:Syntax}

{p 8 14 2}
{opt eudbimport} {it:DBNAME} {cmd:,} {opt reshapevar(varname)} [ {opt rowdata(string)} {opt outdata(string)} {opt download} {opt select(string)} {opt timeselect(string)}
{opt nosave} ]


{pstd}
dove {it:DBNAME} è il nome del database come riportato sul sito EUROSTAT e va indicato in maiuscolo.
{p_end}

{synoptset 20 tabbed}{...}
{marker options}{...}
{synopthdr}
{synoptline}
{p2coldent : {opt reshapevar(varname)}} è la variabile usata nel reshape e le cui specifiche diventano le nuove variabili.{p_end}
{p2coldent : {opt rawdata(string)}} è il percorso dove verrà scaricato il file del database se si usa l'opzione {opt download} o dove trovare il file DBNAME se scaricato manualmente. Il percorso va specificato
     tra virgolette e con / finale. Se non viene specificato il comando cercherà il file DBANME nella directory di lavoro corrente.{p_end}
{p2coldent : {opt outdata(string)}} è il percorso dove verrà salvato il file del database. Il percorso va specificato
     tra virgolette e con / finale. Se non viene specificato il comando salverà il file DBANME nella directory di lavoro corrente.{p_end}
{p2coldent : {opt download}} specifica che DBNAME deve essere scaricato dal sito di EUROSTAT.{p_end}
{p2coldent : {opt select(string)}} specifica un sottoinsieme di osservazioni di DBNAME che devono essere importate. Si possono usare tutti i
   comandi di Stata per selezionare osservazioni ({opt keep}, {opt drop}...).{p_end}
{p2coldent : {opt select(string)}} specifica l'intervallo temporale da importare.{p_end}
{p2coldent : {opt nosave}} specifica che il database importato non venga salvato.{p_end}
{synoptline}
{p2colreset}{...}



{title:Examples}


{phang2}{cmd: eudbimport NAMA_10_GDP, download outdata("data/out_data/") reshapevar(na_item)}{p_end}




{title:Saved results}
{pstd}
Nessun risultato salvato



{title:Remarks}



{title:References}
{phang}
ISTAT {browse "https://ec.europa.eu/eurostat/databrowser/explore/all/all_themes?lang=en": EUROSTAT Data Browser}



{title:Author}

{pstd}Nicola Tommasi{p_end}
{pstd}Centro Interdipartimentale di Documentazione Economica (C.I.D.E.){p_end}
{pstd}University of Verona, Italy{p_end}
{pstd}nicola.tommasi@univr.it{p_end}
{pstd} {p_end}


{p 7 14 2}Help:  {help eudbimport}{p_end}
