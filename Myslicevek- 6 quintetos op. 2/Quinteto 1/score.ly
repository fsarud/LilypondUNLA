\version "2.19.83"

\include "notas/vluno.ly"
\include "notas/vldos.ly"
\include "notas/vlauno.ly"
\include "notas/vlados.ly"
\include "notas/vc.ly"
\include "notas/globales.ly"
\include "notas/funciones.ly"

\score {
  \new StaffGroup {
    <<
      \new Staff \with { instrumentName = \markup { \override #'(baseline-skip . 2 ) \center-column {"Violino" "primo" }}} { <<\globalImov \vlunoImov>> }
      \new Staff \with { instrumentName = \markup { \override #'(baseline-skip . 2 ) \center-column {"Violino" "secondo" }} } { <<\globalImov \vldosImov>>}
      \new Staff \with { instrumentName = \markup { \override #'(baseline-skip . 2 ) \center-column {"Alto" "primo" }} } { << \globalImov \vlaunoImov>> }
      \new Staff \with { instrumentName = \markup { \override #'(baseline-skip . 2 ) \center-column {"Alto" "secondo" }}} { <<\globalImov \vladosImov>> }
      \new Staff \with { instrumentName = "Basso" } { <<\globalImov \vcImov>> }      
    >>
  }
}

\score {
  \new StaffGroup {
    <<
      \new Staff \with {  } { <<\globalIImov \vlunoIImov>> }
      \new Staff \with {  } { <<\globalIImov \vldosIImov>>}
      \new Staff \with {  } { << \globalIImov \vlaunoIImov>> }
      \new Staff \with {  } { <<\globalIImov \vladosIImov>> }
      \new Staff \with {  } { <<\globalIImov \vcIImov>> }      
    >>
  }
}

\score {
  \new StaffGroup {
    <<
      \new Staff \with {  } { <<\globalIIImov \vlunoIIImov>> }
      \new Staff \with {  } { <<\globalIIImov \vldosIIImov>>}
      \new Staff \with {  } { << \globalIIImov \vlaunoIIImov>> }
      \new Staff \with {  } { <<\globalIIImov \vladosIIImov>> }
      \new Staff \with {  } { <<\globalIIImov \vcIIImov>> }      
    >>
  }
}

\header {
  title = "Sinfonia concertante I."
  subtitle = "O sia Quintetto I."
  subsubtitle = "per due Violini, due Viole e Basso"
  composer = \markup { \center-column { "Josef Mysliveček" "opera II"}}
  copyright = \pie
  tagline = \markup \teeny {Engraved with Lilypond 2.19}
}