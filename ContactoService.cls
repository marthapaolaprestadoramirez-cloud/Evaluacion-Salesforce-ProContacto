public class ContactoService {

    @future(callout=true)
    public static void actualizarEmail(String contactId, String idProContacto) {
        try {
            String url = 'https://procontacto-reclutamiento-default-rtdb.firebaseio.com/contacts/' + idProContacto + '.json';
            Http http = new Http();
            HttpRequest req = new HttpRequest();
            req.setEndpoint(url);
            req.setMethod('GET');

            HttpResponse res = http.send(req);

            if(res.getStatusCode() == 200){
                Map<String, Object> resultado = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
                if(resultado.containsKey('email') && resultado.get('email') != null){
                    Contact c = [SELECT Id, Email FROM Contact WHERE Id = :contactId LIMIT 1];
                    c.Email = (String) resultado.get('email');
                    try {
                        update c;
                    } catch(Exception e){
                        System.debug('Error al actualizar Contacto: ' + e.getMessage());
                    }
                }
            } else {
                System.debug('Callout fallo con status code: ' + res.getStatusCode());
            }
        } catch(Exception e){
            System.debug('Error callout: ' + e.getMessage());
        }
    }
}