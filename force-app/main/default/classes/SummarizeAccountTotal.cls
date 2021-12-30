global class SummarizeAccountTotal implements Database.Batchable<sObject>, Database.Stateful{

   global final String Query;
   global String Summary;
  

   global Database.QueryLocator start(Database.BatchableContext BC){
      return Database.getQueryLocator('SELECT id,Name FROM ACCOUNT where Name like \'%test%\'');
   }
   
   global void execute(
                Database.BatchableContext BC, 
                List<sObject> scope){
      for(sObject s : scope){
         Summary += '*';
      }
   }

global void finish(Database.BatchableContext BC){
    system.debug('++++'+Summary);
   }
}