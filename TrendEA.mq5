//+------------------------------------------------------------------+
//|                                                      TrendEA.mq5 |
//|                                 Copyright 2023, Salim Benfarhat. |
//|                                               https://salim.link |
//+------------------------------------------------------------------+

#property copyright "Salim Benfarhat"
#property link      "https:/salim.link"
#property version   "1.00"
#property strict

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---

  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   // Calcule les valeurs des moyennes mobiles simples (SMA) pour deux périodes différentes
   double maFast = iMA(Symbol(), 0, 10, 0, MODE_SMA, PRICE_CLOSE); // SMA sur une période de 10 bougies
   double maSlow = iMA(Symbol(), 0, 20, 0, MODE_SMA, PRICE_CLOSE); // SMA sur une période de 20 bougies

   if(maFast > maSlow)
       // Si la SMA rapide est supérieure à la SMA lente, cela indique une tendance haussière
      Comment("\n\n\n\n\n\n", "Tendance haussière", "\n");
   else if(maFast < maSlow)
      // Si la SMA rapide est inférieure à la SMA lente, cela indique une tendance baissière
      Comment("\n\n\n\n\n\n", "Tendance baissière", "\n");
   else
      // Sinon, cela indique une tendance neutre
      Comment("\n\n\n\n\n\n", "Marché en range", "\n");
  }
