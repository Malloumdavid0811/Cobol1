//MATEKS JOB MSGCLASS=X,MSGLEVEL=(1,1),CLASS=B,                       
//         REGION=5M,NOTIFY=&SYSUID                                     
//**********************************************************************
//                          INPUT AREA                                
//**********************************************************************
// SET MEMBER=COBDBIU                                                   
// SET SOURCE=MATEKS.TEST.DBPGM      <- PROGRAM DATASET               
// SET INCLUDE=MATEKS.TEST.DCLGEN                <- DCLGEN DATASET    
// SET LOADLIB=MATEKS.TEST.LOAD          <- LOAD LIBRARY              
// SET DBRMLIB=MATEKS.TEST.DBRM                 <- DBRM LIBRARY       
//*********************************************************             
//*       DB2 PRECOMPILE THE COBOL PROGRAM                              
//*********************************************************             
//PC      EXEC PGM=DSNHPC,                                              
//       PARM='HOST(IBMCOB),XREF,SOURCE,FLAG(I),APOST'                  
//STEPLIB  DD  DISP=SHR,DSN=DSN811.SDSNLOAD                             
//SYSIN    DD  DISP=SHR,DSN=&SOURCE(&MEMBER)                            
//SYSCIN   DD  DSN=&&DSNHOUT,DISP=(NEW,PASS),UNIT=SYSDA,                
//             SPACE=(800,(500,500))                                    
//DBRMLIB  DD  DISP=SHR,DSN=&DBRMLIB(&MEMBER)                           
//SYSLIB   DD  DISP=SHR,DSN=&INCLUDE                                    
//SYSPRINT DD  SYSOUT=*                                                 
//SYSTERM  DD  SYSOUT=*                                                 
//SYSUDUMP DD  SYSOUT=*                                                 
//SYSUT1   DD  SPACE=(800,(500,500),,,ROUND),UNIT=SYSDA                 
//SYSUT2   DD  SPACE=(800,(500,500),,,ROUND),UNIT=SYSDA                 
//**********************************************************************
// COMPILE THE COBOL PROGRAM                                          
//**********************************************************************
//COBCOMP  EXEC PGM=IGYCRCTL,                                           
//            PARM='LIB,SOURCE'                                         
//STEPLIB  DD DSN=IGY.SIGYCOMP,DISP=SHR                                 
//SYSIN    DD  DSN=&&DSNHOUT,DISP=(OLD,DELETE)   <--INPUT SOURCE        
//SYSPRINT DD  SYSOUT=*                                                 
//SYSLIN   DD  DSNAME=&&LOADSET,UNIT=SYSDA,      <--OUTPUT OBJECT
//             DISP=(MOD,PASS),SPACE=(TRK,(3,3)),                       
//             DCB=(BLKSIZE=3200)                                       
//SYSUT1   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//SYSUT2   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//SYSUT3   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//SYSUT4   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//SYSUT5   DD 
//MATEKS JOB MSGCLASS=X,MSGLEVEL=(1,1),CLASS=B,                       
//         REGION=5M,NOTIFY=&SYSUID                                     
//**********************************************************************
//                          INPUT AREA                                
//**********************************************************************
// SET MEMBER=COBDBIU                                                   
// SET SOURCE=MATEKS.TEST.DBPGM      <- PROGRAM DATASET               
// SET INCLUDE=MATEKS.TEST.DCLGEN                <- DCLGEN DATASET    
// SET LOADLIB=MATEKS.TEST.LOAD          <- LOAD LIBRARY              
// SET DBRMLIB=MATEKS.TEST.DBRM                 <- DBRM LIBRARY       
//*********************************************************             
//*       DB2 PRECOMPILE THE COBOL PROGRAM                              
//*********************************************************             
//PC      EXEC PGM=DSNHPC,                                              
//       PARM='HOST(IBMCOB),XREF,SOURCE,FLAG(I),APOST'                  
//STEPLIB  DD  DISP=SHR,DSN=DSN811.SDSNLOAD                             
//SYSIN    DD  DISP=SHR,DSN=&SOURCE(&MEMBER)                            
//SYSCIN   DD  DSN=&&DSNHOUT,DISP=(NEW,PASS),UNIT=SYSDA,                
//             SPACE=(800,(500,500))                                    
//DBRMLIB  DD  DISP=SHR,DSN=&DBRMLIB(&MEMBER)                           
//SYSLIB   DD  DISP=SHR,DSN=&INCLUDE                                    
//SYSPRINT DD  SYSOUT=*                                                 
//SYSTERM  DD  SYSOUT=*                                                 
//SYSUDUMP DD  SYSOUT=*                                                 
//SYSUT1   DD  SPACE=(800,(500,500),,,ROUND),UNIT=SYSDA                 
//SYSUT2   DD  SPACE=(800,(500,500),,,ROUND),UNIT=SYSDA                 
//**********************************************************************
// COMPILE THE COBOL PROGRAM                                          
//**********************************************************************
//COBCOMP  EXEC PGM=IGYCRCTL,                                           
//            PARM='LIB,SOURCE'                                         
//STEPLIB  DD DSN=IGY.SIGYCOMP,DISP=SHR                                 
//SYSIN    DD  DSN=&&DSNHOUT,DISP=(OLD,DELETE)   <--INPUT SOURCE        
//SYSPRINT DD  SYSOUT=*                                                 
//SYSLIN   DD  DSNAME=&&LOADSET,UNIT=SYSDA,      <--OUTPUT OBJECT
//             DISP=(MOD,PASS),SPACE=(TRK,(3,3)),                       
//             DCB=(BLKSIZE=3200)                                       
//SYSUT1   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//SYSUT2   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//SYSUT3   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//SYSUT4   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//SYSUT5   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//SYSUT6   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//SYSUT7   DD  UNIT=SYSDA,SPACE=(CYL,(1,1))                             
//**********************************************************************