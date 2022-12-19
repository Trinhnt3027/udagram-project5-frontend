// TODO: Once your application is deployed, copy an API id here so that the frontend could interact with it
const apiId = '92drh94ggh'
export const apiEndpoint = `https://${apiId}.execute-api.us-east-1.amazonaws.com/dev`

export const authConfig = {
  // TODO: Create an Auth0 application and copy values from it into this map. For example:
  // domain: 'dev-nd9990-p4.us.auth0.com',
  domain: 'dev-beba1xrualyix42q.us.auth0.com',            // Auth0 domain
  clientId: 'YHcBJN4KEiFaINHOxL3lalb5nd0EkfCo',          // Auth0 client id
  callbackUrl: 'http://a55e942fe05a44c6db6ea3f9995f7140-1623065984.us-east-1.elb.amazonaws.com/callback'
}
