\version "2.19.83"

\include "notas/vluno.ly"
\include "notas/vldos.ly"
\include "notas/vlauno.ly"
\include "notas/vlados.ly"
\include "notas/vc.ly"
\include "notas/globales.ly"
\include "notas/funciones.ly"

#(define-markup-command (bookpart-page-number layout props) () 
    (let ((first-page-number (ly:output-def-lookup layout 'first-page-number)) 
          (page-number (chain-assoc-get 'page:page-number props 0))) 
      (interpret-markup layout props (format "~a" (1+ (- page-number 
first-page-number)))))) 

\bookpart{
  \score { {<<\globalImov \vlunoImov>>}} 
  \score { {<<\globalIImov \vlunoIImov>>}} 
  \score { {<<\globalIIImov \vlunoIIImov>>}} 
  \header { instrument = "Violino primo"}
}

\bookpart{
  \score { {<<\globalImov \vldosImov>>}}
  \score { {<<\globalIImov \vldosIImov>>}} 
  \score { {<<\globalIIImov \vldosIIImov>>}}
  \header { instrument = "Violino secondo"}
}

\bookpart{
  \score { {<<\globalImov \vlaunoImov>>}}
  \score { {<<\globalIImov \vlaunoIImov>>}}
  \score { {<<\globalIIImov \vlaunoIIImov>>}}
  \header { instrument = "Alto primo"}
}

\bookpart{
  \score { {<<\globalImov \vladosImov>>}}
  \score { {<<\globalIImov \vladosIImov>>}}
  \score { {<<\globalIIImov \vladosIIImov>>}}
  \header { instrument = "Alto secondo"}
}

\bookpart{
  \score { {<<\globalImov \vcImov>>}}
  \score { {<<\globalIImov \vcIImov>>}}
  \score { {<<\globalIIImov \vcIIImov>>}}
  \header { instrument = "Basso"}
}

\header {
  title = "Sinfonia concertante I."
  subtitle = "O sia Quintetto I."
  subsubtitle = "per due Violini, due Viole e Basso"
  composer = \markup { \center-column { "Josef Mysliveček" "opera II"}}
  copyright = \pie
  tagline = \markup \teeny {Engraved with Lilypond 2.19}
}

\paper {
  oddHeaderMarkup = \markup \bookpart-page-number
  evenHeaderMarkup = \markup \bookpart-page-number 
}