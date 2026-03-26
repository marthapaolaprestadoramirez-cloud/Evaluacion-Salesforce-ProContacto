public class ContactoService {

    @future(callout=true)
    public static void actualizarEmail(String contactId, String idProContacto) {

        try {
            String url = 'https://procontacto-reclutamiento-default-rtdb.firebaseio.com/contacts/' 
                        + idProContacto + '.json';

            Http http = new Http();
            HttpRequest req = new HttpRequest();
            req.setEndpoint(url);
            req.setMethod('GET');

            HttpResponse res = http.send(req);

            System.debug('RESPONSE: ' + res.getBody());

            if (res.getStatusCode() == 200 && res.getBody() != null) {

                Map<String, Object> data = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());

                if (data != null && data.containsKey('email')) {

                    String email = (String) data.get('email');

                    System.debug('EMAIL OBTENIDO: ' + email);

                    Contact c = new Contact();
                    c.Id = contactId;
                    c.Email = email;

                    update c;

                    System.debug('CONTACTO ACTUALIZADO');
                }
            }

        } catch (Exception e) {
            System.debug('ERROR: ' + e.getMessage());
        }
    }
}