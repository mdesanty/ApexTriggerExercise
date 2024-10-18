trigger Trigger2 on Account (after insert, after update) {

    List<Id> accountsMarkedForDelete = new List<Id>();

    For(Account account: Trigger.new) {
        if(account.Status__c == 'Deleted') {
           accountsMarkedForDelete.add(account.Id);
        }
    }


    List<Contact> dealerContacts = [SELECT Id FROM Contact WHERE Account.Id IN :accountsMarkedForDelete];

    for( Contact contact : dealerContacts) {

        if(contact.MailingState == 'MA') {
            delete contact;
        }
        else {
            contact.Description = Helper.formatDescription(contact.Description);
            update contact;
        }
    }
}