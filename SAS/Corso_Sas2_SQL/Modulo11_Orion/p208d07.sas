proc transpose data=orion.order_summary
               out=annual_orders;
   by Customer_ID;
   var Sale_Amt;
   id Order_Month;
run;

proc print data=annual_orders noobs;
run;
