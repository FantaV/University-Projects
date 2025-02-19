/**********************************************************
* 1. Submit the program and view the output from the    *
*    summary data set.                                 *  
* 2. Create a new variable called NameNumber for the      *
*    summary data set.  NameNumber should be the          *
*    concatenation of Customer_LastName and NumOrders  *
*    with a space between the values. Do not forget to    *
     keep the new variable.
* 3. Submit the program and verify the output for the     *
*    summary data set.                                    *
**********************************************************/

proc sort data=orion.order_fact
          out=work.order_fact;
   by Customer_ID;
   where year(Order_Date)=2007;
run;

data orders(keep=Customer_Name Quantity 
                 Total_Retail_Price) 
     noorders(keep=Customer_Name Birth_Date)
     summary(keep=Customer_Name NumOrders);
   merge orion.customer
         work.order_fact(in=order);
   by Customer_ID;
   if order=1 then do;
      output orders;
      if first.Customer_ID then NumOrders=0;
	  NumOrders+1;
      if last.Customer_ID then output summary;
   end;
   else output noorders;
run;
title 'Summary';
proc print data=summary;
run;
title;
