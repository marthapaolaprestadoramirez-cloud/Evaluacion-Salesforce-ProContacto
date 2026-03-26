trigger ContactoTrigger on Contact (after insert, after update) {

    for (Contact con : Trigger.new) {
        if (con.IdProContacto__c != null) {
            ContactoService.actualizarEmail(con.Id, con.IdProContacto__c);
        }
    }
}