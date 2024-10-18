trigger trigger1 on Account (after update) {

    For(Account account: Trigger.new) {

        if(account.Phone != null || account.Phone != '') {

            List<Account> accountsToUpdate= [SELECT Id FROM Account WHERE phone = :account.phone ORDER BY CreatedDate DESC];

            integer loopCounter = 0;
            for (Account accountToUpdate : accountsToUpdate) {
                loopCounter++;

                if(loopCounter == 1) {
                    continue;
                }

                accountToUpdate.phone = '000000000';  
            }

            update accountsToUpdate;
        }

    }

}