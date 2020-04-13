# 1 "..\\BFcom\\Initialization.c"

# 1 "..\\BFcom\\BF533 Flags.h"





 
# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys\\exception.h"
#pragma once

#pragma system_header /* exception.h */







 




# 26 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys\\exception.h"





 




 








 





 





				 









 







# 89 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys\\exception.h"



 



# 106 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys\\exception.h"



 














 





typedef enum {
  ik_err=-1,
  ik_emulation,
  ik_reset,
  ik_nmi,
  ik_exception,
  ik_global_int_enable,
  ik_hardware_err,
  ik_timer,
  ik_ivg7,
  ik_ivg8,
  ik_ivg9,
  ik_ivg10,
  ik_ivg11,
  ik_ivg12,
  ik_ivg13,
  ik_ivg14,
  ik_ivg15,
  num_interrupt_kind
} interrupt_kind;




 

typedef struct {
  interrupt_kind kind;		 
  int value;			 
  void *pc;			 
  void *addr;			 
  unsigned status;		 
} interrupt_info;



 

typedef void (*ex_handler_fn)();







# 182 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys\\exception.h"




 

void get_interrupt_info(interrupt_kind int_kind, interrupt_info *int_info);



 

void _ex_report_event(interrupt_info *int_info);




 
ex_handler_fn register_handler(interrupt_kind int_kind, ex_handler_fn handler);



 



















 
ex_handler_fn register_handler_ex(interrupt_kind kind, ex_handler_fn fn,
                                  int enable);

 







 

int raise_interrupt(interrupt_kind kind, int which,
   int cmd, int arg1, int arg2);









# 8 "..\\BFcom\\BF533 Flags.h"

# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF533.h"






 




# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"






 







 
# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"






 

 







 
# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"






 

 














 






 
 
 

 
 
 

 
# 55 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 
# 69 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 
 
 

 
# 91 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"
 
 
# 99 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 


 






 
 
 

 




 



 



 
 
 

 


# 174 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 

# 217 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 

# 240 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 






 





 





 

# 281 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 






 
 
 

 
 
 

 
# 314 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 
# 332 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 
 
 
 



# 353 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 
# 363 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 
 
# 375 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"
 
# 383 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"

 





 





 




 

 
# 410 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"
                                    

 
# 422 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"
 

 




                                            




 
 
# 448 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"
 
# 456 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\def_LPBlackfin.h"
 


 







# 19 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 26 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
 
 
 

# 38 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
# 49 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 





 
# 65 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
# 79 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
# 89 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 




















 
# 130 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
# 155 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
# 180 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
 




 






 



 




 
# 218 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 232 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 246 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 260 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 274 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 288 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 302 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"
                                
# 316 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"
                                          
# 330 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 344 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"
                                          
# 358 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"
                                          
# 372 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 






 
 
 

 
 



 





# 403 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 





 






 









 






 





 












# 465 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"




 






 
# 483 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 

 
# 512 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 520 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 530 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 540 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 550 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 559 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"
 

 


 
# 574 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 585 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 

 

# 603 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 614 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"










 
 





 
# 640 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 651 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 


         	 

 






 





 
# 679 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
 

# 695 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 704 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 


 

 
# 718 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 726 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 








 
# 746 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 754 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 761 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
 
# 778 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"
 



 
# 796 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 810 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"
 



 
 




 
# 828 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 


 
# 839 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"
 



 
# 869 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
 
# 879 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"
 
# 900 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
# 909 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
 
# 939 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 946 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 










 

# 968 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 977 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
 
 








 








 
# 1009 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 1019 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 1027 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 1045 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 1058 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
 
# 1078 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 1096 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
 
# 1116 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 1125 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

# 1133 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 1149 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 1158 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 1167 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"


 
 
# 1178 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 





 
# 1274 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 1364 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
 


# 1424 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 1437 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"

 
# 1445 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\defBF532.h"





# 17 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

 
# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdef_LPBlackfin.h"






 














# 29 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdef_LPBlackfin.h"

 
# 108 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdef_LPBlackfin.h"

 
# 129 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdef_LPBlackfin.h"

 





 





 




 
# 167 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdef_LPBlackfin.h"

 








# 20 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

 
# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\ccblkfn.h"
#pragma once

#pragma system_header /* ccblkfn.h */







 

 




# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib.h"









 

#pragma once

#pragma system_header /* stdlib.h */


 



# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"
 











 

#pragma once







# 34 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"




# 54 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"


























































 

















   
# 142 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 

# 341 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 
# 368 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"
    
# 385 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 401 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"






   typedef long int _Ptrdifft;
   typedef long unsigned int _Sizet;


# 417 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"
 
 typedef signed int _Int32t; 
 
 typedef unsigned int _Uint32t;  






# 433 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 458 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 467 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"





# 484 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"









# 514 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 521 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"







# 538 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 
# 549 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 
 
 

# 563 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 571 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 578 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 

# 588 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 604 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 614 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 






 























































		 

# 804 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"















# 831 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"







# 844 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 



# 869 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 884 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 





# 931 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 
# 968 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 
# 978 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 986 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"






typedef long long _Longlong;
typedef unsigned long long _ULonglong;

# 1001 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 










# 1020 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"





           typedef unsigned int _Wintt;
           typedef unsigned int _Wchart;
# 1038 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

# 1094 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"
		 







		 

# 1117 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 

  typedef char *  va_list;


typedef va_list _Va_list;

# 1139 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"


		 


# 1157 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"

		 
# 1165 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"






typedef char _Sysch_t;

		 





 
# 1186 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"


		 





		 

# 1216 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"












 





		 





 







# 1257 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\yvals.h"











 
# 23 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib.h"


# 42 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib.h"



		 















		 



typedef _Sizet size_t;




typedef _Wchart wchar_t;





 
# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib_bf.h"
#pragma once

#pragma system_header /* stdlib_bf.h */







 








 









# 40 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib_bf.h"



#pragma misra_func(heap)
void * _heap_calloc(int _heapid, size_t _nelem, size_t _size);
#pragma misra_func(heap)
void _heap_free(int _heapid, void *_ptr);
#pragma misra_func(heap)
void * _heap_malloc(int _heapid, size_t _size_arg);
#pragma misra_func(heap)
void * _heap_realloc(int _heapid, void *_ptr, size_t _size_arg);
#pragma misra_func(heap)
int _heap_init(int _idx);
#pragma misra_func(heap)
int _heap_install(void *_base, size_t _length, int _userid);
#pragma misra_func(heap)
int _heap_install_impl(void *_base, size_t _length, int _userid, int _in_init);
#pragma misra_func(heap)
int _heap_lookup(int _userid);
#pragma misra_func(heap)
void *_heap_address_from_index(int _idx);
#pragma misra_func(heap)
int _space_unused(void);
#pragma misra_func(heap)
int _heap_space_unused(int _idx);




 
# 80 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib_bf.h"





# 78 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib.h"








 

# 94 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib.h"

typedef struct
	{	 
	int quot;
	int rem;
	} div_t;

typedef struct
	{	 
	long quot;
	long rem;
	} ldiv_t;

typedef struct
        {        
        _Longlong quot;
        _Longlong rem;
} _Lldiv_t;

typedef _Lldiv_t lldiv_t;

		 
  

#pragma noreturn
void _Exit(void);




#pragma noreturn
#pragma misra_func(system)
void exit(int _status);
#pragma noreturn
#pragma misra_func(system)
void adi_fatal_error(int general_code, int specific_code, int value);
#pragma noreturn
#pragma misra_func(system)
void adi_fatal_exception(int general_code, int specific_code, int value);
#pragma misra_func(system)
char * getenv(const char *_name);
#pragma misra_func(system)
int system(const char *_s);




#pragma noreturn
void __builtin_abort(void);




#pragma noreturn
#pragma misra_func(system)
void abort(void);
int __builtin_abs(int _i);
#pragma misra_func(heap)
void * calloc(size_t _nelem, size_t _size);
div_t div(int _numer, int _denom);
#pragma misra_func(heap)
void free(void *_ptr);
long __builtin_labs(long _i);
ldiv_t ldiv(long _numer, long _denom);
#pragma misra_func(heap)
void * malloc(size_t _size_arg);
int mblen(const char *_s, size_t _n);
size_t mbstowcs(wchar_t *_wcs, const char *_s, size_t _n);
int mbtowc(wchar_t *_pwc, const char *_s, size_t _n);
int rand(void);
void srand(unsigned int _seed);
#pragma misra_func(heap)
void * realloc(void *_ptr, size_t _size_arg);
long strtol(const char *_s, char **_endptr, int _base);
size_t wcstombs(char *_s, const wchar_t *_wcs, size_t _n);
int wctomb(char *_s, wchar_t _wchar);

# 181 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib.h"

unsigned long _Stoul(const char *_s, char **_endptr, int _base);
float _Stof(const char *_s, char **_endptr, long _pten);




#pragma linkage_name __Stold

double _Stod(const char *_s, char **_endptr, long _pten);

long double _Stold(const char *_s, char **_endptr, long _pten);
_Longlong _Stoll(const char *_s, char **_endptr, int _base);
_ULonglong _Stoull(const char *_s, char **_endptr, int _base);

_Longlong llabs(_Longlong _i);
lldiv_t lldiv(_Longlong _numer, _Longlong _denom);



# 251 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib.h"
typedef int _Cmpfun(const void *, const void *);

int atexit(void (*_func)(void));
void * bsearch(const void *_key, const void *_base, size_t _nelem, size_t _size, _Cmpfun *_cmp);
void qsort(void *_base, size_t _n, size_t _size, _Cmpfun *_cmp);

		 
#pragma misra_func(string_conv)
#pragma inline
#pragma always_inline
double atof(const char *_S)
	{	 



        return (_Stold(_S, (char **)0, 0));

	}

#pragma misra_func(string_conv)
#pragma inline
#pragma always_inline
int atoi(const char *_S)
	{	 
	return ((int)_Stoul(_S, (char **)0, 10));
	}

#pragma misra_func(string_conv)
#pragma inline
#pragma always_inline
long atol(const char *_S)
	{	 
	return ((long)_Stoul(_S, (char **)0, 10));
	}

#pragma inline
#pragma always_inline
double strtod(const char *_S,
	char **_Endptr)
	{	 



        return (_Stold(_S, _Endptr, 0));

	}

#pragma inline
#pragma always_inline
unsigned long strtoul(const char *_S,
	char **_Endptr, int _Base)
	{	 
	return (_Stoul(_S, _Endptr, _Base));
	}
# 332 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib.h"
#pragma inline
#pragma always_inline
_Longlong atoll(const char *_Str)
   {   
   return ((_Longlong)_Stoull(_Str, (char **)0, 10));
   }

#pragma inline
#pragma always_inline
float strtof(const char * _Str,
   char ** _Endptr)
   {   
   return (_Stof(_Str, _Endptr, 0));
   }

#pragma inline
#pragma always_inline
long double strtold(const char * _Str,
   char ** _Endptr)
   {   
   return (_Stold(_Str, _Endptr, 0));
   }

#pragma inline
#pragma always_inline
_Longlong strtoll(const char * _Str,
   char ** _Endptr, int _Base)
   {   
   return (_Stoll(_Str, _Endptr, _Base));
   }

#pragma inline
#pragma always_inline
_ULonglong strtoull(const char * _Str,
   char ** _Endptr, int _Base)
   {   
   return (_Stoull(_Str, _Endptr, _Base));
   }

    
















# 409 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\stdlib.h"





 
# 19 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\ccblkfn.h"
  

 
# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"








 







#pragma system_header /*builtins.h*/

# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/builtins_support.h"




 

# 16 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/builtins_support.h"










 
# 41 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/builtins_support.h"

 





 




 





 


 
# 72 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/builtins_support.h"





# 108 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/builtins_support.h"

 


















 






#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  divq(int  __a, int  __b, int  *__r2) {
  int  __rval = __builtin_divq_r1(__a, __b, *__r2);
  *__r2 = __builtin_divq_r2(__rval);
  return __rval;
}



 






# 164 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/builtins_support.h"







# 182 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/builtins_support.h"









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void aligned(const void * __a, int  __b) {
  __builtin_aligned(__a, __b);
}











# 20 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\fract_typedef.h"
#pragma once

#pragma system_header /* fract_typedef.h */







 

 




typedef short fract16;
typedef long  fract32;

# 22 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"
# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\fr2x16_typedef.h"
#pragma once

#pragma system_header /* fr2x16_typedef.h */







 

 






# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\r2x16_typedef.h"
#pragma once

#pragma system_header /* r2x16_typedef.h */







 

 






# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\raw_typedef.h"
#pragma once

#pragma system_header /* raw_typedef.h */







 

 






typedef char  _raw8;
typedef short _raw16;
typedef int   _raw32;

# 32 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\raw_typedef.h"

# 21 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\r2x16_typedef.h"

typedef _raw32	raw2x16;



# 21 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\fr2x16_typedef.h"





typedef raw2x16   fract2x16;
typedef fract2x16	fr2x16;		 







# 23 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"



typedef long long acc40;


# 42 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 50 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"






typedef long int ptrdiff_t;








void * __builtin_memcpy(void * __a, const void * __b, size_t  __c);
void * __builtin_memmove(void * __a, const void * __b, size_t  __c);
char * __builtin_strcpy(char * __a, const char * __b);
size_t  __builtin_strlen(const char * __a);
void * __builtin_va_start(const void * __a, int  __b);
int  __builtin_abs(int  __a);
long  __builtin_labs(long  __a);
int  __builtin_expected_true(int  __a);
int  __builtin_expected_false(int  __a);
void __builtin_assert(int  __a);
void __builtin_aligned(const void * __a, int  __b);
int  __builtin_funcsize(const void * __a);
ptrdiff_t  __builtin_circindex(ptrdiff_t  __a, ptrdiff_t  __b, size_t  __c);
void * __builtin_circptr(const void * __a, ptrdiff_t  __b, const void * __c, size_t  __d);
short  __builtin_misaligned_load16(void * __a);
short  __builtin_misaligned_load16_vol(volatile void * __a);
void __builtin_misaligned_store16(void * __a, short  __b);
void __builtin_misaligned_store16_vol(volatile void * __a, short  __b);
int  __builtin_misaligned_load32(void * __a);
int  __builtin_misaligned_load32_vol(volatile void * __a);
void __builtin_misaligned_store32(void * __a, int  __b);
void __builtin_misaligned_store32_vol(volatile void * __a, int  __b);
long long  __builtin_misaligned_load64(void * __a);
long long  __builtin_misaligned_load64_vol(volatile void * __a);
void __builtin_misaligned_store64(void * __a, long long  __b);
void __builtin_misaligned_store64_vol(volatile void * __a, long long  __b);
int  __builtin_max(int  __a, int  __b);
long  __builtin_lmax(long  __a, long  __b);
int  __builtin_min(int  __a, int  __b);
long  __builtin_lmin(long  __a, long  __b);
void * __builtin_alloca(size_t  __a);
void * __builtin_dealloca(size_t  __a);
fract16  __builtin_sum_fr2x16(fract2x16  __a);

_Fract  __builtin_sum_fx_fr2x16(fract2x16  __a);

fract32  __builtin_mult_fr1x32x32(fract32  __a, fract32  __b);

long _Fract  __builtin_mult_fx1x32x32(long _Fract  __a, long _Fract  __b);

fract32  __builtin_multr_fr1x32x32(fract32  __a, fract32  __b);

long _Fract  __builtin_multr_fx1x32x32(long _Fract  __a, long _Fract  __b);

fract32  __builtin_mult_fr1x32x32NS(fract32  __a, fract32  __b);

long _Fract  __builtin_mult_fx1x32x32NS(long _Fract  __a, long _Fract  __b);

int  __builtin_byteswap4(int  __a);
short  __builtin_byteswap2(short  __a);
short  __builtin_sum_i2x16(int  __a);
int  __builtin_cmplx_mac(int  __a, int  __b, int  __c);
int  __builtin_cmplx_msu(int  __a, int  __b, int  __c);
int  __builtin_cmplx_mac_s40(int  __a, int  __b, int  __c);
int  __builtin_cmplx_msu_s40(int  __a, int  __b, int  __c);
int  __builtin_cmplx_mul_s40(int  __a, int  __b);
int  __builtin_cmplx_conj_mac(int  __a, int  __b, int  __c);
int  __builtin_cmplx_conj_msu(int  __a, int  __b, int  __c);
int  __builtin_cmplx_conj_mac_s40(int  __a, int  __b, int  __c);
int  __builtin_cmplx_conj_msu_s40(int  __a, int  __b, int  __c);
int  __builtin_cmplx_conj_mul_s40(int  __a, int  __b);
int  __builtin_csqu_fr16(int  __a);
fract16  __builtin_diff_hl_fr2x16(fract2x16  __a);

_Fract  __builtin_diff_hl_fx_fr2x16(fract2x16  __a);

fract16  __builtin_diff_lh_fr2x16(fract2x16  __a);

_Fract  __builtin_diff_lh_fx_fr2x16(fract2x16  __a);

long long  __builtin_cadd_fr32(long long  __a, long long  __b);
long long  __builtin_csub_fr32(long long  __a, long long  __b);
long long  __builtin_conj_fr32(long long  __a);
long long  __builtin_cmplx_mul32(long long  __a, long long  __b);
fract16  __builtin_shr_fr1x16(fract16  __a, short  __b);

_Fract  __builtin_shr_fx1x16(_Fract  __a, short  __b);

fract32  __builtin_shr_fr1x32(fract32  __a, short  __b);

long _Fract  __builtin_shr_fx1x32(long _Fract  __a, short  __b);

fract2x16  __builtin_shr_fr2x16(fract2x16  __a, short  __b);
short  __builtin_shr_i1x16(short  __a, short  __b);
fract2x16  __builtin_shrl_fr2x16(fract2x16  __a, short  __b);
fract32  __builtin_shr_fr1x32_clip(fract32  __a, short  __b);

long _Fract  __builtin_shr_fx1x32_clip(long _Fract  __a, short  __b);

fract2x16  __builtin_shr_fr2x16_clip(fract2x16  __a, short  __b);
fract2x16  __builtin_shrl_fr2x16_clip(fract2x16  __a, short  __b);
fract32  __builtin_shl_fr1x32_clip(fract32  __a, short  __b);

long _Fract  __builtin_shl_fx1x32_clip(long _Fract  __a, short  __b);

fract2x16  __builtin_shl_fr2x16_clip(fract2x16  __a, short  __b);
long long  __builtin_mult64_32x32(int  __a, int  __b);
unsigned long long  __builtin_multu64_32x32(unsigned int  __a, unsigned int  __b);
int  __builtin_addclip_lo(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_addclip_hi(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_addclip_lor(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_addclip_hir(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_extract_and_add_r1(int  __a, int  __b);
int  __builtin_extract_and_add_r2(int  __a);
int  __builtin_add_i4x8_r1(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_add_i4x8_r2(int  __a);
int  __builtin_add_i4x8_r_r1(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_add_i4x8_r_r2(int  __a);
int  __builtin_avg_i4x8(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_avg_i4x8_t(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_avg_i4x8_r(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_avg_i4x8_tr(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_avg_i2x8_lo(long long  __a, char * __b, long long  __c);
int  __builtin_avg_i2x8_lot(long long  __a, char * __b, long long  __c);
int  __builtin_avg_i2x8_lor(long long  __a, char * __b, long long  __c);
int  __builtin_avg_i2x8_lotr(long long  __a, char * __b, long long  __c);
int  __builtin_avg_i2x8_hi(long long  __a, char * __b, long long  __c);
int  __builtin_avg_i2x8_hit(long long  __a, char * __b, long long  __c);
int  __builtin_avg_i2x8_hir(long long  __a, char * __b, long long  __c);
int  __builtin_avg_i2x8_hitr(long long  __a, char * __b, long long  __c);
int  __builtin_sub_i4x8_r1(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_sub_i4x8_r2(int  __a);
int  __builtin_sub_i4x8_r_r1(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_sub_i4x8_r_r2(int  __a);
int  __builtin_saa_r1(long long  __a, char * __b, long long  __c, char * __d, int  __e, int  __f);
int  __builtin_saa_r2(int  __a);
int  __builtin_saa_r_r1(long long  __a, char * __b, long long  __c, char * __d, int  __e, int  __f);
int  __builtin_saa_r_r2(int  __a);
int  __builtin_byteunpack_r1(long long  __a, char * __b);
int  __builtin_byteunpack_r2(int  __a);
int  __builtin_byteunpackr_r1(long long  __a, char * __b);
int  __builtin_byteunpackr_r2(int  __a);
long long  __builtin_bitmux_shr_r1(long long  __a, int  __b, int  __c);
int  __builtin_bitmux_shr_r2(long long  __a);
int  __builtin_bitmux_shr_r3(long long  __a);
long long  __builtin_bitmux_shl_r1(long long  __a, int  __b, int  __c);
int  __builtin_bitmux_shl_r2(long long  __a);
int  __builtin_bitmux_shl_r3(long long  __a);
short  __builtin_A_bxorshift_mask32_r1(acc40  __a, int  __b);
int  __builtin_A_bxorshift_mask32_r2(short  __a);
short  __builtin_A_bxor_mask32_r1(acc40  __a, int  __b);
int  __builtin_A_bxor_mask32_r2(short  __a);
acc40  __builtin_A_bxorshift_mask40(acc40  __a, acc40  __b, int  __c);
short  __builtin_A_bxor_mask40_r1(acc40  __a, acc40  __b, int  __c);
int  __builtin_A_bxor_mask40_r2(short  __a);
void  __builtin_untestset(char * __a);
unsigned long long  __builtin_sysreg_read64(int  __a);
void  __builtin_sysreg_write64(int  __a, unsigned long long  __b);
void  __builtin_csync(void);
void  __builtin_ssync(void);
unsigned int  __builtin_sysreg_read(int  __a);
void  __builtin_sysreg_write(int  __a, unsigned int  __b);
unsigned long long  __builtin_emuclk(void);
acc40  __builtin_A_sat(acc40  __a);
fract32  __builtin_A_mad(acc40  __a);
fract32  __builtin_A_mad_FU(acc40  __a);
fract32  __builtin_A_mad_S2RND(acc40  __a);
int  __builtin_A_mad_ISS2(acc40  __a);
short  __builtin_A_madh_IS(acc40  __a);
unsigned short  __builtin_A_madh_IU(acc40  __a);
fract16  __builtin_A_madh(acc40  __a);
fract16  __builtin_A_madh_FU(acc40  __a);
fract16  __builtin_A_madh_T(acc40  __a);
fract16  __builtin_A_madh_TFU(acc40  __a);
fract16  __builtin_A_madh_S2RND(acc40  __a);
short  __builtin_A_madh_ISS2(acc40  __a);
short  __builtin_A_madh_IH(acc40  __a);
int  __builtin_A_eq(acc40  __a, acc40  __b);
int  __builtin_A_lt(acc40  __a, acc40  __b);
int  __builtin_A_le(acc40  __a, acc40  __b);
short  __builtin_ones(int  __a);
int  __builtin_A_bitmux_ASL_r1(int  __a, int  __b, acc40  __c);
int  __builtin_A_bitmux_ASL_r2(int  __a);
acc40  __builtin_A_bitmux_ASL_r3(int  __a);
int  __builtin_A_bitmux_ASR_r1(int  __a, int  __b, acc40  __c);
int  __builtin_A_bitmux_ASR_r2(int  __a);
acc40  __builtin_A_bitmux_ASR_r3(int  __a);
short  __builtin_shl_i1x16(short  __a, short  __b);
int  __builtin_shl_i2x16(int  __a, short  __b);
fract16  __builtin_shl_fr1x16(fract16  __a, short  __b);

_Fract  __builtin_shl_fx1x16(_Fract  __a, short  __b);

fract2x16  __builtin_shl_fr2x16(fract2x16  __a, short  __b);
int  __builtin_shl_i1x32(int  __a, short  __b);
fract32  __builtin_shl_fr1x32(fract32  __a, short  __b);

long _Fract  __builtin_shl_fx1x32(long _Fract  __a, short  __b);

acc40  __builtin_A_ashift(acc40  __a, short  __b);
short  __builtin_shll_i1x16(short  __a, short  __b);
int  __builtin_shll_i2x16(int  __a, short  __b);
int  __builtin_shll_i1x32(int  __a, short  __b);
acc40  __builtin_A_lshift(acc40  __a, short  __b);
fract32  __builtin_abs_fr1x32(fract32  __a);
int  __builtin_abs_i1x32(int  __a);

long _Fract  __builtin_abs_fx1x32(long _Fract  __a);

acc40  __builtin_A_abs(acc40  __a);
fract2x16  __builtin_abs_fr2x16(fract2x16  __a);
int  __builtin_abs_i2x16(int  __a);
acc40  __builtin_A_sub(acc40  __a, acc40  __b);
acc40  __builtin_A_add(acc40  __a, acc40  __b);
void * __builtin_brevadd(void * __a, void * __b);
int  __builtin_divs_r1(int  __a, int  __b);
int  __builtin_divs_r2(int  __a);
int  __builtin_divq_r1(int  __a, int  __b, int  __c);
int  __builtin_divq_r2(int  __a);
short  __builtin_expadj1x32(int  __a, short  __b);
short  __builtin_expadj1x16(short  __a, short  __b);
short  __builtin_expadj2x16(int  __a, short  __b);
short  __builtin_lvitmax1x16_r1(int  __a, int  __b);
int  __builtin_lvitmax1x16_r2(short  __a);
short  __builtin_rvitmax1x16_r1(int  __a, int  __b);
int  __builtin_rvitmax1x16_r2(short  __a);
int  __builtin_lvitmax2x16_r1(int  __a, int  __b, int  __c);
int  __builtin_lvitmax2x16_r2(int  __a);
int  __builtin_rvitmax2x16_r1(int  __a, int  __b, int  __c);
int  __builtin_rvitmax2x16_r2(int  __a);
int  __builtin_max_i2x16(int  __a, int  __b);
fract2x16  __builtin_max_fr2x16(fract2x16  __a, fract2x16  __b);
fract2x16  __builtin_min_fr2x16(fract2x16  __a, fract2x16  __b);
int  __builtin_min_i2x16(int  __a, int  __b);
fract32  __builtin_negate_fr1x32(fract32  __a);

long _Fract  __builtin_negate_fx1x32(long _Fract  __a);

acc40  __builtin_A_neg(acc40  __a);
fract2x16  __builtin_negate_fr2x16(fract2x16  __a);
fract16  __builtin_round_fr1x32(fract32  __a);

_Fract  __builtin_round_fx1x32(long _Fract  __a);

short  __builtin_norm_fr1x32(fract32  __a);

short  __builtin_norm_fx1x32(long _Fract  __a);

short  __builtin_norm_fr1x16(fract16  __a);

short  __builtin_norm_fx1x16(_Fract  __a);

short  __builtin_A_signbits(acc40  __a);
fract16  __builtin_multr_fr1x16(fract16  __a, fract16  __b);

_Fract  __builtin_multr_fx1x16(_Fract  __a, _Fract  __b);

fract16  __builtin_multmr_fr1x16(fract16  __a, fract16  __b);

_Fract  __builtin_multmr_fx1x16(_Fract  __a, unsigned _Fract  __b);

fract16  __builtin_multm_fr1x16(fract16  __a, fract16  __b);

_Fract  __builtin_multm_fx1x16(_Fract  __a, unsigned _Fract  __b);

fract2x16  __builtin_cmplx_mul(fract2x16  __a, fract2x16  __b);
fract2x16  __builtin_cmplx_conj_mul(fract2x16  __a, fract2x16  __b);
short  __builtin_csqumag_fr16(int  __a);
int  __builtin_csqumag_fr32(int  __a);
acc40  __builtin_A_mult_IS(short  __a, short  __b);
acc40  __builtin_A_mac_IS(acc40  __a, short  __b, short  __c);
acc40  __builtin_A_msu_IS(acc40  __a, short  __b, short  __c);
acc40  __builtin_A_mult_MIS(short  __a, unsigned short  __b);
acc40  __builtin_A_mac_MIS(acc40  __a, short  __b, unsigned short  __c);
acc40  __builtin_A_msu_MIS(acc40  __a, short  __b, unsigned short  __c);
acc40  __builtin_A_mult(fract16  __a, fract16  __b);
acc40  __builtin_A_mac(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_A_msu(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_A_mult_FU(fract16  __a, fract16  __b);
acc40  __builtin_A_mac_FU(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_A_msu_FU(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_A_mult_M(fract16  __a, fract16  __b);
acc40  __builtin_A_mac_M(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_A_msu_M(acc40  __a, fract16  __b, fract16  __c);
int  __builtin_add_i2x16(int  __a, int  __b);
unsigned int  __builtin_add_u2x16(unsigned int  __a, unsigned int  __b);
fract2x16  __builtin_add_fr2x16(fract2x16  __a, fract2x16  __b);
int  __builtin_cmplx_add(int  __a, int  __b);
int  __builtin_sub_i2x16(int  __a, int  __b);
unsigned int  __builtin_sub_u2x16(unsigned int  __a, unsigned int  __b);
fract2x16  __builtin_sub_fr2x16(fract2x16  __a, fract2x16  __b);
int  __builtin_cmplx_sub(int  __a, int  __b);
fract2x16  __builtin_dspaddsubsat(fract2x16  __a, fract2x16  __b);
fract2x16  __builtin_dspsubaddsat(fract2x16  __a, fract2x16  __b);
int  __builtin_add_on_sign(int  __a, int  __b);
int * __builtin_search_gt_r1(int  __a, int * __b, int * __c, int * __d, short  __e, short  __f);
int * __builtin_search_gt_r2(int * __a);
short  __builtin_search_gt_r3(int * __a);
short  __builtin_search_gt_r4(int * __a);
int * __builtin_search_ge_r1(int  __a, int * __b, int * __c, int * __d, short  __e, short  __f);
int * __builtin_search_ge_r2(int * __a);
short  __builtin_search_ge_r3(int * __a);
short  __builtin_search_ge_r4(int * __a);
int * __builtin_search_le_r1(int  __a, int * __b, int * __c, int * __d, short  __e, short  __f);
int * __builtin_search_le_r2(int * __a);
short  __builtin_search_le_r3(int * __a);
short  __builtin_search_le_r4(int * __a);
int * __builtin_search_lt_r1(int  __a, int * __b, int * __c, int * __d, short  __e, short  __f);
int * __builtin_search_lt_r2(int * __a);
short  __builtin_search_lt_r3(int * __a);
short  __builtin_search_lt_r4(int * __a);
fract2x16  __builtin_multr_fr2x16(fract2x16  __a, fract2x16  __b);
int  __builtin_mult_i2x16(int  __a, int  __b);
fract2x16  __builtin_mult_fr2x16(fract2x16  __a, fract2x16  __b);
int  __builtin_multu_fr2x16(int  __a, int  __b);
int  __builtin_align8(int  __a, int  __b);
int  __builtin_align16(int  __a, int  __b);
int  __builtin_align24(int  __a, int  __b);
int  __builtin_loadbytes(int * __a);
int  __builtin_bytepack(int  __a, int  __b);
void  __builtin_NOP(void);
unsigned int  __builtin_cli(void);
void  __builtin_sti(unsigned int  __a);
void  __builtin_csync_int(void);
void  __builtin_ssync_int(void);
void  __builtin_idle(void);
void  __builtin_halt(void);
void  __builtin_abort(void);
void  __builtin_raise(int  __a);
void  __builtin_excpt(int  __a);
int  __builtin_testset(char * __a);
void  __builtin_prefetch(void * __a);
void * __builtin_prefetchmodup(void * __a);
void  __builtin_flushinv(void * __a);
void * __builtin_flushinvmodup(void * __a);
void  __builtin_flush(void * __a);
void * __builtin_flushmodup(void * __a);
void  __builtin_iflush(void * __a);
void * __builtin_iflushmodup(void * __a);
void * __builtin_bfin_iflushmodup(void * __a);
void  __builtin_bfin_iflush(void * __a);
void * __builtin_bfin_flushmodup(void * __a);
void  __builtin_bfin_flush(void * __a);
void * __builtin_bfin_flushinvmodup(void * __a);
void  __builtin_bfin_flushinv(void * __a);
void * __builtin_bfin_prefetchmodup(void * __a);
void  __builtin_bfin_prefetch(void * __a);
int  __builtin_bfin_testset(char * __a);
void  __builtin_bfin_excpt(int  __a);
void  __builtin_bfin_raise(int  __a);
void  __builtin_bfin_abort(void);
void  __builtin_bfin_halt(void);
void  __builtin_bfin_idle(void);
void  __builtin_bfin_ssync_int(void);
void  __builtin_bfin_csync_int(void);
void  __builtin_bfin_sti(unsigned int  __a);
unsigned int  __builtin_bfin_cli(void);
int  __builtin_bfin_bytepack(int  __a, int  __b);
int  __builtin_bfin_loadbytes(int * __a);
int  __builtin_bfin_align24(int  __a, int  __b);
int  __builtin_bfin_align16(int  __a, int  __b);
int  __builtin_bfin_align8(int  __a, int  __b);
int  __builtin_bfin_multu_fr2x16(int  __a, int  __b);
fract2x16  __builtin_bfin_mult_fr2x16(fract2x16  __a, fract2x16  __b);
int  __builtin_bfin_mult_i2x16(int  __a, int  __b);
fract2x16  __builtin_bfin_multr_fr2x16(fract2x16  __a, fract2x16  __b);
fract2x16  __builtin_bfin_dspsubaddsat(fract2x16  __a, fract2x16  __b);
fract2x16  __builtin_bfin_dspaddsubsat(fract2x16  __a, fract2x16  __b);
fract2x16  __builtin_bfin_sub_fr2x16(fract2x16  __a, fract2x16  __b);
int  __builtin_bfin_sub_i2x16(int  __a, int  __b);
fract2x16  __builtin_bfin_add_fr2x16(fract2x16  __a, fract2x16  __b);
int  __builtin_bfin_add_i2x16(int  __a, int  __b);
acc40  __builtin_bfin_A_msu_M(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_bfin_A_mac_M(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_bfin_A_mult_M(fract16  __a, fract16  __b);
acc40  __builtin_bfin_A_msu_FU(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_bfin_A_mac_FU(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_bfin_A_mult_FU(fract16  __a, fract16  __b);
acc40  __builtin_bfin_A_msu(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_bfin_A_mac(acc40  __a, fract16  __b, fract16  __c);
acc40  __builtin_bfin_A_mult(fract16  __a, fract16  __b);
acc40  __builtin_bfin_A_msu_MIS(acc40  __a, short  __b, unsigned short  __c);
acc40  __builtin_bfin_A_mac_MIS(acc40  __a, short  __b, unsigned short  __c);
acc40  __builtin_bfin_A_mult_MIS(short  __a, unsigned short  __b);
acc40  __builtin_bfin_A_msu_IS(acc40  __a, short  __b, short  __c);
acc40  __builtin_bfin_A_mac_IS(acc40  __a, short  __b, short  __c);
acc40  __builtin_bfin_A_mult_IS(short  __a, short  __b);
int  __builtin_bfin_csqumag_fr32(int  __a);
short  __builtin_bfin_csqumag_fr16(int  __a);
fract2x16  __builtin_bfin_cmplx_conj_mul(fract2x16  __a, fract2x16  __b);
fract2x16  __builtin_bfin_cmplx_mul(fract2x16  __a, fract2x16  __b);
fract16  __builtin_bfin_multm_fr1x16(fract16  __a, fract16  __b);
fract16  __builtin_bfin_multmr_fr1x16(fract16  __a, fract16  __b);
fract16  __builtin_bfin_multr_fr1x16(fract16  __a, fract16  __b);
short  __builtin_bfin_A_signbits(acc40  __a);
short  __builtin_bfin_norm_fr1x16(fract16  __a);
short  __builtin_bfin_norm_fr1x32(fract32  __a);
fract16  __builtin_bfin_round_fr1x32(fract32  __a);
fract2x16  __builtin_bfin_negate_fr2x16(fract2x16  __a);
acc40  __builtin_bfin_A_neg(acc40  __a);
fract32  __builtin_bfin_negate_fr1x32(fract32  __a);
fract2x16  __builtin_bfin_min_fr2x16(fract2x16  __a, fract2x16  __b);
int  __builtin_bfin_max_i2x16(int  __a, int  __b);
int  __builtin_bfin_rvitmax2x16_r1(int  __a, int  __b, int  __c);
int  __builtin_rvitmax2x16_r2(int  __a);
int  __builtin_bfin_lvitmax2x16_r1(int  __a, int  __b, int  __c);
int  __builtin_lvitmax2x16_r2(int  __a);
short  __builtin_bfin_rvitmax1x16_r1(int  __a, int  __b);
int  __builtin_rvitmax1x16_r2(short  __a);
short  __builtin_bfin_lvitmax1x16_r1(int  __a, int  __b);
int  __builtin_lvitmax1x16_r2(short  __a);
short  __builtin_bfin_expadj2x16(int  __a, short  __b);
short  __builtin_bfin_expadj1x16(short  __a, short  __b);
short  __builtin_bfin_expadj1x32(int  __a, short  __b);
int  __builtin_bfin_divq_r1(int  __a, int  __b, int  __c);
int  __builtin_divq_r2(int  __a);
int  __builtin_bfin_divs_r1(int  __a, int  __b);
int  __builtin_divs_r2(int  __a);
acc40  __builtin_bfin_A_add(acc40  __a, acc40  __b);
acc40  __builtin_bfin_A_sub(acc40  __a, acc40  __b);
fract2x16  __builtin_bfin_abs_fr2x16(fract2x16  __a);
acc40  __builtin_bfin_A_abs(acc40  __a);
fract32  __builtin_bfin_abs_fr1x32(fract32  __a);
acc40  __builtin_bfin_A_lshift(acc40  __a, short  __b);
int  __builtin_bfin_shll_i1x32(int  __a, short  __b);
int  __builtin_bfin_shll_i2x16(int  __a, short  __b);
short  __builtin_bfin_shll_i1x16(short  __a, short  __b);
acc40  __builtin_bfin_A_ashift(acc40  __a, short  __b);
fract32  __builtin_bfin_shl_fr1x32(fract32  __a, short  __b);
int  __builtin_bfin_shl_i1x32(int  __a, short  __b);
fract2x16  __builtin_bfin_shl_fr2x16(fract2x16  __a, short  __b);
fract16  __builtin_bfin_shl_fr1x16(fract16  __a, short  __b);
int  __builtin_bfin_shl_i2x16(int  __a, short  __b);
short  __builtin_bfin_shl_i1x16(short  __a, short  __b);
int  __builtin_bfin_A_bitmux_ASR_r1(int  __a, int  __b, acc40  __c);
int  __builtin_A_bitmux_ASR_r2(int  __a);
acc40  __builtin_A_bitmux_ASR_r3(int  __a);
int  __builtin_bfin_A_bitmux_ASL_r1(int  __a, int  __b, acc40  __c);
int  __builtin_A_bitmux_ASL_r2(int  __a);
acc40  __builtin_A_bitmux_ASL_r3(int  __a);
short  __builtin_bfin_ones(int  __a);
int  __builtin_bfin_A_le(acc40  __a, acc40  __b);
int  __builtin_bfin_A_lt(acc40  __a, acc40  __b);
int  __builtin_bfin_A_eq(acc40  __a, acc40  __b);
short  __builtin_bfin_A_madh_IH(acc40  __a);
short  __builtin_bfin_A_madh_ISS2(acc40  __a);
fract16  __builtin_bfin_A_madh_S2RND(acc40  __a);
fract16  __builtin_bfin_A_madh_TFU(acc40  __a);
fract16  __builtin_bfin_A_madh_T(acc40  __a);
fract16  __builtin_bfin_A_madh_FU(acc40  __a);
fract16  __builtin_bfin_A_madh(acc40  __a);
unsigned short  __builtin_bfin_A_madh_IU(acc40  __a);
short  __builtin_bfin_A_madh_IS(acc40  __a);
int  __builtin_bfin_A_mad_ISS2(acc40  __a);
fract32  __builtin_bfin_A_mad_S2RND(acc40  __a);
fract32  __builtin_bfin_A_mad_FU(acc40  __a);
fract32  __builtin_bfin_A_mad(acc40  __a);
acc40  __builtin_bfin_A_sat(acc40  __a);
unsigned long long  __builtin_bfin_emuclk(void);
void  __builtin_bfin_sysreg_write(int  __a, unsigned int  __b);
unsigned int  __builtin_bfin_sysreg_read(int  __a);
void  __builtin_bfin_ssync(void);
void  __builtin_bfin_csync(void);
void  __builtin_bfin_sysreg_write64(int  __a, unsigned long long  __b);
unsigned long long  __builtin_bfin_sysreg_read64(int  __a);
void  __builtin_bfin_untestset(char * __a);
long long  __builtin_bfin_bitmux_shl_r1(long long  __a, int  __b, int  __c);
int  __builtin_bitmux_shl_r2(long long  __a);
int  __builtin_bitmux_shl_r3(long long  __a);
long long  __builtin_bfin_bitmux_shr_r1(long long  __a, int  __b, int  __c);
int  __builtin_bitmux_shr_r2(long long  __a);
int  __builtin_bitmux_shr_r3(long long  __a);
int  __builtin_bfin_byteunpackr_r1(long long  __a, char * __b);
int  __builtin_byteunpackr_r2(int  __a);
int  __builtin_bfin_byteunpack_r1(long long  __a, char * __b);
int  __builtin_byteunpack_r2(int  __a);
int  __builtin_bfin_saa_r_r1(long long  __a, char * __b, long long  __c, char * __d, int  __e, int  __f);
int  __builtin_saa_r_r2(int  __a);
int  __builtin_bfin_saa_r1(long long  __a, char * __b, long long  __c, char * __d, int  __e, int  __f);
int  __builtin_saa_r2(int  __a);
int  __builtin_bfin_sub_i4x8_r_r1(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_sub_i4x8_r_r2(int  __a);
int  __builtin_bfin_sub_i4x8_r1(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_sub_i4x8_r2(int  __a);
int  __builtin_bfin_avg_i2x8_hitr(long long  __a, char * __b, long long  __c);
int  __builtin_bfin_avg_i2x8_hir(long long  __a, char * __b, long long  __c);
int  __builtin_bfin_avg_i2x8_hit(long long  __a, char * __b, long long  __c);
int  __builtin_bfin_avg_i2x8_hi(long long  __a, char * __b, long long  __c);
int  __builtin_bfin_avg_i2x8_lotr(long long  __a, char * __b, long long  __c);
int  __builtin_bfin_avg_i2x8_lor(long long  __a, char * __b, long long  __c);
int  __builtin_bfin_avg_i2x8_lot(long long  __a, char * __b, long long  __c);
int  __builtin_bfin_avg_i2x8_lo(long long  __a, char * __b, long long  __c);
int  __builtin_bfin_avg_i4x8_tr(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_bfin_avg_i4x8_r(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_bfin_avg_i4x8_t(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_bfin_avg_i4x8(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_bfin_add_i4x8_r_r1(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_add_i4x8_r_r2(int  __a);
int  __builtin_bfin_add_i4x8_r1(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_add_i4x8_r2(int  __a);
int  __builtin_bfin_extract_and_add_r1(int  __a, int  __b);
int  __builtin_extract_and_add_r2(int  __a);
int  __builtin_bfin_addclip_hir(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_bfin_addclip_lor(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_bfin_addclip_hi(long long  __a, char * __b, long long  __c, char * __d);
int  __builtin_bfin_addclip_lo(long long  __a, char * __b, long long  __c, char * __d);
unsigned long long  __builtin_bfin_multu64_32x32(unsigned int  __a, unsigned int  __b);
long long  __builtin_bfin_mult64_32x32(int  __a, int  __b);
fract2x16  __builtin_bfin_shl_fr2x16_clip(fract2x16  __a, short  __b);
fract32  __builtin_bfin_shl_fr1x32_clip(fract32  __a, short  __b);
fract2x16  __builtin_bfin_shrl_fr2x16_clip(fract2x16  __a, short  __b);
fract2x16  __builtin_bfin_shr_fr2x16_clip(fract2x16  __a, short  __b);
fract32  __builtin_bfin_shr_fr1x32_clip(fract32  __a, short  __b);
fract2x16  __builtin_bfin_shrl_fr2x16(fract2x16  __a, short  __b);
short  __builtin_bfin_shr_i1x16(short  __a, short  __b);
fract2x16  __builtin_bfin_shr_fr2x16(fract2x16  __a, short  __b);
fract32  __builtin_bfin_shr_fr1x32(fract32  __a, short  __b);
fract16  __builtin_bfin_shr_fr1x16(fract16  __a, short  __b);
long long  __builtin_bfin_cmplx_mul32(long long  __a, long long  __b);
long long  __builtin_bfin_conj_fr32(long long  __a);
long long  __builtin_bfin_csub_fr32(long long  __a, long long  __b);
long long  __builtin_bfin_cadd_fr32(long long  __a, long long  __b);
fract16  __builtin_bfin_diff_lh_fr2x16(fract2x16  __a);
fract16  __builtin_bfin_diff_hl_fr2x16(fract2x16  __a);
int  __builtin_bfin_csqu_fr16(int  __a);
int  __builtin_bfin_cmplx_conj_mul_s40(int  __a, int  __b);
int  __builtin_bfin_cmplx_conj_msu_s40(int  __a, int  __b, int  __c);
int  __builtin_bfin_cmplx_conj_mac_s40(int  __a, int  __b, int  __c);
int  __builtin_bfin_cmplx_conj_msu(int  __a, int  __b, int  __c);
int  __builtin_bfin_cmplx_conj_mac(int  __a, int  __b, int  __c);
int  __builtin_bfin_cmplx_mul_s40(int  __a, int  __b);
int  __builtin_bfin_cmplx_msu_s40(int  __a, int  __b, int  __c);
int  __builtin_bfin_cmplx_mac_s40(int  __a, int  __b, int  __c);
int  __builtin_bfin_cmplx_msu(int  __a, int  __b, int  __c);
int  __builtin_bfin_cmplx_mac(int  __a, int  __b, int  __c);
short  __builtin_bfin_sum_i2x16(int  __a);
short  __builtin_bfin_byteswap2(short  __a);
int  __builtin_bfin_byteswap4(int  __a);
fract32  __builtin_bfin_mult_fr1x32x32NS(fract32  __a, fract32  __b);
fract32  __builtin_bfin_multr_fr1x32x32(fract32  __a, fract32  __b);
fract32  __builtin_bfin_mult_fr1x32x32(fract32  __a, fract32  __b);
fract16  __builtin_bfin_sum_fr2x16(fract2x16  __a);
int  __builtin_set_rnd_mod_biased(void);
int  __builtin_set_rnd_mod_unbiased(void);
void  __builtin_restore_rnd_mod(int  __a);
fract16  __builtin_sat_fr1x32(fract32  __a);

_Fract  __builtin_sat_fx1x32(long _Fract  __a);

int  __builtin_sat_fr1x64(long long  __a);
fract16  __builtin_mult_fr1x16(fract16  __a, fract16  __b);

_Fract  __builtin_mult_fx1x16(_Fract  __a, _Fract  __b);

fract16  __builtin_multu_fr1x16(fract16  __a, fract16  __b);

unsigned _Fract  __builtin_multu_fx1x16(unsigned _Fract  __a, unsigned _Fract  __b);

fract16  __builtin_add_fr1x16(fract16  __a, fract16  __b);

_Fract  __builtin_add_fx1x16(_Fract  __a, _Fract  __b);

fract16  __builtin_sub_fr1x16(fract16  __a, fract16  __b);

_Fract  __builtin_sub_fx1x16(_Fract  __a, _Fract  __b);

fract16  __builtin_min_fr1x16(fract16  __a, fract16  __b);

_Fract  __builtin_min_fx1x16(_Fract  __a, _Fract  __b);

fract16  __builtin_max_fr1x16(fract16  __a, fract16  __b);

_Fract  __builtin_max_fx1x16(_Fract  __a, _Fract  __b);

fract32  __builtin_add_fr1x32(fract32  __a, fract32  __b);

long _Fract  __builtin_add_fx1x32(long _Fract  __a, long _Fract  __b);

fract32  __builtin_sub_fr1x32(fract32  __a, fract32  __b);

long _Fract  __builtin_sub_fx1x32(long _Fract  __a, long _Fract  __b);

fract32  __builtin_mult_fr1x32(fract16  __a, fract16  __b);

long _Fract  __builtin_mult_fx1x32(_Fract  __a, _Fract  __b);

fract32  __builtin_min_fr1x32(fract32  __a, fract32  __b);

long _Fract  __builtin_min_fx1x32(long _Fract  __a, long _Fract  __b);

fract32  __builtin_max_fr1x32(fract32  __a, fract32  __b);

long _Fract  __builtin_max_fx1x32(long _Fract  __a, long _Fract  __b);

int  __builtin_compose_2x16(short  __a, short  __b);
int  __builtin_ccompose_fr16(fract16  __a, fract16  __b);

int  __builtin_ccompose_fx_fr16(_Fract  __a, _Fract  __b);

long long  __builtin_compose_i64(int  __a, int  __b);
short  __builtin_extract_hi(int  __a);
fract16  __builtin_imag_fr16(int  __a);
fract32  __builtin_imag_fr32(long long  __a);

_Fract  __builtin_imag_fx_fr16(int  __a);


long _Fract  __builtin_imag_fx_fr32(long long  __a);

short  __builtin_extract_lo(int  __a);
fract16  __builtin_real_fr16(int  __a);
fract32  __builtin_real_fr32(long long  __a);

_Fract  __builtin_real_fx_fr16(int  __a);


long _Fract  __builtin_real_fx_fr32(long long  __a);

void __builtin_untestset(char * __a);
unsigned short  __builtin_mmr_read16(volatile void * __a);
unsigned int  __builtin_mmr_read32(volatile void * __a);
void __builtin_mmr_write16(volatile void * __a, unsigned short  __b);
void __builtin_mmr_write32(volatile void * __a, unsigned int  __b);






# 699 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 715 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 731 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 747 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 763 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 779 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 795 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 805 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 815 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 825 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 835 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

















#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static ptrdiff_t  circindex(ptrdiff_t  __a, ptrdiff_t  __b, size_t  __c) {
  ptrdiff_t  __rval = __builtin_circindex(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void * circptr(const void * __a, ptrdiff_t  __b, const void * __c, size_t  __d) {
  void * __rval = __builtin_circptr(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  misaligned_load16(void * __a) {
  short  __rval = __builtin_misaligned_load16(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  misaligned_load16_vol(volatile void * __a) {
  short  __rval = __builtin_misaligned_load16_vol(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void misaligned_store16(void * __a, short  __b) {
  __builtin_misaligned_store16(__a, __b);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void misaligned_store16_vol(volatile void * __a, short  __b) {
  __builtin_misaligned_store16_vol(__a, __b);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  misaligned_load32(void * __a) {
  int  __rval = __builtin_misaligned_load32(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  misaligned_load32_vol(volatile void * __a) {
  int  __rval = __builtin_misaligned_load32_vol(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void misaligned_store32(void * __a, int  __b) {
  __builtin_misaligned_store32(__a, __b);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void misaligned_store32_vol(volatile void * __a, int  __b) {
  __builtin_misaligned_store32_vol(__a, __b);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  misaligned_load64(void * __a) {
  long long  __rval = __builtin_misaligned_load64(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  misaligned_load64_vol(volatile void * __a) {
  long long  __rval = __builtin_misaligned_load64_vol(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void misaligned_store64(void * __a, long long  __b) {
  __builtin_misaligned_store64(__a, __b);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void misaligned_store64_vol(volatile void * __a, long long  __b) {
  __builtin_misaligned_store64_vol(__a, __b);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  max(int  __a, int  __b) {
  int  __rval = __builtin_max(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long  lmax(long  __a, long  __b) {
  long  __rval = __builtin_lmax(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  min(int  __a, int  __b) {
  int  __rval = __builtin_min(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long  lmin(long  __a, long  __b) {
  long  __rval = __builtin_lmin(__a, __b);
  return __rval;
}































 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  sum_fr2x16(fract2x16  __a) {
  fract16  __rval = __builtin_sum_fr2x16(__a);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  sum_fx_fr2x16(fract2x16  __a) {
  _Fract  __rval = __builtin_sum_fx_fr2x16(__a);
  return __rval;
}














 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  mult_fr1x32x32(fract32  __a, fract32  __b) {
  fract32  __rval = __builtin_mult_fr1x32x32(__a, __b);
  return __rval;
}














 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  mult_fx1x32x32(long _Fract  __a, long _Fract  __b) {
  long _Fract  __rval = __builtin_mult_fx1x32x32(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  multr_fr1x32x32(fract32  __a, fract32  __b) {
  fract32  __rval = __builtin_multr_fr1x32x32(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  multr_fx1x32x32(long _Fract  __a, long _Fract  __b) {
  long _Fract  __rval = __builtin_multr_fx1x32x32(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  mult_fr1x32x32NS(fract32  __a, fract32  __b) {
  fract32  __rval = __builtin_mult_fr1x32x32NS(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  mult_fx1x32x32NS(long _Fract  __a, long _Fract  __b) {
  long _Fract  __rval = __builtin_mult_fx1x32x32NS(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  byteswap4(int  __a) {
  int  __rval = __builtin_byteswap4(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  byteswap2(short  __a) {
  short  __rval = __builtin_byteswap2(__a);
  return __rval;
}



# 1377 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"









 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_mac(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_cmplx_mac(__a, __b, __c);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_msu(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_cmplx_msu(__a, __b, __c);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_mac_s40(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_cmplx_mac_s40(__a, __b, __c);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_msu_s40(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_cmplx_msu_s40(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_mul_s40(int  __a, int  __b) {
  int  __rval = __builtin_cmplx_mul_s40(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_conj_mac(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_cmplx_conj_mac(__a, __b, __c);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_conj_msu(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_cmplx_conj_msu(__a, __b, __c);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_conj_mac_s40(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_cmplx_conj_mac_s40(__a, __b, __c);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_conj_msu_s40(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_cmplx_conj_msu_s40(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_conj_mul_s40(int  __a, int  __b) {
  int  __rval = __builtin_cmplx_conj_mul_s40(__a, __b);
  return __rval;
}



# 1594 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"









 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  diff_hl_fr2x16(fract2x16  __a) {
  fract16  __rval = __builtin_diff_hl_fr2x16(__a);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  diff_hl_fx_fr2x16(fract2x16  __a) {
  _Fract  __rval = __builtin_diff_hl_fx_fr2x16(__a);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  diff_lh_fr2x16(fract2x16  __a) {
  fract16  __rval = __builtin_diff_lh_fr2x16(__a);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  diff_lh_fx_fr2x16(fract2x16  __a) {
  _Fract  __rval = __builtin_diff_lh_fx_fr2x16(__a);
  return __rval;
}




# 1694 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 1710 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 1726 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"









 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  cmplx_mul32(long long  __a, long long  __b) {
  long long  __rval = __builtin_cmplx_mul32(__a, __b);
  return __rval;
}

















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  shr_fr1x16(fract16  __a, short  __b) {
  fract16  __rval = __builtin_shr_fr1x16(__a, __b);
  return __rval;
}


















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  shr_fx1x16(_Fract  __a, short  __b) {
  _Fract  __rval = __builtin_shr_fx1x16(__a, __b);
  return __rval;
}














 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  shr_fr1x32(fract32  __a, short  __b) {
  fract32  __rval = __builtin_shr_fr1x32(__a, __b);
  return __rval;
}














 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  shr_fx1x32(long _Fract  __a, short  __b) {
  long _Fract  __rval = __builtin_shr_fx1x32(__a, __b);
  return __rval;
}


















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  shr_fr2x16(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_shr_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  shr_i1x16(short  __a, short  __b) {
  short  __rval = __builtin_shr_i1x16(__a, __b);
  return __rval;
}
















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  shrl_fr2x16(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_shrl_fr2x16(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  shr_fr1x32_clip(fract32  __a, short  __b) {
  fract32  __rval = __builtin_shr_fr1x32_clip(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  shr_fx1x32_clip(long _Fract  __a, short  __b) {
  long _Fract  __rval = __builtin_shr_fx1x32_clip(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  shr_fr2x16_clip(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_shr_fr2x16_clip(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  shrl_fr2x16_clip(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_shrl_fr2x16_clip(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  shl_fr1x32_clip(fract32  __a, short  __b) {
  fract32  __rval = __builtin_shl_fr1x32_clip(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  shl_fx1x32_clip(long _Fract  __a, short  __b) {
  long _Fract  __rval = __builtin_shl_fx1x32_clip(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  shl_fr2x16_clip(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_shl_fr2x16_clip(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  mult64_32x32(int  __a, int  __b) {
  long long  __rval = __builtin_mult64_32x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned long long  multu64_32x32(unsigned int  __a, unsigned int  __b) {
  unsigned long long  __rval = __builtin_multu64_32x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  addclip_lo(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_addclip_lo(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  addclip_hi(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_addclip_hi(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  addclip_lor(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_addclip_lor(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  addclip_hir(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_addclip_hir(__a, __b, __c, __d);
  return __rval;
}



# 2163 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 2180 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 2197 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"







#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i4x8(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_avg_i4x8(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i4x8_t(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_avg_i4x8_t(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i4x8_r(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_avg_i4x8_r(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i4x8_tr(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_avg_i4x8_tr(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i2x8_lo(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_avg_i2x8_lo(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i2x8_lot(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_avg_i2x8_lot(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i2x8_lor(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_avg_i2x8_lor(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i2x8_lotr(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_avg_i2x8_lotr(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i2x8_hi(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_avg_i2x8_hi(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i2x8_hit(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_avg_i2x8_hit(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i2x8_hir(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_avg_i2x8_hir(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  avg_i2x8_hitr(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_avg_i2x8_hitr(__a, __b, __c);
  return __rval;
}



# 2406 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 2423 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 2440 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 2457 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 2474 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 2491 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 2509 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 2527 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"







#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  A_bxorshift_mask32(acc40  __a, int  __b, int  *__r2) {
  short  __rval = __builtin_A_bxorshift_mask32_r1(__a, __b);
  *__r2 = __builtin_A_bxorshift_mask32_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  A_bxor_mask32(acc40  __a, int  __b, int  *__r2) {
  short  __rval = __builtin_A_bxor_mask32_r1(__a, __b);
  *__r2 = __builtin_A_bxor_mask32_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_bxorshift_mask40(acc40  __a, acc40  __b, int  __c) {
  acc40  __rval = __builtin_A_bxorshift_mask40(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  A_bxor_mask40(acc40  __a, acc40  __b, int  __c, int  *__r2) {
  short  __rval = __builtin_A_bxor_mask40_r1(__a, __b, __c);
  *__r2 = __builtin_A_bxor_mask40_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  untestset(char * __a) {
  __builtin_untestset(__a);
}










 












 













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  csync(void) {
  __builtin_csync();
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  ssync(void) {
  __builtin_ssync();
}





























#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned long long  emuclk(void) {
  unsigned long long  __rval = __builtin_emuclk();
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_sat(acc40  __a) {
  acc40  __rval = __builtin_A_sat(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  A_mad(acc40  __a) {
  fract32  __rval = __builtin_A_mad(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  A_mad_FU(acc40  __a) {
  fract32  __rval = __builtin_A_mad_FU(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  A_mad_S2RND(acc40  __a) {
  fract32  __rval = __builtin_A_mad_S2RND(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  A_mad_ISS2(acc40  __a) {
  int  __rval = __builtin_A_mad_ISS2(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  A_madh_IS(acc40  __a) {
  short  __rval = __builtin_A_madh_IS(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned short  A_madh_IU(acc40  __a) {
  unsigned short  __rval = __builtin_A_madh_IU(__a);
  return __rval;
}













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  A_madh(acc40  __a) {
  fract16  __rval = __builtin_A_madh(__a);
  return __rval;
}













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  A_madh_FU(acc40  __a) {
  fract16  __rval = __builtin_A_madh_FU(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  A_madh_T(acc40  __a) {
  fract16  __rval = __builtin_A_madh_T(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  A_madh_TFU(acc40  __a) {
  fract16  __rval = __builtin_A_madh_TFU(__a);
  return __rval;
}













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  A_madh_S2RND(acc40  __a) {
  fract16  __rval = __builtin_A_madh_S2RND(__a);
  return __rval;
}













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  A_madh_ISS2(acc40  __a) {
  short  __rval = __builtin_A_madh_ISS2(__a);
  return __rval;
}













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  A_madh_IH(acc40  __a) {
  short  __rval = __builtin_A_madh_IH(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  A_eq(acc40  __a, acc40  __b) {
  int  __rval = __builtin_A_eq(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  A_lt(acc40  __a, acc40  __b) {
  int  __rval = __builtin_A_lt(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  A_le(acc40  __a, acc40  __b) {
  int  __rval = __builtin_A_le(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  ones(int  __a) {
  short  __rval = __builtin_ones(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  A_bitmux_ASL(int  __a, int  __b, acc40  __c, int  *__r2, acc40  *__r3) {
  int  __rval = __builtin_A_bitmux_ASL_r1(__a, __b, __c);
  *__r2 = __builtin_A_bitmux_ASL_r2(__rval);
  *__r3 = __builtin_A_bitmux_ASL_r3(__rval);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  A_bitmux_ASR(int  __a, int  __b, acc40  __c, int  *__r2, acc40  *__r3) {
  int  __rval = __builtin_A_bitmux_ASR_r1(__a, __b, __c);
  *__r2 = __builtin_A_bitmux_ASR_r2(__rval);
  *__r3 = __builtin_A_bitmux_ASR_r3(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  shl_i1x16(short  __a, short  __b) {
  short  __rval = __builtin_shl_i1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  shl_i2x16(int  __a, short  __b) {
  int  __rval = __builtin_shl_i2x16(__a, __b);
  return __rval;
}
















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  shl_fr1x16(fract16  __a, short  __b) {
  fract16  __rval = __builtin_shl_fr1x16(__a, __b);
  return __rval;
}

















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  shl_fx1x16(_Fract  __a, short  __b) {
  _Fract  __rval = __builtin_shl_fx1x16(__a, __b);
  return __rval;
}





















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  shl_fr2x16(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_shl_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  shl_i1x32(int  __a, short  __b) {
  int  __rval = __builtin_shl_i1x32(__a, __b);
  return __rval;
}

















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  shl_fr1x32(fract32  __a, short  __b) {
  fract32  __rval = __builtin_shl_fr1x32(__a, __b);
  return __rval;
}


















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  shl_fx1x32(long _Fract  __a, short  __b) {
  long _Fract  __rval = __builtin_shl_fx1x32(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_ashift(acc40  __a, short  __b) {
  acc40  __rval = __builtin_A_ashift(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  shll_i1x16(short  __a, short  __b) {
  short  __rval = __builtin_shll_i1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  shll_i2x16(int  __a, short  __b) {
  int  __rval = __builtin_shll_i2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  shll_i1x32(int  __a, short  __b) {
  int  __rval = __builtin_shll_i1x32(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_lshift(acc40  __a, short  __b) {
  acc40  __rval = __builtin_A_lshift(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  abs_fr1x32(fract32  __a) {
  fract32  __rval = __builtin_abs_fr1x32(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  abs_i1x32(int  __a) {
  int  __rval = __builtin_abs_i1x32(__a);
  return __rval;
}













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  abs_fx1x32(long _Fract  __a) {
  long _Fract  __rval = __builtin_abs_fx1x32(__a);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_abs(acc40  __a) {
  acc40  __rval = __builtin_A_abs(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  abs_fr2x16(fract2x16  __a) {
  fract2x16  __rval = __builtin_abs_fr2x16(__a);
  return __rval;
}



# 3488 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"








 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_sub(acc40  __a, acc40  __b) {
  acc40  __rval = __builtin_A_sub(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_add(acc40  __a, acc40  __b) {
  acc40  __rval = __builtin_A_add(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void * brevadd(void * __a, void * __b) {
  void * __rval = __builtin_brevadd(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  divs(int  __a, int  __b, int  *__r2) {
  int  __rval = __builtin_divs_r1(__a, __b);
  *__r2 = __builtin_divs_r2(__rval);
  return __rval;
}



# 3579 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"







#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  expadj1x32(int  __a, short  __b) {
  short  __rval = __builtin_expadj1x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  expadj1x16(short  __a, short  __b) {
  short  __rval = __builtin_expadj1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  expadj2x16(int  __a, short  __b) {
  short  __rval = __builtin_expadj2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  lvitmax1x16(int  __a, int  __b, int  *__r2) {
  short  __rval = __builtin_lvitmax1x16_r1(__a, __b);
  *__r2 = __builtin_lvitmax1x16_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  rvitmax1x16(int  __a, int  __b, int  *__r2) {
  short  __rval = __builtin_rvitmax1x16_r1(__a, __b);
  *__r2 = __builtin_rvitmax1x16_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  lvitmax2x16(int  __a, int  __b, int  __c, int  *__r2) {
  int  __rval = __builtin_lvitmax2x16_r1(__a, __b, __c);
  *__r2 = __builtin_lvitmax2x16_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  rvitmax2x16(int  __a, int  __b, int  __c, int  *__r2) {
  int  __rval = __builtin_rvitmax2x16_r1(__a, __b, __c);
  *__r2 = __builtin_rvitmax2x16_r2(__rval);
  return __rval;
}



# 3715 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"









 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  max_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_max_fr2x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  min_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_min_fr2x16(__a, __b);
  return __rval;
}



# 3775 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  negate_fr1x32(fract32  __a) {
  fract32  __rval = __builtin_negate_fr1x32(__a);
  return __rval;
}













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  negate_fx1x32(long _Fract  __a) {
  long _Fract  __rval = __builtin_negate_fx1x32(__a);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_neg(acc40  __a) {
  acc40  __rval = __builtin_A_neg(__a);
  return __rval;
}














 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  negate_fr2x16(fract2x16  __a) {
  fract2x16  __rval = __builtin_negate_fr2x16(__a);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  round_fr1x32(fract32  __a) {
  fract16  __rval = __builtin_round_fr1x32(__a);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  round_fx1x32(long _Fract  __a) {
  _Fract  __rval = __builtin_round_fx1x32(__a);
  return __rval;
}



















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  norm_fr1x32(fract32  __a) {
  short  __rval = __builtin_norm_fr1x32(__a);
  return __rval;
}



















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  norm_fx1x32(long _Fract  __a) {
  short  __rval = __builtin_norm_fx1x32(__a);
  return __rval;
}



















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  norm_fr1x16(fract16  __a) {
  short  __rval = __builtin_norm_fr1x16(__a);
  return __rval;
}



















 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  norm_fx1x16(_Fract  __a) {
  short  __rval = __builtin_norm_fx1x16(__a);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  A_signbits(acc40  __a) {
  short  __rval = __builtin_A_signbits(__a);
  return __rval;
}













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  multr_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_multr_fr1x16(__a, __b);
  return __rval;
}














 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  multr_fx1x16(_Fract  __a, _Fract  __b) {
  _Fract  __rval = __builtin_multr_fx1x16(__a, __b);
  return __rval;
}














 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  multmr_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_multmr_fr1x16(__a, __b);
  return __rval;
}














 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  multmr_fx1x16(_Fract  __a, unsigned _Fract  __b) {
  _Fract  __rval = __builtin_multmr_fx1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  multm_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_multm_fr1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  multm_fx1x16(_Fract  __a, unsigned _Fract  __b) {
  _Fract  __rval = __builtin_multm_fx1x16(__a, __b);
  return __rval;
}










#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  cmplx_mul(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_cmplx_mul(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  cmplx_conj_mul(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_cmplx_conj_mul(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  csqumag_fr16(int  __a) {
  short  __rval = __builtin_csqumag_fr16(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  csqumag_fr32(int  __a) {
  int  __rval = __builtin_csqumag_fr32(__a);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_mult_IS(short  __a, short  __b) {
  acc40  __rval = __builtin_A_mult_IS(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_mac_IS(acc40  __a, short  __b, short  __c) {
  acc40  __rval = __builtin_A_mac_IS(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_msu_IS(acc40  __a, short  __b, short  __c) {
  acc40  __rval = __builtin_A_msu_IS(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_mult_MIS(short  __a, unsigned short  __b) {
  acc40  __rval = __builtin_A_mult_MIS(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_mac_MIS(acc40  __a, short  __b, unsigned short  __c) {
  acc40  __rval = __builtin_A_mac_MIS(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_msu_MIS(acc40  __a, short  __b, unsigned short  __c) {
  acc40  __rval = __builtin_A_msu_MIS(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_mult(fract16  __a, fract16  __b) {
  acc40  __rval = __builtin_A_mult(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_mac(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_A_mac(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_msu(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_A_msu(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_mult_FU(fract16  __a, fract16  __b) {
  acc40  __rval = __builtin_A_mult_FU(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_mac_FU(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_A_mac_FU(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_msu_FU(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_A_msu_FU(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_mult_M(fract16  __a, fract16  __b) {
  acc40  __rval = __builtin_A_mult_M(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_mac_M(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_A_mac_M(__a, __b, __c);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  A_msu_M(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_A_msu_M(__a, __b, __c);
  return __rval;
}



# 4531 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"







#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned int  add_u2x16(unsigned int  __a, unsigned int  __b) {
  unsigned int  __rval = __builtin_add_u2x16(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  add_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_add_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_add(int  __a, int  __b) {
  int  __rval = __builtin_cmplx_add(__a, __b);
  return __rval;
}



# 4600 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"







#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned int  sub_u2x16(unsigned int  __a, unsigned int  __b) {
  unsigned int  __rval = __builtin_sub_u2x16(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  sub_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_sub_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  cmplx_sub(int  __a, int  __b) {
  int  __rval = __builtin_cmplx_sub(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  add_as_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_dspaddsubsat(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  add_sa_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_dspsubaddsat(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  add_on_sign(int  __a, int  __b) {
  int  __rval = __builtin_add_on_sign(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int * search_gt(int  __a, int * __b, int * __c, int * __d, short  __e, short  __f, int * *__r2, short  *__r3, short  *__r4) {
  int * __rval = __builtin_search_gt_r1(__a, __b, __c, __d, __e, __f);
  *__r2 = __builtin_search_gt_r2(__rval);
  *__r3 = __builtin_search_gt_r3(__rval);
  *__r4 = __builtin_search_gt_r4(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int * search_ge(int  __a, int * __b, int * __c, int * __d, short  __e, short  __f, int * *__r2, short  *__r3, short  *__r4) {
  int * __rval = __builtin_search_ge_r1(__a, __b, __c, __d, __e, __f);
  *__r2 = __builtin_search_ge_r2(__rval);
  *__r3 = __builtin_search_ge_r3(__rval);
  *__r4 = __builtin_search_ge_r4(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int * search_le(int  __a, int * __b, int * __c, int * __d, short  __e, short  __f, int * *__r2, short  *__r3, short  *__r4) {
  int * __rval = __builtin_search_le_r1(__a, __b, __c, __d, __e, __f);
  *__r2 = __builtin_search_le_r2(__rval);
  *__r3 = __builtin_search_le_r3(__rval);
  *__r4 = __builtin_search_le_r4(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int * search_lt(int  __a, int * __b, int * __c, int * __d, short  __e, short  __f, int * *__r2, short  *__r3, short  *__r4) {
  int * __rval = __builtin_search_lt_r1(__a, __b, __c, __d, __e, __f);
  *__r2 = __builtin_search_lt_r2(__rval);
  *__r3 = __builtin_search_lt_r3(__rval);
  *__r4 = __builtin_search_lt_r4(__rval);
  return __rval;
}














 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  multr_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_multr_fr2x16(__a, __b);
  return __rval;
}



# 4822 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  mult_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_mult_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  multu_fr2x16(int  __a, int  __b) {
  int  __rval = __builtin_multu_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  align8(int  __a, int  __b) {
  int  __rval = __builtin_align8(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  align16(int  __a, int  __b) {
  int  __rval = __builtin_align16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  align24(int  __a, int  __b) {
  int  __rval = __builtin_align24(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  loadbytes(int * __a) {
  int  __rval = __builtin_loadbytes(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bytepack(int  __a, int  __b) {
  int  __rval = __builtin_bytepack(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  NOP(void) {
  __builtin_NOP();
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned int  cli(void) {
  unsigned int  __rval = __builtin_cli();
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  sti(unsigned int  __a) {
  __builtin_sti(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  csync_int(void) {
  __builtin_csync_int();
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  ssync_int(void) {
  __builtin_ssync_int();
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  idle(void) {
  __builtin_idle();
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  halt(void) {
  __builtin_halt();
}



# 5063 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"



























#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  testset(char * __a) {
  int  __rval = __builtin_testset(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  prefetch(void * __a) {
  __builtin_prefetch(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void * prefetchmodup(void * __a) {
  void * __rval = __builtin_prefetchmodup(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  flushinv(void * __a) {
  __builtin_flushinv(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void * flushinvmodup(void * __a) {
  void * __rval = __builtin_flushinvmodup(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  flush(void * __a) {
  __builtin_flush(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void * flushmodup(void * __a) {
  void * __rval = __builtin_flushmodup(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  iflush(void * __a) {
  __builtin_iflush(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void * iflushmodup(void * __a) {
  void * __rval = __builtin_iflushmodup(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void * bfin_iflushmodup(void * __a) {
  void * __rval = __builtin_bfin_iflushmodup(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_iflush(void * __a) {
  __builtin_bfin_iflush(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void * bfin_flushmodup(void * __a) {
  void * __rval = __builtin_bfin_flushmodup(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_flush(void * __a) {
  __builtin_bfin_flush(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void * bfin_flushinvmodup(void * __a) {
  void * __rval = __builtin_bfin_flushinvmodup(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_flushinv(void * __a) {
  __builtin_bfin_flushinv(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void * bfin_prefetchmodup(void * __a) {
  void * __rval = __builtin_bfin_prefetchmodup(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_prefetch(void * __a) {
  __builtin_bfin_prefetch(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_testset(char * __a) {
  int  __rval = __builtin_bfin_testset(__a);
  return __rval;
}





























#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_abort(void) {
  __builtin_bfin_abort();
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_halt(void) {
  __builtin_bfin_halt();
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_idle(void) {
  __builtin_bfin_idle();
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_ssync_int(void) {
  __builtin_bfin_ssync_int();
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_csync_int(void) {
  __builtin_bfin_csync_int();
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_sti(unsigned int  __a) {
  __builtin_bfin_sti(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned int  bfin_cli(void) {
  unsigned int  __rval = __builtin_bfin_cli();
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_bytepack(int  __a, int  __b) {
  int  __rval = __builtin_bfin_bytepack(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_loadbytes(int * __a) {
  int  __rval = __builtin_bfin_loadbytes(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_align24(int  __a, int  __b) {
  int  __rval = __builtin_bfin_align24(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_align16(int  __a, int  __b) {
  int  __rval = __builtin_bfin_align16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_align8(int  __a, int  __b) {
  int  __rval = __builtin_bfin_align8(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_multu_fr2x16(int  __a, int  __b) {
  int  __rval = __builtin_bfin_multu_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_mult_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_bfin_mult_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_mult_i2x16(int  __a, int  __b) {
  int  __rval = __builtin_bfin_mult_i2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_multr_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_bfin_multr_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_dspsubaddsat(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_bfin_dspsubaddsat(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_dspaddsubsat(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_bfin_dspaddsubsat(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_sub_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_bfin_sub_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_sub_i2x16(int  __a, int  __b) {
  int  __rval = __builtin_bfin_sub_i2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_add_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_bfin_add_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_add_i2x16(int  __a, int  __b) {
  int  __rval = __builtin_bfin_add_i2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_msu_M(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_bfin_A_msu_M(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_mac_M(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_bfin_A_mac_M(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_mult_M(fract16  __a, fract16  __b) {
  acc40  __rval = __builtin_bfin_A_mult_M(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_msu_FU(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_bfin_A_msu_FU(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_mac_FU(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_bfin_A_mac_FU(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_mult_FU(fract16  __a, fract16  __b) {
  acc40  __rval = __builtin_bfin_A_mult_FU(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_msu(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_bfin_A_msu(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_mac(acc40  __a, fract16  __b, fract16  __c) {
  acc40  __rval = __builtin_bfin_A_mac(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_mult(fract16  __a, fract16  __b) {
  acc40  __rval = __builtin_bfin_A_mult(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_msu_MIS(acc40  __a, short  __b, unsigned short  __c) {
  acc40  __rval = __builtin_bfin_A_msu_MIS(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_mac_MIS(acc40  __a, short  __b, unsigned short  __c) {
  acc40  __rval = __builtin_bfin_A_mac_MIS(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_mult_MIS(short  __a, unsigned short  __b) {
  acc40  __rval = __builtin_bfin_A_mult_MIS(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_msu_IS(acc40  __a, short  __b, short  __c) {
  acc40  __rval = __builtin_bfin_A_msu_IS(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_mac_IS(acc40  __a, short  __b, short  __c) {
  acc40  __rval = __builtin_bfin_A_mac_IS(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_mult_IS(short  __a, short  __b) {
  acc40  __rval = __builtin_bfin_A_mult_IS(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_csqumag_fr32(int  __a) {
  int  __rval = __builtin_bfin_csqumag_fr32(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_csqumag_fr16(int  __a) {
  short  __rval = __builtin_bfin_csqumag_fr16(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_cmplx_conj_mul(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_bfin_cmplx_conj_mul(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_cmplx_mul(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_bfin_cmplx_mul(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_multm_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_bfin_multm_fr1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_multmr_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_bfin_multmr_fr1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_multr_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_bfin_multr_fr1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_A_signbits(acc40  __a) {
  short  __rval = __builtin_bfin_A_signbits(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_norm_fr1x16(fract16  __a) {
  short  __rval = __builtin_bfin_norm_fr1x16(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_norm_fr1x32(fract32  __a) {
  short  __rval = __builtin_bfin_norm_fr1x32(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_round_fr1x32(fract32  __a) {
  fract16  __rval = __builtin_bfin_round_fr1x32(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_negate_fr2x16(fract2x16  __a) {
  fract2x16  __rval = __builtin_bfin_negate_fr2x16(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_neg(acc40  __a) {
  acc40  __rval = __builtin_bfin_A_neg(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_negate_fr1x32(fract32  __a) {
  fract32  __rval = __builtin_bfin_negate_fr1x32(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_min_fr2x16(fract2x16  __a, fract2x16  __b) {
  fract2x16  __rval = __builtin_bfin_min_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_max_i2x16(int  __a, int  __b) {
  int  __rval = __builtin_bfin_max_i2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_rvitmax2x16_r1(int  __a, int  __b, int  __c, int  *__r2) {
  int  __rval = __builtin_bfin_rvitmax2x16_r1(__a, __b, __c);
  *__r2 = __builtin_rvitmax2x16_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_lvitmax2x16_r1(int  __a, int  __b, int  __c, int  *__r2) {
  int  __rval = __builtin_bfin_lvitmax2x16_r1(__a, __b, __c);
  *__r2 = __builtin_lvitmax2x16_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_rvitmax1x16_r1(int  __a, int  __b, int  *__r2) {
  short  __rval = __builtin_bfin_rvitmax1x16_r1(__a, __b);
  *__r2 = __builtin_rvitmax1x16_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_lvitmax1x16_r1(int  __a, int  __b, int  *__r2) {
  short  __rval = __builtin_bfin_lvitmax1x16_r1(__a, __b);
  *__r2 = __builtin_lvitmax1x16_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_expadj2x16(int  __a, short  __b) {
  short  __rval = __builtin_bfin_expadj2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_expadj1x16(short  __a, short  __b) {
  short  __rval = __builtin_bfin_expadj1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_expadj1x32(int  __a, short  __b) {
  short  __rval = __builtin_bfin_expadj1x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_divq_r1(int  __a, int  __b, int  __c, int  *__r2) {
  int  __rval = __builtin_bfin_divq_r1(__a, __b, __c);
  *__r2 = __builtin_divq_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_divs_r1(int  __a, int  __b, int  *__r2) {
  int  __rval = __builtin_bfin_divs_r1(__a, __b);
  *__r2 = __builtin_divs_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_add(acc40  __a, acc40  __b) {
  acc40  __rval = __builtin_bfin_A_add(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_sub(acc40  __a, acc40  __b) {
  acc40  __rval = __builtin_bfin_A_sub(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_abs_fr2x16(fract2x16  __a) {
  fract2x16  __rval = __builtin_bfin_abs_fr2x16(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_abs(acc40  __a) {
  acc40  __rval = __builtin_bfin_A_abs(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_abs_fr1x32(fract32  __a) {
  fract32  __rval = __builtin_bfin_abs_fr1x32(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_lshift(acc40  __a, short  __b) {
  acc40  __rval = __builtin_bfin_A_lshift(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_shll_i1x32(int  __a, short  __b) {
  int  __rval = __builtin_bfin_shll_i1x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_shll_i2x16(int  __a, short  __b) {
  int  __rval = __builtin_bfin_shll_i2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_shll_i1x16(short  __a, short  __b) {
  short  __rval = __builtin_bfin_shll_i1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_ashift(acc40  __a, short  __b) {
  acc40  __rval = __builtin_bfin_A_ashift(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_shl_fr1x32(fract32  __a, short  __b) {
  fract32  __rval = __builtin_bfin_shl_fr1x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_shl_i1x32(int  __a, short  __b) {
  int  __rval = __builtin_bfin_shl_i1x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_shl_fr2x16(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_bfin_shl_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_shl_fr1x16(fract16  __a, short  __b) {
  fract16  __rval = __builtin_bfin_shl_fr1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_shl_i2x16(int  __a, short  __b) {
  int  __rval = __builtin_bfin_shl_i2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_shl_i1x16(short  __a, short  __b) {
  short  __rval = __builtin_bfin_shl_i1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_A_bitmux_ASR_r1(int  __a, int  __b, acc40  __c, int  *__r2, acc40  *__r3) {
  int  __rval = __builtin_bfin_A_bitmux_ASR_r1(__a, __b, __c);
  *__r2 = __builtin_A_bitmux_ASR_r2(__rval);
  *__r3 = __builtin_A_bitmux_ASR_r3(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_A_bitmux_ASL_r1(int  __a, int  __b, acc40  __c, int  *__r2, acc40  *__r3) {
  int  __rval = __builtin_bfin_A_bitmux_ASL_r1(__a, __b, __c);
  *__r2 = __builtin_A_bitmux_ASL_r2(__rval);
  *__r3 = __builtin_A_bitmux_ASL_r3(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_ones(int  __a) {
  short  __rval = __builtin_bfin_ones(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_A_le(acc40  __a, acc40  __b) {
  int  __rval = __builtin_bfin_A_le(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_A_lt(acc40  __a, acc40  __b) {
  int  __rval = __builtin_bfin_A_lt(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_A_eq(acc40  __a, acc40  __b) {
  int  __rval = __builtin_bfin_A_eq(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_A_madh_IH(acc40  __a) {
  short  __rval = __builtin_bfin_A_madh_IH(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_A_madh_ISS2(acc40  __a) {
  short  __rval = __builtin_bfin_A_madh_ISS2(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_A_madh_S2RND(acc40  __a) {
  fract16  __rval = __builtin_bfin_A_madh_S2RND(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_A_madh_TFU(acc40  __a) {
  fract16  __rval = __builtin_bfin_A_madh_TFU(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_A_madh_T(acc40  __a) {
  fract16  __rval = __builtin_bfin_A_madh_T(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_A_madh_FU(acc40  __a) {
  fract16  __rval = __builtin_bfin_A_madh_FU(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_A_madh(acc40  __a) {
  fract16  __rval = __builtin_bfin_A_madh(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned short  bfin_A_madh_IU(acc40  __a) {
  unsigned short  __rval = __builtin_bfin_A_madh_IU(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_A_madh_IS(acc40  __a) {
  short  __rval = __builtin_bfin_A_madh_IS(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_A_mad_ISS2(acc40  __a) {
  int  __rval = __builtin_bfin_A_mad_ISS2(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_A_mad_S2RND(acc40  __a) {
  fract32  __rval = __builtin_bfin_A_mad_S2RND(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_A_mad_FU(acc40  __a) {
  fract32  __rval = __builtin_bfin_A_mad_FU(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_A_mad(acc40  __a) {
  fract32  __rval = __builtin_bfin_A_mad(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static acc40  bfin_A_sat(acc40  __a) {
  acc40  __rval = __builtin_bfin_A_sat(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned long long  bfin_emuclk(void) {
  unsigned long long  __rval = __builtin_bfin_emuclk();
  return __rval;
}





























#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_ssync(void) {
  __builtin_bfin_ssync();
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_csync(void) {
  __builtin_bfin_csync();
}





























#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void  bfin_untestset(char * __a) {
  __builtin_bfin_untestset(__a);
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  bfin_bitmux_shl_r1(long long  __a, int  __b, int  __c, int  *__r2, int  *__r3) {
  long long  __rval = __builtin_bfin_bitmux_shl_r1(__a, __b, __c);
  *__r2 = __builtin_bitmux_shl_r2(__rval);
  *__r3 = __builtin_bitmux_shl_r3(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  bfin_bitmux_shr_r1(long long  __a, int  __b, int  __c, int  *__r2, int  *__r3) {
  long long  __rval = __builtin_bfin_bitmux_shr_r1(__a, __b, __c);
  *__r2 = __builtin_bitmux_shr_r2(__rval);
  *__r3 = __builtin_bitmux_shr_r3(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_byteunpackr_r1(long long  __a, char * __b, int  *__r2) {
  int  __rval = __builtin_bfin_byteunpackr_r1(__a, __b);
  *__r2 = __builtin_byteunpackr_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_byteunpack_r1(long long  __a, char * __b, int  *__r2) {
  int  __rval = __builtin_bfin_byteunpack_r1(__a, __b);
  *__r2 = __builtin_byteunpack_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_saa_r_r1(long long  __a, char * __b, long long  __c, char * __d, int  __e, int  __f, int  *__r2) {
  int  __rval = __builtin_bfin_saa_r_r1(__a, __b, __c, __d, __e, __f);
  *__r2 = __builtin_saa_r_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_saa_r1(long long  __a, char * __b, long long  __c, char * __d, int  __e, int  __f, int  *__r2) {
  int  __rval = __builtin_bfin_saa_r1(__a, __b, __c, __d, __e, __f);
  *__r2 = __builtin_saa_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_sub_i4x8_r_r1(long long  __a, char * __b, long long  __c, char * __d, int  *__r2) {
  int  __rval = __builtin_bfin_sub_i4x8_r_r1(__a, __b, __c, __d);
  *__r2 = __builtin_sub_i4x8_r_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_sub_i4x8_r1(long long  __a, char * __b, long long  __c, char * __d, int  *__r2) {
  int  __rval = __builtin_bfin_sub_i4x8_r1(__a, __b, __c, __d);
  *__r2 = __builtin_sub_i4x8_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i2x8_hitr(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_bfin_avg_i2x8_hitr(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i2x8_hir(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_bfin_avg_i2x8_hir(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i2x8_hit(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_bfin_avg_i2x8_hit(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i2x8_hi(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_bfin_avg_i2x8_hi(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i2x8_lotr(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_bfin_avg_i2x8_lotr(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i2x8_lor(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_bfin_avg_i2x8_lor(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i2x8_lot(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_bfin_avg_i2x8_lot(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i2x8_lo(long long  __a, char * __b, long long  __c) {
  int  __rval = __builtin_bfin_avg_i2x8_lo(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i4x8_tr(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_bfin_avg_i4x8_tr(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i4x8_r(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_bfin_avg_i4x8_r(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i4x8_t(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_bfin_avg_i4x8_t(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_avg_i4x8(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_bfin_avg_i4x8(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_add_i4x8_r_r1(long long  __a, char * __b, long long  __c, char * __d, int  *__r2) {
  int  __rval = __builtin_bfin_add_i4x8_r_r1(__a, __b, __c, __d);
  *__r2 = __builtin_add_i4x8_r_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_add_i4x8_r1(long long  __a, char * __b, long long  __c, char * __d, int  *__r2) {
  int  __rval = __builtin_bfin_add_i4x8_r1(__a, __b, __c, __d);
  *__r2 = __builtin_add_i4x8_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_extract_and_add_r1(int  __a, int  __b, int  *__r2) {
  int  __rval = __builtin_bfin_extract_and_add_r1(__a, __b);
  *__r2 = __builtin_extract_and_add_r2(__rval);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_addclip_hir(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_bfin_addclip_hir(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_addclip_lor(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_bfin_addclip_lor(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_addclip_hi(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_bfin_addclip_hi(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_addclip_lo(long long  __a, char * __b, long long  __c, char * __d) {
  int  __rval = __builtin_bfin_addclip_lo(__a, __b, __c, __d);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned long long  bfin_multu64_32x32(unsigned int  __a, unsigned int  __b) {
  unsigned long long  __rval = __builtin_bfin_multu64_32x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  bfin_mult64_32x32(int  __a, int  __b) {
  long long  __rval = __builtin_bfin_mult64_32x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_shl_fr2x16_clip(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_bfin_shl_fr2x16_clip(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_shl_fr1x32_clip(fract32  __a, short  __b) {
  fract32  __rval = __builtin_bfin_shl_fr1x32_clip(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_shrl_fr2x16_clip(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_bfin_shrl_fr2x16_clip(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_shr_fr2x16_clip(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_bfin_shr_fr2x16_clip(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_shr_fr1x32_clip(fract32  __a, short  __b) {
  fract32  __rval = __builtin_bfin_shr_fr1x32_clip(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_shrl_fr2x16(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_bfin_shrl_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_shr_i1x16(short  __a, short  __b) {
  short  __rval = __builtin_bfin_shr_i1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract2x16  bfin_shr_fr2x16(fract2x16  __a, short  __b) {
  fract2x16  __rval = __builtin_bfin_shr_fr2x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_shr_fr1x32(fract32  __a, short  __b) {
  fract32  __rval = __builtin_bfin_shr_fr1x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_shr_fr1x16(fract16  __a, short  __b) {
  fract16  __rval = __builtin_bfin_shr_fr1x16(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  bfin_cmplx_mul32(long long  __a, long long  __b) {
  long long  __rval = __builtin_bfin_cmplx_mul32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  bfin_conj_fr32(long long  __a) {
  long long  __rval = __builtin_bfin_conj_fr32(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  bfin_csub_fr32(long long  __a, long long  __b) {
  long long  __rval = __builtin_bfin_csub_fr32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  bfin_cadd_fr32(long long  __a, long long  __b) {
  long long  __rval = __builtin_bfin_cadd_fr32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_diff_lh_fr2x16(fract2x16  __a) {
  fract16  __rval = __builtin_bfin_diff_lh_fr2x16(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_diff_hl_fr2x16(fract2x16  __a) {
  fract16  __rval = __builtin_bfin_diff_hl_fr2x16(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_csqu_fr16(int  __a) {
  int  __rval = __builtin_bfin_csqu_fr16(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_cmplx_conj_mul_s40(int  __a, int  __b) {
  int  __rval = __builtin_bfin_cmplx_conj_mul_s40(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_cmplx_conj_msu_s40(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_bfin_cmplx_conj_msu_s40(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_cmplx_conj_mac_s40(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_bfin_cmplx_conj_mac_s40(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_cmplx_conj_msu(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_bfin_cmplx_conj_msu(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_cmplx_conj_mac(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_bfin_cmplx_conj_mac(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_cmplx_mul_s40(int  __a, int  __b) {
  int  __rval = __builtin_bfin_cmplx_mul_s40(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_cmplx_msu_s40(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_bfin_cmplx_msu_s40(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_cmplx_mac_s40(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_bfin_cmplx_mac_s40(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_cmplx_msu(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_bfin_cmplx_msu(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_cmplx_mac(int  __a, int  __b, int  __c) {
  int  __rval = __builtin_bfin_cmplx_mac(__a, __b, __c);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_sum_i2x16(int  __a) {
  short  __rval = __builtin_bfin_sum_i2x16(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  bfin_byteswap2(short  __a) {
  short  __rval = __builtin_bfin_byteswap2(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  bfin_byteswap4(int  __a) {
  int  __rval = __builtin_bfin_byteswap4(__a);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_mult_fr1x32x32NS(fract32  __a, fract32  __b) {
  fract32  __rval = __builtin_bfin_mult_fr1x32x32NS(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_multr_fr1x32x32(fract32  __a, fract32  __b) {
  fract32  __rval = __builtin_bfin_multr_fr1x32x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  bfin_mult_fr1x32x32(fract32  __a, fract32  __b) {
  fract32  __rval = __builtin_bfin_mult_fr1x32x32(__a, __b);
  return __rval;
}









#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  bfin_sum_fr2x16(fract2x16  __a) {
  fract16  __rval = __builtin_bfin_sum_fr2x16(__a);
  return __rval;
}













 















 













 













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  sat_fr1x32(fract32  __a) {
  fract16  __rval = __builtin_sat_fr1x32(__a);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  sat_fx1x32(long _Fract  __a) {
  _Fract  __rval = __builtin_sat_fx1x32(__a);
  return __rval;
}













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static int  sat_fr1x64(long long  __a) {
  int  __rval = __builtin_sat_fr1x64(__a);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  mult_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_mult_fr1x16(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  mult_fx1x16(_Fract  __a, _Fract  __b) {
  _Fract  __rval = __builtin_mult_fx1x16(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  multu_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_multu_fr1x16(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned _Fract  multu_fx1x16(unsigned _Fract  __a, unsigned _Fract  __b) {
  unsigned _Fract  __rval = __builtin_multu_fx1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  add_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_add_fr1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  add_fx1x16(_Fract  __a, _Fract  __b) {
  _Fract  __rval = __builtin_add_fx1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  sub_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_sub_fr1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  sub_fx1x16(_Fract  __a, _Fract  __b) {
  _Fract  __rval = __builtin_sub_fx1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  min_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_min_fr1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  min_fx1x16(_Fract  __a, _Fract  __b) {
  _Fract  __rval = __builtin_min_fx1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract16  max_fr1x16(fract16  __a, fract16  __b) {
  fract16  __rval = __builtin_max_fr1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static _Fract  max_fx1x16(_Fract  __a, _Fract  __b) {
  _Fract  __rval = __builtin_max_fx1x16(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  add_fr1x32(fract32  __a, fract32  __b) {
  fract32  __rval = __builtin_add_fr1x32(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  add_fx1x32(long _Fract  __a, long _Fract  __b) {
  long _Fract  __rval = __builtin_add_fx1x32(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  sub_fr1x32(fract32  __a, fract32  __b) {
  fract32  __rval = __builtin_sub_fr1x32(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  sub_fx1x32(long _Fract  __a, long _Fract  __b) {
  long _Fract  __rval = __builtin_sub_fx1x32(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  mult_fr1x32(fract16  __a, fract16  __b) {
  fract32  __rval = __builtin_mult_fr1x32(__a, __b);
  return __rval;
}












 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  mult_fx1x32(_Fract  __a, _Fract  __b) {
  long _Fract  __rval = __builtin_mult_fx1x32(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  min_fr1x32(fract32  __a, fract32  __b) {
  fract32  __rval = __builtin_min_fr1x32(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  min_fx1x32(long _Fract  __a, long _Fract  __b) {
  long _Fract  __rval = __builtin_min_fx1x32(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static fract32  max_fr1x32(fract32  __a, fract32  __b) {
  fract32  __rval = __builtin_max_fr1x32(__a, __b);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long _Fract  max_fx1x32(long _Fract  __a, long _Fract  __b) {
  long _Fract  __rval = __builtin_max_fx1x32(__a, __b);
  return __rval;
}




# 8651 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 8670 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 8691 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"








 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static long long  compose_i64(int  __a, int  __b) {
  long long  __rval = __builtin_compose_i64(__a, __b);
  return __rval;
}










 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  extract_hi(int  __a) {
  short  __rval = __builtin_extract_hi(__a);
  return __rval;
}



# 8748 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 8767 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 8788 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 8809 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"








 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static short  extract_lo(int  __a) {
  short  __rval = __builtin_extract_lo(__a);
  return __rval;
}



# 8847 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 8866 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 8887 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 8908 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"

# 8923 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\builtins.h"











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned short  mmr_read16(volatile void * __a) {
  unsigned short  __rval = __builtin_mmr_read16(__a);
  return __rval;
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static unsigned int  mmr_read32(volatile void * __a) {
  unsigned int  __rval = __builtin_mmr_read32(__a);
  return __rval;
}













 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void mmr_write16(volatile void * __a, unsigned short  __b) {
  __builtin_mmr_write16(__a, __b);
}











 

#pragma inline
#pragma always_inline
#pragma source_position_from_call_site
static void mmr_write32(volatile void * __a, unsigned int  __b) {
  __builtin_mmr_write32(__a, __b);
}









# 23 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\ccblkfn.h"
# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"

















 


















 
# 46 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"








 
# 63 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"







 
# 79 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"







 
# 95 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"









 











 
# 124 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"











 
# 145 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"








 



















 
# 189 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"










 
# 210 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"





















 






# 249 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"

# 264 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"
 












 
# 292 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"








 
















 
# 338 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"


















 

# 368 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"












 



















 




















 
# 432 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"

















 
# 474 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"
























 

# 519 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"
     











 






  



















 

# 579 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"








 

















 
# 616 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"








 












 
















  

# 669 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"








 




























 

























 


















































 

# 791 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/anomaly_macros_rtl.h"








 







# 24 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\ccblkfn.h"

   
# 42 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\ccblkfn.h"









 




























 











 
void *_l1_memcpy(void *datap, const void *instrp, size_t n);

 
void *_memcpy_l1(void *instrp, const void *datap, size_t n);















 

# 1 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/mc_typedef.h"
#pragma once

#pragma system_header /* sys/mc_typedef.h */







 

 




# 24 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\sys/mc_typedef.h"
  typedef volatile unsigned short testset_t;


# 115 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\ccblkfn.h"


#pragma inline
#pragma always_inline
static void adi_acquire_lock(testset_t *_t) {
  csync();
  while(__builtin_testset((char *) _t)==0) {
    csync();
  }
}

#pragma inline
#pragma always_inline
static int adi_try_lock(testset_t *_t) {
  int rtn;
  csync();
  rtn = __builtin_testset((char *) _t);
  return rtn;
}

#pragma inline
#pragma always_inline
static void adi_release_lock(testset_t *_t) {
  __builtin_untestset((char *) _t);
  ssync();
}

 

#pragma inline
#pragma always_inline
static void claim_atomic_access(testset_t *_t) {
  adi_acquire_lock(_t);
}

#pragma inline
#pragma always_inline
static void release_atomic_access(testset_t *_t) {
  adi_release_lock(_t);
}

# 166 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\ccblkfn.h"

# 196 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\ccblkfn.h"



 

#pragma inline
#pragma always_inline
static int adi_core_id(void) {
  return 0;
}

#pragma inline
#pragma always_inline
static void adi_core_b_enable(void)
{
   
}











# 23 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 31 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

 
# 39 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"


 
# 50 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"


 





 
# 66 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"


 
# 80 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"


 
# 90 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"


 




















 
# 131 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"


 
# 160 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"


 
# 189 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"


  
 




 






 



 




 
# 227 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 241 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 255 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 269 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 283 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 297 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 311 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 325 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 339 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 353 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 367 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"

# 381 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF532.h"



 






# 13 "C:\\Program Files (x86)\\Analog Devices\\VisualDSP 5.1.2\\Blackfin\\include\\cdefBF533.h"

# 10 "..\\BFcom\\BF533 Flags.h"



 







 

extern short sLight_Move_Direction;



 

void Init_Flags(void);
void Init_Timers(void);
void Init_EBIU(void);
void Init_Flash(void);
void Init_Interrupts(void);
void Init_RTC (void);
void Init_SPI(void);
void Init_DMA(unsigned char);
void Init_PPI(unsigned char);



_Pragma("interrupt") void Timer0_ISR (void);
_Pragma("interrupt") void FlagA_ISR (void);
_Pragma("interrupt") void FlagB_ISR (void);

_Pragma("interrupt") void RTC_ISR2 (void);
_Pragma("interrupt") void UART_ISR (void);
_Pragma("interrupt") void UART_DMA_ISR (void);
_Pragma("interrupt") void UART_ERR_ISR (void);
_Pragma("interrupt") void DMA0_PPI_ISR (void);
_Pragma("interrupt") void SPI_DMA_ISR (void);
_Pragma("interrupt") void SPORT1_TX_ISR (void);
_Pragma("interrupt") void SPORT1_RX_ISR (void);
_Pragma("interrupt") void PPI_ERROR_ISR (void);



# 3 "..\\BFcom\\Initialization.c"








# 17 "..\\BFcom\\Initialization.c"



	








extern  unsigned char 	 DSP_in1[64];
extern	char 		dma_buf;		







 

void Init_Flags(void) {	

*((volatile unsigned short *)0xFFC00710)=0;
*((volatile unsigned short *)0xFFC00720)=0;
*((volatile unsigned short *)0xFFC00738)	 =0;
*((volatile unsigned short *)0xFFC00734)	 =0;

			      
	*((volatile unsigned short *)0xFFC00740)		=  0x0000|0x0001|0x0020|0x0010|0x0080;  
	
	
	
	

	*((volatile unsigned short *)0xFFC00730)		=  0x0000|0x0002|0x0008|0x0040|0x0100|0x0200|0x0400|0x0800; 
	*((volatile unsigned short *)0xFFC00738)		=  *((volatile unsigned short *)0xFFC00738)|0x0010|0x0001;        
	
	*((volatile unsigned short *)0xFFC00720)	=  *((volatile unsigned short *)0xFFC00720)|0x0010;        
	*((volatile unsigned short *)0xFFC00710)	=  *((volatile unsigned short *)0xFFC00710)|0x0001;    
	

	
 }
 




 

void SPIInit (unsigned short sclkDiv, unsigned short send16Bit){
  *((volatile unsigned short *)0xFFC00514)=sclkDiv;
  *((volatile unsigned short *)0xFFC00500)=0x0001 | 0x0004 | (send16Bit ? 0x0100 : 0) | 0x1000;
  *((volatile unsigned short *)0xFFC00500)=*((volatile unsigned short *)0xFFC00500)|0x4000;
}


void Init_SPI(void) { 
	*((volatile unsigned short *)0xFFC00514)		= 0xffc0;
	
	*((volatile unsigned short *)0xFFC00500)=0x0001 | 0x0004 | 0x1000 |0x0010| 0x4000;
	*((volatile unsigned short *)0xFFC00504)		= 0x0008;
	
 }
  
 
 






 

void Set_PLL(short CoreCLOCK_multiplier, short SCLK_divider)
{ 
    
  short previous_PLL= *((volatile unsigned short *)0xFFC00000);
  short previous_SIC_IWR = *((volatile unsigned long *)0xFFC00124);
  short new_PLL= (previous_PLL & 0x81ff) | ((CoreCLOCK_multiplier & 0x3f) <<9);
   
  if (new_PLL != previous_PLL) {		  
		  	
	*((volatile unsigned long *)0xFFC00124) = (previous_SIC_IWR | 0x1); 
	*((volatile unsigned short *)0xFFC00000) = new_PLL;
		
		
		
		
		
		
		
		
		

	ssync();
  		
 	idle();							  

 	*((volatile unsigned long *)0xFFC00124) = previous_SIC_IWR;		 
	ssync();
		
  }

  	*((volatile unsigned short *)0xFFC00004) = (*((volatile unsigned short *)0xFFC00004) & 0xFFF8) | SCLK_divider;
  	ssync();
  
}








 
void Init_UART(void)
{  
    
    	*((volatile unsigned short *)0xFFC0040C)	=0x0083;  
        
		
		
		
		
		
		
		
		

    	*((volatile unsigned short *)0xFFC00400)	=0x8B;   
     	*((volatile unsigned short *)0xFFC00404)	=0x02;	 
     	ssync();

    	*((volatile unsigned short *)0xFFC0040C)	=0x0003;  
     	ssync();

}








 

void Init_Timers(void)
 {

	*((volatile unsigned short *)0xFFC00600)	= 0x0019;
	*((volatile unsigned long *)0xFFC00608) = 100000;
    *((volatile unsigned long *)0xFFC0060C)  = 0x000006B6C;

	*((volatile unsigned short *)0xFFC00640)		= 0x0001;





 
	*((volatile unsigned short *)0xFFC00620)		= 0x0007;  
	*((volatile unsigned long *)0xFFC00628)		= 0xffffffff;
	*((volatile unsigned long *)0xFFC0062C)		= 0x0000;

	*((volatile unsigned short *)0xFFC00640)		= 0x0005; 
 }







 

void Init_EBIU(void)
 {
	*((volatile unsigned long *)0xFFC00A04)	= 0x7bb07bb0;
	*((volatile unsigned long *)0xFFC00A08)	= 0x7bb07bb0;
	*((volatile unsigned short *)0xFFC00A00)	= 0x000f;
 }








 


void Init_Flash(void)
 {
	*(volatile unsigned char *)0x20270007 = 0x3f;
 }
 
 
 
 
 void Init_DMA(unsigned char a)
{
	
	*((void * volatile *) 0xFFC00C04) = DSP_in1;
	
	*((volatile unsigned short *)0xFFC00C10) =a;  
	
	*((volatile signed short *)0xFFC00C14) = 0x1;	
	
	*((volatile unsigned short *)0xFFC00C18) = 0x0;
	
	*((volatile signed short *)0xFFC00C1C) = 0x1;	
    
	*((volatile unsigned short *)0xFFC00C2C) = 0x0;	
	
	*((volatile unsigned short *)0xFFC00C08) =  0x0;
	*((volatile unsigned short *)0xFFC00C08) = 0x0080|0x0000|0x1000;
	*((volatile unsigned short *)0xFFC00C08) = 0x0001 |*((volatile unsigned short *)0xFFC00C08);

}


void Init_UART_dma(void)
{
    *((volatile unsigned short *)0xFFC0040C) = 0x0003;                                        
    *((volatile unsigned short *)0xFFC00404) = 0x0000;        
    *((volatile unsigned short *)0xFFC00424)= 0x0030;        
}

void Init_TxUART_DMA( char *buff, unsigned int size)
{
    *((volatile unsigned short *)0xFFC00DC8) = 0x0080;        
    *((void * volatile *) 0xFFC00DC4) = buff;
    *((volatile unsigned short *)0xFFC00DD0) = size;
    *((volatile signed short *)0xFFC00DD4) = 1;  
    *((volatile unsigned short *)0xFFC00DC8) = 0x0080|0x0000| 0x1000|0x0020;
    
    
}


void TxUART_en(void)
{
    *((volatile unsigned short *)0xFFC00DC8) |= 0x0001; 
    ssync();   
    *((volatile unsigned short *)0xFFC00404) |= 0x0002;        

}


void TxUART_dis(void)
{
    *((volatile unsigned short *)0xFFC00404) &= ~0x0002;  
    ssync();      
    *((volatile unsigned short *)0xFFC00DC8) &= ~0x0001;        
}


 void Init_DMA_UART( char *s, unsigned l)
{
	
	*((void * volatile *) 0xFFC00DC4) = s;

	
	*((volatile unsigned short *)0xFFC00DD0) =l;

	
	*((volatile signed short *)0xFFC00DD4) = 0x1;	
														
	
	*((volatile unsigned short *)0xFFC00DD8) = 0x0;

	
	*((volatile signed short *)0xFFC00DDC) = 0x1;	

	
	*((volatile unsigned short *)0xFFC00DEC) = 0x7;	
	
	

	*((volatile unsigned short *)0xFFC00DC8) =  0x0;

	*((volatile unsigned short *)0xFFC00DC8) = 0x0080|0x0000|0x0020| 0x1000;
	
	*((volatile unsigned short *)0xFFC00DC8) = 0x0001 |*((volatile unsigned short *)0xFFC00DC8);

}
 
 
 
 
 
 
 void Init_PPI(unsigned char a)
{

	*((volatile unsigned short *)0xFFC01000)=0x0; 
		
    *((volatile unsigned short *)0xFFC01000)= 0x0|0x0002|0x000C|0x0100;
		
	*((volatile unsigned short *)0xFFC01008)= a-1; 

	*((volatile unsigned short *)0xFFC01010)= 0x1; 
							
	*((volatile unsigned short *)0xFFC01000) =	*((volatile unsigned short *)0xFFC01000)|0x0001; 

}

 






 

void Init_Interrupts(void)
{
	
    *((volatile unsigned long *)0xFFC00110) =  0xfffff8ff;                   
    *((volatile unsigned long *)0xFFC00114) =  0x74f21ff0;   	
    *((volatile unsigned long *)0xFFC00118) =  0xfff35ff6;       
        
        ssync(); 

		

	register_handler( ik_ivg9, SPORT1_TX_ISR); 
	
	register_handler( ik_ivg8, SPORT1_RX_ISR); 
			
	register_handler( ik_ivg7, DMA0_PPI_ISR); 


    
	register_handler( ik_ivg13, Timer0_ISR );   

    register_handler( ik_ivg12, FlagA_ISR ); 

    register_handler( ik_ivg10, FlagB_ISR ); 
 
    register_handler( ik_ivg11, UART_ISR );  

    register_handler( ik_ivg14, UART_DMA_ISR );  
	
	register_handler( ik_ivg15, PPI_ERROR_ISR );  

   

ssync(); 

       *((volatile unsigned long *)0xFFC0010C) = (0x00000800|
					  0x00001000|
					  0x00008000|
			   0x04000 |
  			       0x100|
			
				    0x00010000|
					   0x00080000|
					   0x00100000);
    
	   *((volatile unsigned short *)0xFFC00404)  = (0x01| 0x04);
  
    
	
    
}

void InitSDRAM(void)
{

*((volatile unsigned short *)0xFFC00A18) = 0x304; 
ssync();


 *((volatile unsigned long *)0xFFC00A10) = ~0x40000000 & 
				 ~0x04000000 & 
				 ~0x02000000 & 
				 ~0x01000000 & 
				 ~0x00400000 & 
				 ~0x00200000 & 
				 ~0x20000000 & 
				 ~0x10000000 | 
				 0x00800000 | 
				 0x00180000 | 
				 0x00010000 | 
				 0x00001000 | 
				 0x00000140 | 
				 0x00000030 | 
				 0x0000000C | 
				 0x00000001 ; 
ssync();


 *((volatile unsigned short *)0xFFC00A14) = 0x00000020 | 
				 0x00000004 | 
				 0x00000001; 
}

void init_SPORT0 (unsigned int SPORT0_SCLK)  

{

short divider;
unsigned int SCLK_VALUE=100000000;

   *((volatile unsigned short *)0xFFC00800) =  0x0400 | 0x0200 | 0x0002;   
  
   *((volatile unsigned short *)0xFFC00804) = 31;   
   
   
 
  
   *((volatile unsigned short *)0xFFC00820) =  0x4000  |  0x0400;   	
   *((volatile unsigned short *)0xFFC00824) = 31;  
     

     
    divider = SCLK_VALUE / (SPORT0_SCLK * 2 - 1);

     
    *((volatile unsigned short *)0xFFC00808) = divider;
    *((volatile unsigned short *)0xFFC00828) = divider;
   

     
    *((volatile unsigned short *)0xFFC0080C) = 0;

}

void init_SPORT1 (unsigned int SPORT1_SCLK)  

{

short divider;
unsigned int SCLK_VALUE=100000000;

   *((volatile unsigned short *)0xFFC00900) =  0x0400 | 0x0200 | 0x0002 |0x0010;   
   *((volatile unsigned short *)0xFFC00904) = 10;   
   
   
 
  
   *((volatile unsigned short *)0xFFC00920) =  0x4000  |  0x0400;   	
   *((volatile unsigned short *)0xFFC00924) = 10;  
   
   

     
    divider = SCLK_VALUE / (SPORT1_SCLK * 2 - 1);

     
    *((volatile unsigned short *)0xFFC00908) = divider;
    *((volatile unsigned short *)0xFFC00928) = divider;
   

     
    *((volatile unsigned short *)0xFFC0090C) = 0;

}
