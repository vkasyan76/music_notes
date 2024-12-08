\version "2.24" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 
  } 
 
\score  { 
 
      << \new Staff  = ybcfbwxdbzawe { 
               << \new Voice { gis''' 4  
                      gis''' 16  
                      r 2  
                      fis''' 8.  
                      fis'' 8.  
                      fis'' 8  ~  
                       } 
                     
 
                \new Voice { r 8.  
                      b' 4  ~  
                      b' 16  
                      r 2  
                       } 
                     
 
                 >>
               
             \clef "treble" 
             \time 4/4
             \bar "|"  %{ end measure 1 %} 
             fis'' 4.  
             e'' 8  
             r 32  
             fis'' 16  
             cis''' 8  
             e'' 4.  
             r 16  
             \bar "|"  %{ end measure 2 %} 
             
               << \new Voice { cis''' 4  
                      r 16  
                      fis'' 2  ~  
                      fis'' 16  
                      r 8  
                       } 
                     
 
                \new Voice { r 8.  
                      fis'' 16  
                      r 1  
                      e'' 4  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 3 %} 
             
               << \new Voice { e'' 4  
                      e'' 4  ~  
                      e'' 16  
                      r 4..  
                       } 
                     
 
                \new Voice { r 2  
                      e'' 4..  
                      r 16  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 4 %} 
             
               << \new Voice { b'' 8.  
                      r 4  
                      e'' 4  
                      r 16  
                      e'' 8  
                      gis' 4  
                      e'' 8  ~  
                       } 
                     
 
                \new Voice { r 4  
                      b'' 8.  
                      r 1  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 5 %} 
             
               << \new Voice { r 8  
                      e'' 8.  
                      r 16  
                      e'' 8  
                      r 32  
                      gis' 8  
                      gis' 8  
                      r 16  
                      e'' 8  
                      r 16  
                      b''' 8  
                      e'' 8  
                       } 
                     
 
                \new Voice { r 4  
                      e'' 16  
                      r 2  
                      b''' 8  
                      r 8  
                      e'' 8  
                      r 4  
                       } 
                     
 
                 >>
               
             e'' 8  
             \bar "|"  %{ end measure 6 %} 
             
               << \new Voice { fis'' 8  
                      gis''' 4  ~  
                      gis''' 16  
                      r 2  
                      fis'' 8.  
                      e'' 16  ~  
                       } 
                     
 
                \new Voice { r 4.  
                      e'' 4.  
                      r 4  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 7 %} 
             
               << \new Voice { r 8  
                      e'' 16  
                      b' 8  
                      e'' 8  
                      r 8  
                      e'' 8  
                      fis'' 4  
                      r 8  
                      e'' 8  ~  
                       } 
                     
 
                \new Voice { r 4.  
                      cis''' 16  
                      r 4  
                      r 16  
                      e'' 8  
                      r 8  
                       } 
                     
 
                 >>
               
             e'' 8  
             \bar "|"  %{ end measure 8 %} 
             
               << \new Voice { r 16  
                      fis'' 8.  
                      e'' 2  
                      fis'' 4  
                      r 8  
                       } 
                     
 
                \new Voice { r 2..  
                      e'' 8  
                       } 
                     
 
                 >>
               
             e'' 16  
             \bar "|"  %{ end measure 9 %} 
             
               << \new Voice { r 16  
                      e'' 2  
                      r 8  
                      e'' 4  
                      e'' 4  ~  
                      e'' 16  
                      r 32  
                       } 
                     
 
                \new Voice { r 4.  
                      e'' 16  
                      r 2  
                      e'' 16  ~  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 10 %} 
             e'' 8.  
             e'' 8.  
             r 16  
             e'' 8  
             e'' 4  
             gis' 8.  
             e'' 16  ~  
             \bar "|"  %{ end measure 11 %} 
             
               << \new Voice { e'' 16  
                      r 16  
                      e'' 8  
                      r 8  
                      fis'' 8  
                      c'''' 8.  
                      e'' 8.  
                      fis'' 8.  ~  
                       } 
                     
 
                \new Voice { r 8.  
                      e'' 16  
                      r 4  
                      c'''' 16  
                      r 1  
                       } 
                     
 
                 >>
               
             e'' 32  
             \bar "|"  %{ end measure 12 %} 
             
               << \new Voice { r 16  
                      e'' 8  
                      r 4  
                      e'' 4  
                      r 32  
                      fis'' 4  
                      a''' 4  ~  
                       } 
                     
 
                \new Voice { r 8  
                      g''' 8.  
                      r 2  
                      r 8.  
                       } 
                     
 
                 >>
               
             fis'' 16  
             \bar "|"  %{ end measure 13 %} 
             
               << \new Voice { r 16  
                      fis'' 8.  
                      fis'' 8  
                      r 4  
                      fis'' 8  
                      e'' 8.  
                      fis'' 8.  ~  
                       } 
                     
 
                \new Voice { r 4  
                      r 16  
                      g''' 4  
                      r 4..  
                       } 
                     
 
                 >>
               
             a''' 16  
             \bar "|"  %{ end measure 14 %} 
             fis'' 8  
             e'' 4.  
             fis'' 8.  
             fis'' 8  
             e'' 8.  
             \bar "|"  %{ end measure 15 %} 
             cis''' 1  ~  
             \bar "|"  %{ end measure 16 %} 
             cis''' 2  
             d'' 4..  
             r 16  
             fis'' 8  ~  
             \bar "|"  %{ end measure 17 %} 
             
               << \new Voice { fis'' 4  
                      gis' 4  
                      r 4  
                      fis''' 16  
                      fis'' 8  
                      r 4  
                      b''' 8  ~  
                       } 
                     
 
                \new Voice { r 4  
                      r 16  
                      fis'' 8.  
                      r 4  
                      fis'' 4  
                      r 8  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 18 %} 
             
               << \new Voice { r 8.  
                      cis''' 2  
                      r 4  
                      fis'' 4  
                      g''' 8  ~  
                       } 
                     
 
                \new Voice { r 1  
                      fis'' 4  
                      r 4  
                       } 
                     
 
                 >>
               
             b''' 4  
             \bar "|"  %{ end measure 19 %} 
             
               << \new Voice { r 8  
                      cis''' 2  ~  
                      cis''' 16  
                      r 2  
                       } 
                     
 
                \new Voice { r 2  
                      r 8  
                      fis'' 4.  
                       } 
                     
 
                 >>
               
             g''' 8  
             \bar "|"  %{ end measure 20 %} 
             
               << \new Voice { fis'' 4..  
                      r 4  
                      e'' 4  ~  
                      e'' 16  ~  
                       } 
                     
 
                \new Voice { r 2  
                      e'' 4  ~  
                      e'' 16  
                      r 2  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 21 %} 
             e'' 4..  
             g''' 2  
             gis' 4  ~  
             \bar "|"  %{ end measure 22 %} 
             gis' 2  
             gis' 4  
             fis'' 8.  
             r 32  
             fis''' 8  ~  
             \bar "|"  %{ end measure 23 %} 
             
               << \new Voice { r 16  
                      fis'' 8.  
                      ees'' 4  
                      e'' 8  
                      b'' 8  
                      r 8  
                      e'' 8  
                      e'' 8  
                      cis''' 16  ~  
                       } 
                     
 
                \new Voice { r 2  
                      r 16  
                      b' 8  
                      r 4  
                      r 16  
                       } 
                     
 
                 >>
               
             fis''' 16  
             \bar "|"  %{ end measure 24 %} 
             
               << \new Voice { r 8  
                      cis'' 8.  
                      e'' 8.  
                      e'' 4  
                      e'' 4  
                      r 8  
                       } 
                     
 
                \new Voice { r 2..  
                      e'' 8  ~  
                       } 
                     
 
                 >>
               
             cis''' 8  
             \bar "|"  %{ end measure 25 %} 
             
               << \new Voice { r 8  
                      e'' 8  
                      e'' 4  
                      cis''' 4.  
                      r 4  
                       } 
                     
 
                \new Voice { r 2.  
                      e'' 4  
                       } 
                     
 
                 >>
               
             e'' 8  
             \bar "|"  %{ end measure 26 %} 
             e'' 8  
             e'' 8  
             e'' 8  
             e'' 4  
             g''' 2  ~  
             \bar "|"  %{ end measure 27 %} 
             
               << \new Voice { g''' 16  
                      e'' 8.  
                      e'' 4.  
                      e'' 16  
                      fis''' 4  
                      r 16  
                       } 
                     
 
                \new Voice { r 1  
                      fis'' 8  ~  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 28 %} 
             
               << \new Voice { r 8  
                      fis'' 8  
                      r 32  
                      e'' 4  
                      r 8  
                      fis''' 4  
                      fis'' 8  
                      e'' 8.  
                       } 
                     
 
                \new Voice { r 2  
                      e'' 8  
                      r 1  
                       } 
                     
 
                 >>
               
             fis'' 8  
             \bar "|"  %{ end measure 29 %} 
             e'' 8.  
             < fis'''  e''  > 16   
             r 16  
             e'' 8.  
             e'' 16  
             e'' 4  
             r 32  
             cis''' 4  ~  
             \bar "|"  %{ end measure 30 %} 
             e'' 8.  
             cis''' 32  
             e'' 8.  
             e'' 8.  
             e'' 8.  
             e'' 8.  
             e'' 16  ~  
             \bar "|"  %{ end measure 31 %} 
             
               << \new Voice { e'' 16  
                      e'' 4  
                      e'' 8.  
                      e'' 4  
                      b'' 8.  
                      r 32  
                      b' 8  
                       } 
                     
 
                \new Voice { r 2...  
                      e'' 16  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 32 %} 
             cis''' 2  
             e'' 8  
             r 32  
             e'' 8  
             b' 4..  ~  
             \bar "|"  %{ end measure 33 %} 
             
               << \new Voice { b' 4  
                      ees''' 8.  
                      gis' 4  ~  
                      gis' 16  
                      r 16  
                      b'' 4  
                      e'' 16  ~  
                       } 
                     
 
                \new Voice { r 1  
                      e'' 8  
                      r 2  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 34 %} 
             
               << \new Voice { r 4  
                      e'' 4  
                      e'' 4.  
                      r 4  
                       } 
                     
 
                \new Voice { r 2.  
                      e'' 8.  
                      r 16  
                       } 
                     
 
                 >>
               
             e'' 8.  
             \bar "|"  %{ end measure 35 %} 
             
               << \new Voice { c'''' 4  
                      r 4  
                      gis''' 4  
                      r 2  
                      e'' 8  ~  
                       } 
                     
 
                \new Voice { r 8  
                      e'' 8.  
                      r 4  
                      e'' 4.  
                      r 16  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 36 %} 
             
               << \new Voice { r 4  
                      cis''' 8.  
                      ees'' 8.  
                      fis'' 8.  
                      g''' 4  
                      r 32  
                       } 
                     
 
                \new Voice { r 2...  
                      fis'' 16  ~  
                       } 
                     
 
                 >>
               
             e'' 4  
             \bar "|"  %{ end measure 37 %} 
             
               << \new Voice { r 2  
                      fis'' 4.  
                      r 4  
                      e'' 16  ~  
                       } 
                     
 
                \new Voice { r 2  
                      r 8.  
                      gis' 4  
                      r 16  
                       } 
                     
 
                 >>
               
             fis'' 2  
             \bar "|"  %{ end measure 38 %} 
             
               << \new Voice { r 8.  
                      b'' 8.  
                      r 16  
                      b' 2  
                      r 4  
                       } 
                     
 
                \new Voice { r 2  
                      r 4  
                      r 16  
                      d''' 8.  ~  
                       } 
                     
 
                 >>
               
             e'' 8.  
             \bar "|"  %{ end measure 39 %} 
             
               << \new Voice { r 16  
                      e'' 8.  
                      ees''' 8.  
                      gis' 4  
                      r 4  
                      fis'' 4  
                       } 
                     
 
                \new Voice { r 1  
                      e'' 4  
                      r 4  
                       } 
                     
 
                 >>
               
             d''' 16  
             \bar "|"  %{ end measure 40 %} 
             
               << \new Voice { e'' 4  
                      d''' 4  ~  
                      d''' 16  
                      r 8  
                      fis'' 4  
                      r 8.  
                      e'' 8  ~  
                       } 
                     
 
                \new Voice { r 4..  
                      d''' 16  
                      r 8.  
                      e'' 8.  
                      r 8  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 41 %} 
             
               << \new Voice { r 8  
                      d''' 8.  
                      r 2  
                      e'' 4  ~  
                      e'' 16  
                      e'' 16  ~  
                       } 
                     
 
                \new Voice { r 4  
                      e'' 4.  
                      r 2  
                      e'' 16  
                      r 32  
                       } 
                     
 
                 >>
               
             e'' 8  
             \bar "|"  %{ end measure 42 %} 
             e'' 8  
             e'' 4.  
             e'' 2  ~  
             \bar "|"  %{ end measure 43 %} 
             
               << \new Voice { r 8  
                      e'' 4.  
                      r 8  
                      gis''' 2  ~  
                       } 
                     
 
                \new Voice { r 4..  
                      fis'' 4  
                      r 2  
                       } 
                     
 
                 >>
               
             e'' 8  
             \bar "|"  %{ end measure 44 %} 
             
               << \new Voice { r 16  
                      e'' 4  
                      r 1  
                      e'' 8  ~  
                       } 
                     
 
                \new Voice { r 8.  
                      e'' 2  ~  
                      e'' 8.  
                      r 8  
                       } 
                     
 
                 >>
               
             gis''' 32  
             \bar "|"  %{ end measure 45 %} 
             e'' 4  
             e'' 8.  
             ees'' 4  ~  
             ees'' 16  
             r 16  
             e'' 8  
             fis'' 16  ~  
             \bar "|"  %{ end measure 46 %} 
             
               << \new Voice { r 8.  
                      e'' 16  
                      r 16  
                      fis'' 16  
                      ees'' 8  
                      ees'' 8  
                      r 8  
                      ees'' 4  
                       } 
                     
 
                \new Voice { r 1  
                      a''' 4  
                      r 4  
                       } 
                     
 
                 >>
               
             fis'' 8.  
             \bar "|"  %{ end measure 47 %} 
             
               << \new Voice { e'' 4  
                      cis''' 8.  
                      gis' 4  
                      r 4  
                      b' 4  ~  
                       } 
                     
 
                \new Voice { r 1  
                      gis' 4  
                      r 4  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 48 %} 
             
               << \new Voice { r 8  
                      cis''' 8  
                      r 8  
                      e'' 4.  
                      e'' 4  ~  
                      e'' 16  ~  
                       } 
                     
 
                \new Voice { r 8.  
                      gis' 16  
                      r 2.  
                       } 
                     
 
                 >>
               
             b' 8  
             \bar "|"  %{ end measure 49 %} 
             
               << \new Voice { e'' 8.  
                      e'' 8  
                      r 16  
                      e'' 8  
                      r 8  
                      b' 4  
                      b' 4  ~  
                       } 
                     
 
                \new Voice { r 4  
                      e'' 8  
                      r 8  
                      e'' 4  
                      r 2  
                       } 
                     
 
                 >>
               
             e'' 32  
             \bar "|"  %{ end measure 50 %} 
             
               << \new Voice { r 8  
                      e'' 2  
                      e'' 8  
                      r 16  
                      e'' 8  
                      r 16  
                       } 
                     
 
                \new Voice { r 2..  
                      e'' 8  ~  
                       } 
                     
 
                 >>
               
             b' 8  
             \bar "|"  %{ end measure 51 %} 
             
               << \new Voice { r 16  
                      e'' 8  
                      r 8  
                      e''' 8  
                      r 16  
                      e''' 8  
                      cis''' 8  
                      cis''' 8  
                      b'' 8  
                      e'' 8  
                      b'' 8  
                      r 32  
                      b'' 16  ~  
                       } 
                     
 
                \new Voice { r 8  
                      e''' 16  
                      r 8  
                      e''' 16  
                      r 2  
                      r 8  
                       } 
                     
 
                 >>
               
             e'' 16  
             \bar "|"  %{ end measure 52 %} 
             
               << \new Voice { fis''' 16  
                      r 16  
                      fis'' 16  
                      r 8  
                      fis'' 4  
                      r 8  
                      ees'' 16  
                      ees'' 4  
                      r 8  
                      cis''' 8  ~  
                       } 
                     
 
                \new Voice { r 4  
                      fis'' 8  
                      r 4  
                      fis'' 16  
                      r 4  
                      e'' 4  
                      r 8  
                       } 
                     
 
                 >>
               
             b'' 32  
             \bar "|"  %{ end measure 53 %} 
             
               << \new Voice { r 8  
                      e'' 8.  
                      e'' 4  
                      r 4  
                      e'' 16  
                      r 4  
                      gis' 4  
                       } 
                     
 
                \new Voice { r 4..  
                      e'' 8.  
                      r 16  
                      e'' 4  
                      r 4  
                       } 
                     
 
                 >>
               
             cis''' 4  
             \bar "|"  %{ end measure 54 %} 
             
               << \new Voice { b''' 8  
                      b' 8  
                      r 8  
                      cis''' 8.  
                      r 16  
                      e'' 4  
                      r 4  
                      e'' 16  
                      e'' 16  ~  
                       } 
                     
 
                \new Voice { r 8.  
                      e'' 4  
                      r 2  
                      cis''' 8.  
                      r 8  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 55 %} 
             
               << \new Voice { r 16  
                      e'' 8.  
                      e'' 8  
                      r 16  
                      e'' 4  
                      r 32  
                      e'' 8  
                      gis' 8.  
                       } 
                     
 
                \new Voice { r 2  
                      e'' 8  
                      r 4  
                      fis'' 8  
                      r 2  
                       } 
                     
 
                 >>
               
             e'' 16  
             \bar "|"  %{ end measure 56 %} 
             
               << \new Voice { e'' 8.  
                      e'' 8.  
                      e'' 8  
                      r 8  
                      gis' 8  
                      r 2  
                      e'' 8  ~  
                       } 
                     
 
                \new Voice { r 4..  
                      e'' 16  
                      r 8  
                      gis' 4  
                      r 8  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 57 %} 
             
               << \new Voice { r 8  
                      fis'' 8  
                      r 32  
                      fis'' 8  
                      r 16  
                      fis'' 4  
                      fis'' 16  
                      r 16  
                      fis'' 8  
                      e'' 16  
                      e'' 8.  ~  
                       } 
                     
 
                \new Voice { r 4  
                      e'' 8  
                      r 1  
                       } 
                     
 
                 >>
               
             e'' 8  
             \bar "|"  %{ end measure 58 %} 
             
               << \new Voice { r 16  
                      fis''' 4.  
                      r 4  
                      r 16  
                      f''' 4  
                      cis''' 8  ~  
                       } 
                     
 
                \new Voice { r 2  
                      cis''' 2  
                      r 4  
                       } 
                     
 
                 >>
               
             e'' 16  
             \bar "|"  %{ end measure 59 %} 
             cis''' 8  
             d''' 8.  
             fis'' 4  
             cis''' 8  
             cis''' 8.  
             g''' 16  
             g''' 8  ~  
             \bar "|"  %{ end measure 60 %} 
             g''' 4  
             c''' 4  
             g''' 4  
             r 16  
             cis''' 4  ~  
             \bar "|"  %{ end measure 61 %} 
             
               << \new Voice { cis''' 4  
                      fis''' 2  ~  
                      fis''' 16  
                      r 2  
                       } 
                     
 
                \new Voice { r 2  
                      r 8.  
                      e'' 4  ~  
                      e'' 16  ~  
                       } 
                     
 
                 >>
               
             cis''' 16  
             \bar "|"  %{ end measure 62 %} 
             
               << \new Voice { r 8.  
                      gis' 4  
                      fis'' 8.  
                      fis''' 8.  
                      fis''' 4  
                      r 32  
                       } 
                     
 
                \new Voice { r 2...  
                      fis'' 16  ~  
                       } 
                     
 
                 >>
               
             e'' 8.  
             \bar "|"  %{ end measure 63 %} 
             
               << \new Voice { r 8  
                      fis'' 8  
                      r 8  
                      fis'' 8.  
                      e'' 8.  
                      e'' 4  
                      r 16  
                      e'' 8  ~  
                       } 
                     
 
                \new Voice { r 8.  
                      fis'' 16  
                      r 1  
                      ees'' 8  
                      r 8  
                       } 
                     
 
                 >>
               
             fis'' 8  
             \bar "|"  %{ end measure 64 %} 
             
               << \new Voice { b''' 4  
                      r 16  
                      e'' 1  
                      r 32  
                       } 
                     
 
                \new Voice { r 2...  
                      e'' 16  ~  
                       } 
                     
 
                 >>
               
             e'' 16  
             \bar "|"  %{ end measure 65 %} 
             
               << \new Voice { r 16  
                      b''' 8  
                      r 8  
                      b'' 8.  
                      e'' 4  
                      e'' 4  ~  
                       } 
                     
 
                \new Voice { r 4  
                      b'' 4  
                      r 1  
                       } 
                     
 
                 >>
               
             e'' 16  
             \bar "|"  %{ end measure 66 %} 
             
               << \new Voice { r 16  
                      d'' 4  
                      b'' 4.  
                      e'' 8.  
                      e'' 8  
                      r 16  
                       } 
                     
 
                \new Voice { r 2...  
                      g''' 16  ~  
                       } 
                     
 
                 >>
               
             e'' 16  
             \bar "|"  %{ end measure 67 %} 
             
               << \new Voice { r 4  
                      e'' 8  
                      e'' 8  
                      d''' 8.  
                      b'' 8  
                      r 2  
                      b'' 16  ~  
                       } 
                     
 
                \new Voice { r 2  
                      r 8  
                      e'' 4  ~  
                      e'' 16  
                      r 16  
                       } 
                     
 
                 >>
               
             g''' 8  
             \bar "|"  %{ end measure 68 %} 
             
               << \new Voice { r 8  
                      e'' 4  
                      fis''' 8.  
                      fis'' 2  
                      r 8  
                       } 
                     
 
                \new Voice { r 2..  
                      b'' 8  ~  
                       } 
                     
 
                 >>
               
             b'' 8  
             \bar "|"  %{ end measure 69 %} 
             
               << \new Voice { r 16  
                      e'' 4.  
                      r 8.  
                      b'' 8.  
                      e'' 8.  
                       } 
                     
 
                \new Voice { r 2  
                      e'' 4  
                      r 2  
                       } 
                     
 
                 >>
               
             b'' 16  
             \bar "|"  %{ end measure 70 %} 
             e'' 8.  
             gis''' 4.  
             d''' 4..  
             \bar "|"  %{ end measure 71 %} 
             
               << \new Voice { g''' 4  
                      r 4  
                      g''' 4  
                      cis''' 2  
                      cis''' 8  ~  
                       } 
                     
 
                \new Voice { r 8.  
                      cis''' 8.  
                      r 2  
                      r 8  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 72 %} 
             cis''' 2  
             cis''' 8.  
             g''' 4.  
             b'' 8.  
             \bar "|"  %{ end measure 73 %} 
             
               << \new Voice { gis''' 4.  
                      r 4  
                      e'' 4.  
                       } 
                     
 
                \new Voice { r 2  
                      e'' 4  
                      r 2  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 74 %} 
             
               << \new Voice { e'' 16  
                      e'' 4  
                      r 32  
                      e'' 4.  
                      r 2  
                       } 
                     
 
                \new Voice { r 2  
                      r 8.  
                      e'' 4  ~  
                      e'' 16  ~  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 75 %} 
             fis'' 8.  
             e'' 32  
             e'' 8.  
             e'' 8.  
             e'' 8.  
             e'' 4  ~  
             \bar "|"  %{ end measure 76 %} 
             
               << \new Voice { r 8  
                      e'' 4  
                      r 16  
                      e'' 16  
                      e'' 4  
                      r 4  
                      f''' 4  
                      r 32  
                       } 
                     
 
                \new Voice { r 1  
                      e'' 8.  
                      r 4  
                      c'' 16  ~  
                       } 
                     
 
                 >>
               
             e'' 8  
             \bar "|"  %{ end measure 77 %} 
             c'' 2  ~  
             c'' 16  
             e'' 4.  
             gis' 16  ~  
             \bar "|"  %{ end measure 78 %} 
             
               << \new Voice { r 8  
                      c'''' 8.  
                      b'' 8.  
                      gis' 8.  
                      r 4  
                      r 16  
                       } 
                     
 
                \new Voice { r 1  
                      e'' 2  ~  
                       } 
                     
 
                 >>
               
             gis' 8  
             \bar "|"  %{ end measure 79 %} 
             
               << \new Voice { r 2.  
                      d''' 4  
                      r 8  
                       } 
                     
 
                \new Voice { r 2..  
                      fis'' 16  
                      r 16  
                       } 
                     
 
                 >>
               
             e'' 2.  
             \bar "|"  %{ end measure 80 %} 
             
               << \new Voice { fis'' 8  
                      r 16  
                      fis'' 8  
                      fis'' 4  
                      fis''' 8  
                      bes''' 8  
                      r 8  
                      fis''' 4  
                      r 8  
                       } 
                     
 
                \new Voice { r 16  
                      fis'' 16  
                      r 4..  
                      bes''' 8  
                      r 4  
                      fis''' 8  ~  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 81 %} 
             
               << \new Voice { r 16  
                      a''' 8.  
                      e'' 8.  
                      e''' 4  
                      r 4  
                      ees'' 4  
                      r 32  
                       } 
                     
 
                \new Voice { r 1  
                      e'' 8.  
                      r 4  
                      ees'' 16  ~  
                       } 
                     
 
                 >>
               
             fis''' 16  
             \bar "|"  %{ end measure 82 %} 
             ees'' 4  ~  
             ees'' 16  
             e''' 8.  
             fis''' 8.  
             ees'' 8.  
             ees'' 8  ~  
             \bar "|"  %{ end measure 83 %} 
             
               << \new Voice { r 16  
                      e'' 8.  
                      e'' 4  
                      r 4  
                      fis''' 8.  
                      fis'' 4  
                      fis'' 8  ~  
                       } 
                     
 
                \new Voice { r 4.  
                      ees'' 8.  
                      r 4..  
                       } 
                     
 
                 >>
               
             ees'' 16  
             \bar "|"  %{ end measure 84 %} 
             
               << \new Voice { r 4  
                      e'' 16  
                      e'' 4  
                      r 4  
                      e'' 8.  
                      ees'' 8.  ~  
                       } 
                     
 
                \new Voice { r 4..  
                      d''' 8.  
                      r 4.  
                       } 
                     
 
                 >>
               
             fis'' 4  
             \bar "|"  %{ end measure 85 %} 
             
               << \new Voice { r 4  
                      fis'' 4.  
                      r 2  
                      b'' 8  ~  
                       } 
                     
 
                \new Voice { r 2  
                      e'' 4.  
                      r 8  
                       } 
                     
 
                 >>
               
             ees'' 8.  
             \bar "|"  %{ end measure 86 %} 
             
               << \new Voice { r 16  
                      e'' 4.  
                      r 4  
                      r 16  
                      fis''' 4  
                      e'' 8  ~  
                       } 
                     
 
                \new Voice { r 2  
                      e'' 2  
                      r 4  
                       } 
                     
 
                 >>
               
             b'' 16  
             \bar "|"  %{ end measure 87 %} 
             
               << \new Voice { r 16  
                      b'' 4  
                      r 8  
                      d''' 8.  
                      ees'' 8.  
                      ees'' 8.  
                       } 
                     
 
                \new Voice { r 4  
                      e'' 8.  
                      r 2  
                      r 16  
                       } 
                     
 
                 >>
               
             e'' 8  
             \bar "|"  %{ end measure 88 %} 
             
               << \new Voice { e'' 4  
                      b''' 4  
                      ees'' 8.  
                      r 4  
                      e''' 4  
                      r 4  
                       } 
                     
 
                \new Voice { r 2  
                      ees'' 8.  
                      r 4  
                      e'' 4  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 89 %} 
             
               << \new Voice { ees'' 8.  
                      e'' 8.  
                      fis'' 8.  
                      e'' 2  
                      r 8  
                       } 
                     
 
                \new Voice { r 2..  
                      ees'' 8  ~  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 90 %} 
             
               << \new Voice { r 16  
                      e'' 8.  
                      e'' 8.  
                      ees'' 2  
                      r 4  
                       } 
                     
 
                \new Voice { r 2.  
                      fis''' 4  ~  
                       } 
                     
 
                 >>
               
             ees'' 16  
             \bar "|"  %{ end measure 91 %} 
             fis''' 8  
             e'' 4.  
             e'' 4  
             fis'' 8  
             fis'' 8  
             fis''' 4  
             \bar "|"  %{ end measure 92 %} 
             
               << \new Voice { cis''' 2  
                      g''' 8  
                      e'' 4  
                      g''' 4  
                      r 8  
                       } 
                     
 
                \new Voice { r 2..  
                      e'' 8  ~  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 93 %} 
             e'' 4  
             b''' 4  ~  
             b''' 16  
             r 16  
             b'' 4  
             cis''' 8.  
             \bar "|"  %{ end measure 94 %} 
             
               << \new Voice { e'' 4  ~  
                      e'' 16  
                      fis'' 8.  
                      fis'' 4  
                      b''' 4  
                      r 8  
                       } 
                     
 
                \new Voice { r 2..  
                      e'' 8  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 95 %} 
             
               << \new Voice { e'' 16  
                      r 8  
                      e'' 4  
                      r 16  
                      e'' 4  
                      r 32  
                      ees''' 8.  
                      e'' 16  
                      r 16  
                       } 
                     
 
                \new Voice { e'' 8.  
                      r 4  
                      c'''' 8  
                      r 2  
                      e'' 8  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 96 %} 
             
               << \new Voice { e'' 2  
                      e'' 4  ~  
                      e'' 16  
                      r 32  
                      b'' 8  
                      r 16  
                      e''' 8  
                      r 16  
                       } 
                     
 
                \new Voice { r 2  
                      r 8  
                      e'' 16  
                      r 16  
                      e''' 8  
                      r 8  
                      fis''' 16  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 97 %} 
             
               << \new Voice { fis'' 8  
                      fis''' 16  
                      fis'' 8  
                      r 16  
                      cis''' 8  
                      r 4  
                      fis'' 8.  
                      e'' 4  
                      r 32  
                       } 
                     
 
                \new Voice { r 4  
                      e'' 8  
                      r 8  
                      b'' 8  
                      r 4.  
                      gis' 16  ~  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 98 %} 
             
               << \new Voice { r 8  
                      e'' 4.  
                      e'' 4  
                      e'' 4  
                      r 8  
                       } 
                     
 
                \new Voice { r 2..  
                      fis'' 8  ~  
                       } 
                     
 
                 >>
               
             gis' 8  
             \bar "|"  %{ end measure 99 %} 
             
               << \new Voice { ees'' 4  
                      g''' 8.  
                      r 32  
                      cis''' 8  
                      r 16  
                      e'' 4  
                      ees'' 8  
                      r 8  
                       } 
                     
 
                \new Voice { r 4..  
                      ees'' 16  
                      r 4.  
                      e'' 8  ~  
                       } 
                     
 
                 >>
               
             fis'' 16  
             \bar "|"  %{ end measure 100 %} 
             
               << \new Voice { r 8  
                      cis''' 8  
                      r 8  
                      e'' 8  
                      r 8  
                      a'' 4  
                      r 4  
                      e'' 8  ~  
                       } 
                     
 
                \new Voice { r 8.  
                      ees'' 8  
                      r 8  
                      ees'' 16  
                      r 8.  
                      e'' 8.  
                      r 8  
                       } 
                     
 
                 >>
               
             e'' 8  
             \bar "|"  %{ end measure 101 %} 
             e'' 8.  
             e'' 4  ~  
             e'' 16  
             r 16  
             e'' 8.  
             e'' 4  
             \bar "|"  %{ end measure 102 %} 
             
               << \new Voice { fis'' 4  
                      r 4  
                      cis''' 4.  
                      r 2  
                       } 
                     
 
                \new Voice { r 8  
                      fis'' 8.  
                      r 4.  
                      e'' 4  ~  
                      e'' 16  ~  
                       } 
                     
 
                 >>
               
             \bar "|"  %{ end measure 103 %} 
             
               << \new Voice { r 8  
                      fis'' 8.  
                      r 1  
                      e'' 8  ~  
                       } 
                     
 
                \new Voice { r 4  
                      f, 2  ~  
                      f, 8  
                      r 8  
                       } 
                     
 
                 >>
               
             e'' 16  
             \bar "|"  %{ end measure 104 %} 
             e'' 4  
             e'' 8.  
             gis' 8.  
             e'' 8  
             e'' 8.  
             gis' 16  ~  
             \bar "|"  %{ end measure 105 %} 
             
               << \new Voice { r 8  
                      e'' 8.  
                      gis' 2  
                      r 16  
                      fis'' 8.  
                      gis' 8  ~  
                       } 
                     
 
                \new Voice { r 2  
                      r 8  
                      fis'' 16  
                      r 4  
                      r 16  
                       } 
                     
 
                 >>
               
             gis' 8  
             \bar "|"  %{ end measure 106 %} 
             gis' 16  
             e'' 4  
             e'' 4  
             r 32  
             b' 2  
             b' 8  ~  
             \bar "|"  %{ end measure 107 %} 
             
               << \new Voice { r 4.  
                      b' 4  
                      r 4  
                      e'' 16  
                      r 16  
                      e'' 16  
                      e'' 8  
                      r 16  
                       } 
                     
 
                \new Voice { r 2  
                      gis' 8.  
                      r 4  
                      e'' 16  ~  
                       } 
                     
 
                 >>
               
             b' 2  
             \bar "|"  %{ end measure 108 %} 
             
               << \new Voice { r 8  
                      fis'' 8  
                      r 4  
                      e'' 8  
                      gis' 16  
                      e'' 8  
                      e'' 8  
                      e'' 8  
                      r 16  
                       } 
                     
 
                \new Voice { r 8.  
                      fis'' 8.  
                      r 1  
                      gis' 8  ~  
                       } 
                     
 
                 >>
               
             e'' 16  
             \bar "|"  %{ end measure 109 %} 
             
               << \new Voice { r 8  
                      e'' 4  
                      e'' 4  
                      r 16  
                      e'' 16  
                      r 4  
                      r 16  
                       } 
                     
 
                \new Voice { r 1  
                      e'' 2  ~  
                       } 
                     
 
                 >>
               
             gis' 8  
             \bar "|"  %{ end measure 110 %} 
             
               << \new Voice { b'' 8.  
                      e'' 8.  
                      r 16  
                      cis''' 8.  
                      r 4  
                      b'' 4  ~  
                       } 
                     
 
                \new Voice { r 1  
                      fis'' 4  
                      r 4  
                       } 
                     
 
                 >>
               
             e'' 16  
             \bar "|"  %{ end measure 111 %} 
             b'' 16  
             e'' 4..  
             e'' 16  
             e'' 16  
             e'' 4  
             e'' 16  
             gis' 16  ~  
             \bar "|"  %{ end measure 112 %} 
             
               << \new Voice { r 4  
                      fis'' 4  
                      gis' 8  
                      r 4  
                      cis'' 8  
                      r 16  
                      gis, 4  ~  
                       } 
                     
 
                \new Voice { r 4..  
                      fis'' 8  
                      r 8  
                      a 16  
                      r 4  
                       } 
                     
 
                 >>
               
             gis' 8.  
             \bar "|"  %{ end measure 113 %} 
             gis, 8  
             fis'' 1  ~  
             \bar "|"  %{ end measure 114 %} 
             
               << \new Voice { r 16  
                      a 8  
                      r 16  
                      fis'' 2.  ~  
                       } 
                     
 
                \new Voice { r 4  
                      e'' 8  
                      r 2.  
                       } 
                     
 
                 >>
               
             fis'' 8  
             \bar "|"  %{ end measure 115 %} 
             fis'' 1  ~  
             \bar "|"  %{ end measure 116 %} 
             fis'' 8  
             b'' 8  
             r 32  
             b'' 4  
             r 2  
             r 16  
             \bar "|."  %{ end measure 117 %} 
              } 
            
 
        >>
      
  } 
 
\paper { }
\layout {
  \context {
    % \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t
  }
 }
 
