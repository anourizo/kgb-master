(* Created with the Wolfram Language : www.wolfram.com *)
-1/8*Lap[pertB[LI[1]]]^2/Mpl^4 + (hubbleC[]*Lap[pertB[LI[2]]])/(4*Mpl^4) + 
 (Lap[pertE[LI[1]]]*Lap[pertphi[LI[1]]])/(2*Mpl^4) - 
 Lap[pertphi[LI[2]]]/(4*Mpl^4) + (Lap[pertB[LI[1]]]*Lap[primepertE[LI[1]]])/
  (4*Mpl^4) - Lap[primepertE[LI[1]]]^2/(8*Mpl^4) - 
 (hubbleC[]*Lap[primepertE[LI[2]]])/(4*Mpl^4) + 
 (Lap[pertF[LI[1], -p$145099]]*Lap[pertF[LI[1], -p$145100]]*
   metric\[Delta][p$145099, p$145100])/(8*Mpl^4) - 
 (Lap[perth[LI[1], -p$145099, -p$145100]]*perth[LI[1], p$145099, p$145100])/
  (8*Mpl^4) + (hubbleC[]*Lap[pertB[LI[1]]]*pertphi[LI[1]])/Mpl^4 - 
 (2*Lap[pertphi[LI[1]]]*pertphi[LI[1]])/Mpl^4 - 
 (hubbleC[]*Lap[primepertE[LI[1]]]*pertphi[LI[1]])/Mpl^4 - 
 (Lap[pertphi[LI[1]]]*pertpsi[LI[1]])/Mpl^4 + (3*hubbleC[]^2*pertpsi[LI[2]])/
  (4*Mpl^4) + (hubbleC[]*Lap[pertF[LI[1], -p$145099]]*pertS[LI[1], p$145099])/
  (2*Mpl^4) + (Lap[pertS[LI[1], -p$145099]]*pertS[LI[1], p$145099])/
  (4*Mpl^4) + (Lap[primepertF[LI[1], -p$145099]]*pertS[LI[1], p$145099])/
  (4*Mpl^4) + pertvelocityvec[LI[1], -p$145099]*
  pertvelocityvec[LI[1], p$145099]*(density[]/(4*Mpl^6) + 
   pressure[]/(4*Mpl^6)) + (hubbleC[]*perth[LI[1], -p$145099, -p$145100]*
   primeperth[LI[1], p$145099, p$145100])/(4*Mpl^4) + 
 (primeperth[LI[1], -p$145099, -p$145100]*primeperth[LI[1], p$145099, 
    p$145100])/(32*Mpl^4) - (Lap[pertB[LI[1]]]*primepertphi[LI[1]])/
  (2*Mpl^4) - (hubbleC[]*Lap[pertE[LI[1]]]*primepertphi[LI[1]])/Mpl^4 + 
 (Lap[primepertE[LI[1]]]*primepertphi[LI[1]])/(2*Mpl^4) + 
 (3*hubbleC[]*pertphi[LI[1]]*primepertphi[LI[1]])/Mpl^4 - 
 (3*primepertphi[LI[1]]^2)/(4*Mpl^4) + (3*hubbleC[]*primepertphi[LI[2]])/
  (4*Mpl^4) + (density[]*pertdensity[LI[2]]*scale[]^2)/(8*Mpl^6) + 
 (density[]*pertdensity[LI[1]]*pertpsi[LI[1]]*scale[]^2)/(2*Mpl^6) + 
 pertS[LI[1], -p$145099]*pertS[LI[1], p$145099]*
  ((3*hubbleC[]^2)/(4*Mpl^4) - (density[]*scale[]^2)/(4*Mpl^6) - 
   (pressure[]*scale[]^2)/(4*Mpl^6)) + pertvelocityvec[LI[1], p$145099]*
  (-1/2*(density[]*scale[])/Mpl^6 - (pressure[]*scale[])/(2*Mpl^6))*
  PD[-p$145099][pertB[LI[1]]] + 
 (hubbleC[]*primeperth[LI[1], -p$145100, p$145099]*
   PD[-p$145099][pertF[LI[1], p$145100]])/(2*Mpl^4) + 
 (hubbleC[]*perth[LI[1], -p$145100, p$145099]*
   PD[-p$145099][pertS[LI[1], p$145100]])/(2*Mpl^4) + 
 (primeperth[LI[1], -p$145100, p$145099]*PD[-p$145099][
    pertS[LI[1], p$145100]])/(8*Mpl^4) + pertvelocityvec[LI[1], p$145099]*
  (density[]/(2*Mpl^6) + pressure[]/(2*Mpl^6))*
  PD[-p$145099][pertvelocity[LI[1]]] + 
 (hubbleC[]*perth[LI[1], -p$145100, p$145099]*
   PD[-p$145099][primepertF[LI[1], p$145100]])/(2*Mpl^4) + 
 (primeperth[LI[1], -p$145100, p$145099]*PD[-p$145099][
    primepertF[LI[1], p$145100]])/(8*Mpl^4) + 
 (Lap[pertF[LI[1], -p$145099]]*PD[p$145099][Lap[pertE[LI[1]]]])/(4*Mpl^4) + 
 (hubbleC[]*pertS[LI[1], -p$145099]*PD[p$145099][Lap[pertE[LI[1]]]])/
  (2*Mpl^4) + (PD[-p$145099][Lap[pertE[LI[1]]]]*
   PD[p$145099][Lap[pertE[LI[1]]]])/(8*Mpl^4) - 
 (hubbleC[]*PD[-p$145099][pertB[LI[1]]]*PD[p$145099][Lap[pertE[LI[1]]]])/
  (2*Mpl^4) + (PD[-p$145099][pertphi[LI[1]]]*PD[p$145099][Lap[pertE[LI[1]]]])/
  (2*Mpl^4) - (hubbleC[]*Lap[pertF[LI[1], -p$145099]]*
   PD[p$145099][pertB[LI[1]]])/(2*Mpl^4) - 
 (Lap[pertS[LI[1], -p$145099]]*PD[p$145099][pertB[LI[1]]])/(4*Mpl^4) - 
 (Lap[primepertF[LI[1], -p$145099]]*PD[p$145099][pertB[LI[1]]])/(4*Mpl^4) + 
 pertS[LI[1], -p$145099]*((-3*hubbleC[]^2)/(2*Mpl^4) + 
   (density[]*scale[]^2)/(2*Mpl^6) + (pressure[]*scale[]^2)/(2*Mpl^6))*
  PD[p$145099][pertB[LI[1]]] + (3*hubbleC[]^2*PD[-p$145099][pertB[LI[1]]]*
   PD[p$145099][pertB[LI[1]]])/(4*Mpl^4) + 
 (hubbleC[]*pertS[LI[1], -p$145099]*PD[p$145099][pertphi[LI[1]]])/(2*Mpl^4) - 
 (hubbleC[]*PD[-p$145099][pertB[LI[1]]]*PD[p$145099][pertphi[LI[1]]])/
  (2*Mpl^4) - (3*PD[-p$145099][pertphi[LI[1]]]*PD[p$145099][pertphi[LI[1]]])/
  (4*Mpl^4) + (hubbleC[]*pertS[LI[1], -p$145099]*
   PD[p$145099][pertpsi[LI[1]]])/Mpl^4 - 
 (hubbleC[]*PD[-p$145099][pertB[LI[1]]]*PD[p$145099][pertpsi[LI[1]]])/Mpl^4 + 
 (hubbleC[]*PD[-p$145099][pertF[LI[1], p$145100]]*
   PD[p$145099][pertS[LI[1], -p$145100]])/(2*Mpl^4) + 
 (PD[-p$145099][pertS[LI[1], p$145100]]*
   PD[p$145099][pertS[LI[1], -p$145100]])/(16*Mpl^4) + 
 (-1/2*(density[]*scale[])/Mpl^6 - (pressure[]*scale[])/(2*Mpl^6))*
  PD[-p$145099][pertB[LI[1]]]*PD[p$145099][pertvelocity[LI[1]]] + 
 (density[]/(4*Mpl^6) + pressure[]/(4*Mpl^6))*
  PD[-p$145099][pertvelocity[LI[1]]]*PD[p$145099][pertvelocity[LI[1]]] + 
 (hubbleC[]*PD[-p$145099][pertF[LI[1], p$145100]]*
   PD[p$145099][primepertF[LI[1], -p$145100]])/(2*Mpl^4) + 
 (PD[-p$145099][pertS[LI[1], p$145100]]*
   PD[p$145099][primepertF[LI[1], -p$145100]])/(8*Mpl^4) + 
 (PD[-p$145099][primepertF[LI[1], p$145100]]*
   PD[p$145099][primepertF[LI[1], -p$145100]])/(16*Mpl^4) + 
 (pertS[LI[1], -p$145099]*PD[p$145099][primepertphi[LI[1]]])/Mpl^4 - 
 (PD[-p$145099][pertB[LI[1]]]*PD[p$145099][primepertphi[LI[1]]])/Mpl^4 - 
 (hubbleC[]*PD[-p$145099][pertF[LI[1], p$145100]]*
   PD[p$145099][PD[-p$145100][pertB[LI[1]]]])/Mpl^4 - 
 (PD[-p$145099][pertS[LI[1], p$145100]]*
   PD[p$145099][PD[-p$145100][pertB[LI[1]]]])/(4*Mpl^4) - 
 (PD[-p$145099][primepertF[LI[1], p$145100]]*
   PD[p$145099][PD[-p$145100][pertB[LI[1]]]])/(4*Mpl^4) + 
 (hubbleC[]*PD[-p$145099][pertS[LI[1], p$145100]]*
   PD[p$145099][PD[-p$145100][pertE[LI[1]]]])/Mpl^4 + 
 (hubbleC[]*PD[-p$145099][primepertF[LI[1], p$145100]]*
   PD[p$145099][PD[-p$145100][pertE[LI[1]]]])/Mpl^4 + 
 (PD[-p$145099][pertF[LI[1], p$145100]]*
   PD[p$145099][PD[-p$145100][pertphi[LI[1]]]])/(2*Mpl^4) + 
 (hubbleC[]*PD[-p$145099][pertF[LI[1], p$145100]]*
   PD[p$145099][PD[-p$145100][primepertE[LI[1]]]])/Mpl^4 + 
 (PD[-p$145099][pertS[LI[1], p$145100]]*
   PD[p$145099][PD[-p$145100][primepertE[LI[1]]]])/(4*Mpl^4) + 
 (PD[-p$145099][primepertF[LI[1], p$145100]]*
   PD[p$145099][PD[-p$145100][primepertE[LI[1]]]])/(4*Mpl^4) + 
 (hubbleC[]*PD[-p$145099][pertF[LI[1], p$145100]]*
   PD[-p$145100][pertS[LI[1], p$145099]])/(2*Mpl^4) + 
 (PD[-p$145099][pertS[LI[1], p$145100]]*PD[-p$145100][
    pertS[LI[1], p$145099]])/(16*Mpl^4) + 
 (hubbleC[]*PD[-p$145099][pertF[LI[1], p$145100]]*
   PD[-p$145100][primepertF[LI[1], p$145099]])/(2*Mpl^4) + 
 (PD[-p$145099][pertS[LI[1], p$145100]]*PD[-p$145100][
    primepertF[LI[1], p$145099]])/(8*Mpl^4) + 
 (PD[-p$145099][primepertF[LI[1], p$145100]]*
   PD[-p$145100][primepertF[LI[1], p$145099]])/(16*Mpl^4) - 
 (Lap[perth[LI[1], -p$145099, -p$145100]]*
   PD[p$145100][pertF[LI[1], p$145099]])/(4*Mpl^4) + 
 (PD[-p$145100][PD[p$145099][pertB[LI[1]]]]*
   PD[p$145100][PD[-p$145099][pertB[LI[1]]]])/(8*Mpl^4) - 
 (hubbleC[]*PD[-p$145100][PD[p$145099][pertB[LI[1]]]]*
   PD[p$145100][PD[-p$145099][pertE[LI[1]]]])/Mpl^4 + 
 (PD[-p$145100][PD[p$145099][pertE[LI[1]]]]*
   PD[p$145100][PD[-p$145099][pertphi[LI[1]]]])/(2*Mpl^4) - 
 (PD[-p$145100][PD[p$145099][pertB[LI[1]]]]*
   PD[p$145100][PD[-p$145099][primepertE[LI[1]]]])/(4*Mpl^4) + 
 (hubbleC[]*PD[-p$145100][PD[p$145099][pertE[LI[1]]]]*
   PD[p$145100][PD[-p$145099][primepertE[LI[1]]]])/Mpl^4 + 
 (PD[-p$145100][PD[p$145099][primepertE[LI[1]]]]*
   PD[p$145100][PD[-p$145099][primepertE[LI[1]]]])/(8*Mpl^4) - 
 (hubbleC[]*perth[LI[1], -p$145099, -p$145100]*
   PD[p$145100][PD[p$145099][pertB[LI[1]]]])/(2*Mpl^4) - 
 (primeperth[LI[1], -p$145099, -p$145100]*
   PD[p$145100][PD[p$145099][pertB[LI[1]]]])/(8*Mpl^4) - 
 (Lap[perth[LI[1], -p$145099, -p$145100]]*
   PD[p$145100][PD[p$145099][pertE[LI[1]]]])/(4*Mpl^4) + 
 (hubbleC[]*primeperth[LI[1], -p$145099, -p$145100]*
   PD[p$145100][PD[p$145099][pertE[LI[1]]]])/(2*Mpl^4) + 
 (perth[LI[1], -p$145099, -p$145100]*PD[p$145100][
    PD[p$145099][pertphi[LI[1]]]])/(4*Mpl^4) + 
 (hubbleC[]*perth[LI[1], -p$145099, -p$145100]*
   PD[p$145100][PD[p$145099][primepertE[LI[1]]]])/(2*Mpl^4) + 
 (primeperth[LI[1], -p$145099, -p$145100]*
   PD[p$145100][PD[p$145099][primepertE[LI[1]]]])/(8*Mpl^4) + 
 (PD[-p$145100][perth[LI[1], p$145099, p$145101]]*
   PD[-p$145101][perth[LI[1], -p$145099, p$145100]])/(16*Mpl^4) + 
 (PD[-p$145099][perth[LI[1], p$145100, p$145101]]*
   PD[-p$145101][PD[-p$145100][pertF[LI[1], p$145099]]])/(8*Mpl^4) - 
 (3*PD[-p$145101][perth[LI[1], p$145099, p$145100]]*
   PD[p$145101][perth[LI[1], -p$145099, -p$145100]])/(32*Mpl^4) - 
 (PD[-p$145101][PD[p$145100][pertF[LI[1], p$145099]]]*
   PD[p$145101][perth[LI[1], -p$145099, -p$145100]])/(4*Mpl^4) - 
 (PD[-p$145101][PD[p$145100][pertF[LI[1], p$145099]]]*
   PD[p$145101][PD[-p$145100][pertF[LI[1], -p$145099]]])/(8*Mpl^4) - 
 (PD[-p$145101][perth[LI[1], p$145099, p$145100]]*
   PD[p$145101][PD[-p$145100][PD[-p$145099][pertE[LI[1]]]]])/(8*Mpl^4) - 
 (PD[-p$145101][PD[p$145100][pertF[LI[1], p$145099]]]*
   PD[p$145101][PD[-p$145100][PD[-p$145099][pertE[LI[1]]]]])/(4*Mpl^4) - 
 (PD[-p$145101][PD[p$145100][PD[p$145099][pertE[LI[1]]]]]*
   PD[p$145101][PD[-p$145100][PD[-p$145099][pertE[LI[1]]]]])/(8*Mpl^4)
