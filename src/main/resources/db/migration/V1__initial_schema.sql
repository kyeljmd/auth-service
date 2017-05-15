/**
 * oauth2 client details
 */
CREATE TABLE oauth_client_details
(
  client_id character varying(256) NOT NULL,
  resource_ids character varying(256),
  client_secret character varying(256),
  scope character varying(256),
  authorized_grant_types character varying(256),
  web_server_redirect_uri character varying(256),
  authorities character varying(256),
  access_token_validity integer,
  refresh_token_validity integer,
  additional_information character varying(4096),
  autoapprove character varying(256),
  CONSTRAINT oauth_client_details_pkey PRIMARY KEY (client_id)
);

/**
 * Initial oauth2 client details
 */
INSERT INTO oauth_client_details
  (client_id, client_secret, scope, authorized_grant_types, access_token_validity, refresh_token_validity)
  VALUES
  ('myappclient', 'myappsecret', 'webclient,mobileclient', 'password,client_credentials,refresh_token', 1800, 3600);

