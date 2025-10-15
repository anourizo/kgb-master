(* Created with the Wolfram Language : www.wolfram.com *)
-(G2fun[scalarcov[], Xcov[]]*metricg[-\[Mu], -\[Nu]]) + 
 Mpl^2*RicciCD[-\[Mu], -\[Nu]] - 
 (Mpl^2*metricg[-\[Mu], -\[Nu]]*RicciScalarCD[])/2 - 
 stressenergy[-\[Mu], -\[Nu]] - CD[-\[Mu]][scalarcov[]]*
  CD[-\[Nu]][scalarcov[]]*Derivative[0, 1][G2fun][scalarcov[], Xcov[]] - 
 metricg[-\[Mu], -\[Nu]]*CD[-\[Alpha]][Xcov[]]*CD[\[Alpha]][scalarcov[]]*
  Derivative[0, 1][G3fun][scalarcov[], Xcov[]] + 
 CD[-\[Alpha]][CD[\[Alpha]][scalarcov[]]]*CD[-\[Mu]][scalarcov[]]*
  CD[-\[Nu]][scalarcov[]]*Derivative[0, 1][G3fun][scalarcov[], Xcov[]] + 
 CD[-\[Mu]][Xcov[]]*CD[-\[Nu]][scalarcov[]]*Derivative[0, 1][G3fun][
   scalarcov[], Xcov[]] + CD[-\[Mu]][scalarcov[]]*CD[-\[Nu]][Xcov[]]*
  Derivative[0, 1][G3fun][scalarcov[], Xcov[]] - 
 metricg[-\[Mu], -\[Nu]]*CD[-\[Alpha]][scalarcov[]]*CD[\[Alpha]][scalarcov[]]*
  Derivative[1, 0][G3fun][scalarcov[], Xcov[]] + 
 2*CD[-\[Mu]][scalarcov[]]*CD[-\[Nu]][scalarcov[]]*
  Derivative[1, 0][G3fun][scalarcov[], Xcov[]]
