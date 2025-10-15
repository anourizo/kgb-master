(* Created with the Wolfram Language : www.wolfram.com *)
-(Mpl^2*hubbleC[]^2*perth[LI[1], -i, -j]) + 
 2*Mpl^2*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]] + 
 2*Mpl^2*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[1]] - 
 density[]*pertshearten[LI[1], -i, -j] - pertshearten[LI[1], -i, -j]*
  pressure[] - 2*Mpl^2*perth[LI[1], -i, -j]*primehubbleC[] + 
 4*Mpl^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*primehubbleC[] + 
 4*Mpl^2*metric\[Delta][-i, -j]*pertpsi[LI[1]]*primehubbleC[] + 
 Lambda*Mpl^2*perth[LI[1], -i, -j]*scale[]^2 - 
 2*Lambda*Mpl^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*scale[]^2 - 
 metric\[Delta][-i, -j]*pertpressure[LI[1]]*scale[]^2 - 
 perth[LI[1], -i, -j]*pressure[]*scale[]^2 + 2*metric\[Delta][-i, -j]*
  pertphi[LI[1]]*pressure[]*scale[]^2 + Mpl^2*hubbleC[]*timevec[h$73207]*
  PD[-h$73207][perth[LI[1], -i, -j]] + 4*Mpl^2*hubbleC[]*
  metric\[Delta][-i, -j]*timevec[h$73207]*PD[-h$73207][pertphi[LI[1]]] + 
 2*Mpl^2*hubbleC[]*metric\[Delta][-i, -j]*timevec[h$73207]*
  PD[-h$73207][pertpsi[LI[1]]] + Mpl^2*hubbleC[]*timevec[h$73207]*
  PD[-h$73207][PD[-i][pertF[LI[1], -j]]] + 
 (Mpl^2*timevec[h$73207]*PD[-h$73207][PD[-i][pertS[LI[1], -j]]])/2 + 
 Mpl^2*hubbleC[]*timevec[h$73207]*PD[-h$73207][PD[-j][pertF[LI[1], -i]]] + 
 (Mpl^2*timevec[h$73207]*PD[-h$73207][PD[-j][pertS[LI[1], -i]]])/2 - 
 Mpl^2*timevec[h$73207]*PD[-h$73207][PD[-j][PD[-i][pertB[LI[1]]]]] + 
 2*Mpl^2*hubbleC[]*timevec[h$73207]*PD[-h$73207][
   PD[-j][PD[-i][pertE[LI[1]]]]] + 
 (Mpl^2*timevec[h$73207]*timevec[h$73208]*
   PD[-h$73208][PD[-h$73207][perth[LI[1], -i, -j]]])/2 + 
 2*Mpl^2*metric\[Delta][-i, -j]*timevec[h$73207]*timevec[h$73208]*
  PD[-h$73208][PD[-h$73207][pertphi[LI[1]]]] + 
 (Mpl^2*timevec[h$73207]*timevec[h$73208]*
   PD[-h$73208][PD[-h$73207][PD[-i][pertF[LI[1], -j]]]])/2 + 
 (Mpl^2*timevec[h$73207]*timevec[h$73208]*
   PD[-h$73208][PD[-h$73207][PD[-j][pertF[LI[1], -i]]]])/2 + 
 Mpl^2*timevec[h$73207]*timevec[h$73208]*
  PD[-h$73208][PD[-h$73207][PD[-j][PD[-i][pertE[LI[1]]]]]] - 
 Mpl^2*hubbleC[]^2*PD[-i][pertF[LI[1], -j]] - 
 2*Mpl^2*primehubbleC[]*PD[-i][pertF[LI[1], -j]] + 
 Lambda*Mpl^2*scale[]^2*PD[-i][pertF[LI[1], -j]] - 
 pressure[]*scale[]^2*PD[-i][pertF[LI[1], -j]] + 
 Mpl^2*hubbleC[]*PD[-i][pertS[LI[1], -j]] - 
 density[]*PD[-i][pertshearvec[LI[1], -j]] - 
 pressure[]*PD[-i][pertshearvec[LI[1], -j]] - 
 Mpl^2*hubbleC[]^2*PD[-j][pertF[LI[1], -i]] - 
 2*Mpl^2*primehubbleC[]*PD[-j][pertF[LI[1], -i]] + 
 Lambda*Mpl^2*scale[]^2*PD[-j][pertF[LI[1], -i]] - 
 pressure[]*scale[]^2*PD[-j][pertF[LI[1], -i]] + 
 Mpl^2*hubbleC[]*PD[-j][pertS[LI[1], -i]] - 
 density[]*PD[-j][pertshearvec[LI[1], -i]] - 
 pressure[]*PD[-j][pertshearvec[LI[1], -i]] - 
 2*Mpl^2*hubbleC[]*PD[-j][PD[-i][pertB[LI[1]]]] - 
 2*Mpl^2*hubbleC[]^2*PD[-j][PD[-i][pertE[LI[1]]]] - 
 4*Mpl^2*primehubbleC[]*PD[-j][PD[-i][pertE[LI[1]]]] + 
 2*Lambda*Mpl^2*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]] - 
 2*pressure[]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]] + 
 Mpl^2*PD[-j][PD[-i][pertphi[LI[1]]]] - 
 Mpl^2*PD[-j][PD[-i][pertpsi[LI[1]]]] - 
 (density[]*PD[-j][PD[-i][pertshear[LI[1]]]])/2 - 
 (pressure[]*PD[-j][PD[-i][pertshear[LI[1]]]])/2 + 
 2*Mpl^2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$73209, p$73210]*
  PD[-p$73210][PD[-p$73209][pertB[LI[1]]]] - 
 (Mpl^2*metric\[Delta][p$73209, p$73210]*
   PD[-p$73210][PD[-p$73209][perth[LI[1], -i, -j]]])/2 - 
 Mpl^2*metric\[Delta][-i, -j]*metric\[Delta][p$73209, p$73210]*
  PD[-p$73210][PD[-p$73209][pertphi[LI[1]]]] + 
 Mpl^2*metric\[Delta][-i, -j]*metric\[Delta][p$73209, p$73210]*
  PD[-p$73210][PD[-p$73209][pertpsi[LI[1]]]] + 
 (density[]*metric\[Delta][-i, -j]*metric\[Delta][p$73209, p$73210]*
   PD[-p$73210][PD[-p$73209][pertshear[LI[1]]]])/2 + 
 (metric\[Delta][-i, -j]*metric\[Delta][p$73209, p$73210]*pressure[]*
   PD[-p$73210][PD[-p$73209][pertshear[LI[1]]]])/2 + 
 Mpl^2*metric\[Delta][-i, -j]*metric\[Delta][p$73209, p$73210]*
  timevec[h$73207]*PD[-p$73210][PD[-p$73209][PD[-h$73207][pertB[LI[1]]]]] - 
 2*Mpl^2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$73209, p$73210]*
  timevec[h$73207]*PD[-p$73210][PD[-p$73209][PD[-h$73207][pertE[LI[1]]]]] - 
 Mpl^2*metric\[Delta][-i, -j]*metric\[Delta][p$73209, p$73210]*
  timevec[h$73207]*timevec[h$73208]*PD[-p$73210][
   PD[-p$73209][PD[-h$73208][PD[-h$73207][pertE[LI[1]]]]]]
