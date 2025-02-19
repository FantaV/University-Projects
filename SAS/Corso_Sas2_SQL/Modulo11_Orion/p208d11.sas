proc transpose data=orion.order_summary
               out=annual_orders(drop=_name_)
               prefix=Mon;
   by Customer_ID;
   var Sale_Amt;
   id Order_Month;
run;

proc print data=annual_orders noobs;
   var Customer_ID Mon1-Mon12;
run;
