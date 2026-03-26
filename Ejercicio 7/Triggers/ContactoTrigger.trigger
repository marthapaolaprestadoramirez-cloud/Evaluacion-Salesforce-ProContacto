trigger ContactoTrigger on Contact (after insert, after update) {

    for (Contact con : Trigger.new) {

        Contact oldCon = Trigger.oldMap != null ? Trigger.oldMap.get(con.Id) : null;

        // Solo ejecutar si el campo IdProContacto__c tiene valor
        // y si cambió (para evitar loop)
        if (con.IdProContacto__c != null &&
            (oldCon == null || con.IdProContacto__c != oldCon.IdProContacto__c)) {

            ContactoService.actualizarEmail(con.Id, con.IdProContacto__c);
        }
    }
}