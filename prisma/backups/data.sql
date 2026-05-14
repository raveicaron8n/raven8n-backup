SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict fIVBrJnzWEdbe5hl9ubSb94qarao12yUttWBHhOOpaDuKLMtWPW0XKBNkwBGOhR

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:chatUser	Chat User	Chat User	global	t	2026-04-30 14:18:17.837+00	2026-04-30 14:18:17.837+00
global:owner	Owner	Owner	global	t	2026-04-30 14:16:08.199+00	2026-04-30 14:18:20.447+00
global:admin	Admin	Admin	global	t	2026-04-30 14:16:08.199+00	2026-04-30 14:18:20.447+00
global:member	Member	Member	global	t	2026-04-30 14:16:08.199+00	2026-04-30 14:18:20.447+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-04-30 14:16:08.199+00	2026-04-30 14:18:23.151+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-04-30 14:16:08.199+00	2026-04-30 14:18:23.151+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-04-30 14:16:08.199+00	2026-04-30 14:18:23.151+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-04-30 14:16:08.199+00	2026-04-30 14:18:23.151+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-04-30 14:16:08.199+00	2026-04-30 14:18:23.151+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-04-30 14:18:17.837+00	2026-04-30 14:18:17.837+00
credential:user	Credential User	Credential User	credential	t	2026-04-30 14:18:17.837+00	2026-04-30 14:18:17.837+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-04-30 14:18:17.837+00	2026-04-30 14:18:17.837+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-04-30 14:18:17.837+00	2026-04-30 14:18:17.837+00
secretsProviderConnection:owner	Secrets Provider Connection Owner	Full control of secrets provider connection settings and secrets	secretsProviderConnection	t	2026-04-30 14:18:17.837+00	2026-04-30 14:18:17.837+00
secretsProviderConnection:user	Secrets Provider Connection User	Read-only access to use secrets from the connection	secretsProviderConnection	t	2026-04-30 14:18:17.837+00	2026-04-30 14:18:17.837+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
22ca4401-6da6-4d92-a577-ff4958db6ffa	raveicaron8n@gmail.com	Rave Albemich	Icaro	$2a$10$dWVOV2HdgmzPpPTymVGbMu8HVBaVVHP1Tt3f0r2DNO7j3G2EbD1Na	{"version":"v4","personalization_survey_submitted_at":"2026-04-30T14:06:39.116Z","personalization_survey_n8n_version":"1.84.1","companySize":"<20","companyType":"saas","role":"business-owner","reportedSource":"youtube"}	2026-04-30 13:48:28.647+00	2026-05-01 04:39:16.205+00	{"userActivated":true,"easyAIWorkflowOnboarded":true,"dismissedCallouts":{"node-creator-shortcut-coachmark":true},"firstSuccessfulWorkflowId":"ILzLcy6Hai30g72g","userActivatedAt":1777610348834}	f	f	\N	\N	2026-05-01	global:owner
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description", "creatorId") FROM stdin;
ytV0KVQxMQClg4ZY	Rave Albemich Icaro <raveicaron8n@gmail.com>	personal	2026-04-30 13:59:21.629+00	2026-04-30 14:06:12.181+00	\N	\N	22ca4401-6da6-4d92-a577-ff4958db6ffa
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description", "activeVersionId") FROM stdin;
My workflow	t	[{"parameters":{"options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"tableId":"tasks","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"promptType":"define","text":"={{$json.message}}","options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"assignments":{"assignments":[{"id":"77af0734-b7a9-4d31-a082-80ec82fe8be2","name":"=user_id","value":"={{$json.body.user_id}}","type":"string"},{"id":"e13b2508-86c1-4521-9297-5530b7058a24","name":"=message","value":"={{$json.body.message}}","type":"string"},{"id":"0a5733e5-a51f-4886-9d07-270da6b77051","name":"=timezone","value":"={{$json.body.timezone}}","type":"string"},{"id":"46bba186-d834-4d9e-b7dc-2d5fd08bf5c5","name":"=today","value":"={{$json.body.today}}","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"httpMethod":"POST","path":"17aa8756-5381-46f5-974d-8bb70edabb53","responseMode":"responseNode","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}}]	{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]}}	2026-05-01 02:41:37.952+00	2026-05-01 04:30:18.543+00	{"executionOrder":"v1","binaryMode":"separate"}	\N	{}	3357fda1-c007-4e8c-884e-dd359eebf954	1	ILzLcy6Hai30g72g	{"templateCredsSetupCompleted":true}	\N	f	115	\N	3357fda1-c007-4e8c-884e-dd359eebf954
\.


--
-- Data for Name: ai_builder_temporary_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ai_builder_temporary_workflow" ("workflowId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."binary_data" ("fileId", "sourceType", "sourceId", "data", "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_resolver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_resolver" ("id", "name", "type", "config", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged", "isGlobal", "isResolvable", "resolvableAllowFallback", "resolverId") FROM stdin;
Supabase account	U2FsdGVkX1/wYjldklN3iRKVAaBcbXo8u8ujF33UjW+lXxJjtaMkQtQv7qpE72hoDc9mrmaNl7weVNcWcf4hR8O/kehu4xzRKP/AWZfThyqe9tYoPg/MYtgoWBJt0bR3miBeKuSPysiTQCfkIG+nS4JkvpiDHce6l05h7LJMPag=	supabaseApi	2026-05-01 03:06:11.02+00	2026-05-01 03:06:10.824+00	x4MjUTAD90T6ozOy	f	f	f	f	\N
OpenRouter account	U2FsdGVkX19OH7lw3SivJf0hp1i3ZnDLLGndALico7WkT9HkReM4haHCrfeYf2j4nb2APXyUjPaPzVxdMRXzvfndXqK/9p3C5+TJ4RxRuJ0bPcwdZ+uoHyro6NDWQ2HvczuNFsmzsAvVYfIl6X51FA==	openRouterApi	2026-05-01 03:31:53.401+00	2026-05-01 03:31:53.161+00	FR2n6Slti9BzPzoy	f	f	f	f	\N
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "icon", "files", "suggestedPrompts") FROM stdin;
\.


--
-- Data for Name: chat_hub_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_tools" ("id", "name", "type", "typeVersion", "ownerId", "definition", "enabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agent_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agent_tools" ("agentId", "toolId") FROM stdin;
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "type") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt", "storedAt") FROM stdin;
1	f	manual	\N	\N	2026-05-01 03:43:48.272+00	2026-05-01 03:44:25.548+00	\N	error	ILzLcy6Hai30g72g	\N	2026-05-01 03:43:47.455+00	db
2	f	manual	\N	\N	2026-05-01 03:47:40.233+00	2026-05-01 03:47:57.152+00	\N	error	ILzLcy6Hai30g72g	\N	2026-05-01 03:47:39.432+00	db
3	t	manual	\N	\N	2026-05-01 03:51:25.628+00	2026-05-01 03:51:28.32+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 03:51:24.827+00	db
4	t	manual	\N	\N	2026-05-01 03:52:36.479+00	2026-05-01 03:52:39.263+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 03:52:35.369+00	db
5	t	manual	\N	\N	2026-05-01 03:52:42.019+00	2026-05-01 03:52:44.134+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 03:52:41.211+00	db
6	t	manual	\N	\N	2026-05-01 03:56:38.16+00	2026-05-01 03:56:44.612+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 03:56:37.35+00	db
7	t	webhook	\N	\N	2026-05-01 04:39:06.874+00	2026-05-01 04:39:13.87+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 04:39:05.961+00	db
8	t	webhook	\N	\N	2026-05-01 04:40:42.991+00	2026-05-01 04:40:49.098+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 04:40:41.85+00	db
9	t	webhook	\N	\N	2026-05-01 04:42:58.74+00	2026-05-01 04:43:03.547+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 04:42:57.282+00	db
10	t	webhook	\N	\N	2026-05-01 04:48:41.209+00	2026-05-01 04:50:23.41+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 04:48:40.257+00	db
11	t	webhook	\N	\N	2026-05-01 04:50:01.785+00	2026-05-01 04:50:26.013+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 04:50:00.667+00	db
12	t	webhook	\N	\N	2026-05-01 09:17:40.325+00	2026-05-01 09:17:50.395+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 09:17:39.242+00	db
13	f	webhook	\N	\N	2026-05-01 09:19:10.676+00	2026-05-01 09:19:23.647+00	\N	error	ILzLcy6Hai30g72g	\N	2026-05-01 09:19:09.864+00	db
14	t	webhook	\N	\N	2026-05-01 09:19:33.245+00	2026-05-01 09:19:40.709+00	\N	success	ILzLcy6Hai30g72g	\N	2026-05-01 09:19:32.124+00	db
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status", "attachments") FROM stdin;
\.


--
-- Data for Name: chat_hub_session_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_session_tools" ("sessionId", "toolId") FROM stdin;
\.


--
-- Data for Name: credential_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credential_dependency" ("id", "credentialId", "dependencyType", "dependencyId", "createdAt") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: deployment_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."deployment_key" ("id", "type", "value", "algorithm", "status", "createdAt", "updatedAt") FROM stdin;
y2HKOXFnoNUMp12h	instance.id	bf427bfa0e774da51872ff070258a5d3167fcf9433f29b1b262c3d5d7174d928	\N	active	2026-04-30 14:18:12.42+00	2026-04-30 14:18:12.42+00
czjgTSCCjllMLbqM	signing.hmac	f2054383665c40c7b03d33f51c937ec3d7e68a9d0790b15879d500a0c670b0e7	\N	active	2026-04-30 14:18:13.636+00	2026-04-30 14:18:13.636+00
Xe9i7WuWWm1dcE7s	signing.jwt	15cdcf4755ecd5bc9a334cc066fa995d81f582faeb46176dcd064a0ab62c1ed3	\N	active	2026-04-30 14:18:14.776+00	2026-04-30 14:18:14.776+00
K0eeg5AZsX2YKI0U	signing.binary_data	e5/BW5wxTlLfvfvvtOHKmsXS3Qfz32HYoR6xA0Jnozc=	\N	active	2026-04-30 14:18:15.915+00	2026-04-30 14:18:15.915+00
\.


--
-- Data for Name: dynamic_credential_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_entry" ("credential_id", "subject_id", "resolver_id", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_user_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_user_entry" ("credentialId", "userId", "resolverId", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data", "workflowVersionId") FROM stdin;
1	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T03:43:42.645Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"","rightValue":"","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"","rightValue":"","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"// Loop over input items and add a new field called 'myNewField' to the JSON of each one\\nfor (const item of $input.all()) {\\n  item.json.myNewField = 1;\\n}\\n\\nreturn $input.all();","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"5728f4ae-c07d-4202-99b5-cd8e77f66876","name":"user_id","value":"amd-local-user","type":"string"},{"id":"c4c11187-563d-46fc-a528-9aefaefeb2a2","name":"message","value":"Can you set a schedule for me today at 3 pm for my trading study session?","type":"string"},{"id":"ef3cdb00-0d66-4156-aa24-9bcf3b0ea804","name":"timezone","value":"Asia/Taipei","type":"string"},{"id":"4bcc1fbf-c455-419a-811e-287683960a63","name":"today","value":"2026-05-01","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"GET","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"onReceived","contentTypeNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[-16,-256],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[16,0],"id":"e1af4b35-50e5-44c4-aa02-cf681f9e3beb","name":"When clicking ‘Execute workflow’"}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]},"When clicking ‘Execute workflow’":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{" Prepare Input":[{"json":{"user_id":"amd-local-user","message":"Can you set a schedule for me today at 3 pm for my trading study session?","timezone":"Asia/Taipei","today":"2026-05-01"},"pairedItem":{"item":0}}]}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"error":"5","runData":"6","pinData":"7","lastNodeExecuted":"8","metadata":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"d4ec6e4e4015d53cb6b3a29858fc64626157b5e72dc6d647170e51a861d49b48",{"level":"16","tags":"17","description":"18","timestamp":1777607064847,"context":"19","functionality":"20","name":"21","node":"22","messages":"23","message":"24","stack":"25"},{"When clicking ‘Execute workflow’":"26"," Prepare Input":"27","OpenRouter Chat Model":"28","Extract Task JSON":"29","Parse AI Output":"30","Is Clarification Needed?":"31","Reply Clarification":"32"},{" Prepare Input":"33"},"Reply Clarification",{"response_extract_task_json":"34"},{},["35"],{"OpenRouter Chat Model":"36"},{},{},{"version":1,"establishedAt":1777607030704,"source":"37","redaction":"38","triggerNode":"39"},"warning",{},"Insert a Webhook node to your workflow and set the “Respond” parameter to “Using Respond to Webhook Node” ",{},"regular","NodeOperationError",{"parameters":"40","type":"41","typeVersion":1.5,"position":"42","id":"43","name":"8"},[],"No Webhook node found in the workflow","NodeOperationError: No Webhook node found in the workflow\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/RespondToWebhook/RespondToWebhook.node.ts:391:12)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1048:32)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1239:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1687:38\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2339:11",["44"],["45"],["46"],["47"],["48"],["49"],["50"],["51"],"{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"Trading study session\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"2026-05-01\\",\\n  \\"start_time\\": \\"15:00\\",\\n  \\"end_time\\": \\"16:00\\",\\n  \\"priority\\": \\"medium\\",\\n  \\"status\\": \\"scheduled\\"\\n}",{"node":"52","data":"53","source":"54"},["55"],"manual",{"version":1,"policy":"56"},{"name":"57","type":"58"},{"enableResponseOutput":false,"generalNotice":"59","respondWith":"60","options":"61"},"n8n-nodes-base.respondToWebhook",[1248,-192],"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a",{"startTime":1777607031352,"executionIndex":0,"source":"62","hints":"63","executionTime":3,"executionStatus":"64","data":"65"},{"startTime":1777607031359,"executionIndex":1,"source":"66","hints":"67","executionTime":0,"executionStatus":"64","data":"68"},{"startTime":1777607049056,"executionTime":14995,"executionIndex":3,"executionStatus":"64","source":"69","data":"70","inputOverride":"71","metadata":"72"},{"startTime":1777607031360,"executionIndex":2,"source":"73","hints":"74","executionTime":32801,"executionStatus":"64","data":"75"},{"startTime":1777607064163,"executionIndex":4,"source":"76","hints":"77","executionTime":602,"executionStatus":"64","data":"78"},{"startTime":1777607064766,"executionIndex":5,"source":"79","hints":"80","executionTime":2,"executionStatus":"64","data":"81"},{"startTime":1777607064769,"executionIndex":6,"source":"82","hints":"83","executionTime":687,"executionStatus":"84","error":"85"},{"json":"86","pairedItem":"87"},{"parameters":"88","type":"41","typeVersion":1.5,"position":"89","id":"43","name":"8"},{"main":"90"},{"main":"82"},{"subRun":"91"},"none","When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger","","firstIncomingItem",{},[],[],"success",{"main":"92"},["93"],[],{"main":"94"},["95"],{"ai_languageModel":"96"},{"ai_languageModel":"97"},{"subRun":"91"},["98"],[],{"main":"99"},["100"],[],{"main":"101"},["102"],[],{"main":"103"},["104"],[],"error",{"level":"16","tags":"17","description":"18","timestamp":1777607064847,"context":"19","functionality":"20","name":"21","node":"22","messages":"23","message":"24","stack":"25"},{"user_id":"105","message":"106","timezone":"107","today":"108"},{"item":0},{"enableResponseOutput":false,"generalNotice":"59","respondWith":"60","options":"109"},[1248,-192],["110"],["111"],["112"],{"previousNode":"57","previousNodeOutput":0,"previousNodeRun":0},["33"],{"previousNode":"113","previousNodeRun":0},["114"],["115"],{"previousNode":"116","previousNodeOutput":0,"previousNodeRun":0},["117"],{"previousNode":"113","previousNodeOutput":0,"previousNodeRun":0},["118"],{"previousNode":"119","previousNodeOutput":0,"previousNodeRun":0},["120","121"],{"previousNode":"122","previousNodeOutput":0,"previousNodeRun":0},"amd-local-user","Can you set a schedule for me today at 3 pm for my trading study session?","Asia/Taipei","2026-05-01",{},["123"],{"node":"124","runIndex":0},["125"],"Extract Task JSON",["126"],["127"]," Prepare Input",["128"],["129"],"Parse AI Output",["130"],[],"Is Clarification Needed?",{"json":"131","pairedItem":"132"},"OpenRouter Chat Model",{"json":"133","pairedItem":"134"},{"json":"135"},{"json":"136"},{"json":"137","pairedItem":"138"},{"json":"131","pairedItem":"139"},{"json":"131","pairedItem":"140"},{"output":"34","myNewField":1},{"item":0},{},{"item":0},{"response":"141","tokenUsage":"142"},{"messages":"143","estimatedTokens":244,"options":"144"},{"output":"34"},{"item":0},{"item":0},{"item":0},{"generations":"145"},{"completionTokens":1368,"promptTokens":257,"totalTokens":1625},["146"],{"openai_api_key":"147","model":"148","max_retries":2,"configuration":"149","model_kwargs":"150"},["151"],"System: You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: 2026-05-01\\nTimezone: Asia/Taipei\\nUser ID: amd-local-user\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n\\nHuman: Can you set a schedule for me today at 3 pm for my trading study session?",{"lc":1,"type":"152","id":"153"},"openrouter/free",{"baseURL":"154","fetchOptions":"155"},{},["156"],"secret",["157"],"https://openrouter.ai/api/v1",{"dispatcher":"158"},{"text":"34","generationInfo":"159"},"OPENAI_API_KEY",{"_events":"160","_eventsCount":0},{"finish_reason":"161"},{},"stop"]	e47c0aff-3224-496d-9890-4ba49354e10b
2	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T03:47:28.547Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"","rightValue":"","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"","rightValue":"","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"5728f4ae-c07d-4202-99b5-cd8e77f66876","name":"user_id","value":"amd-local-user","type":"string"},{"id":"c4c11187-563d-46fc-a528-9aefaefeb2a2","name":"message","value":"Can you set a schedule for me today at 3 pm for my trading study session?","type":"string"},{"id":"ef3cdb00-0d66-4156-aa24-9bcf3b0ea804","name":"timezone","value":"Asia/Taipei","type":"string"},{"id":"4bcc1fbf-c455-419a-811e-287683960a63","name":"today","value":"2026-05-01","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"GET","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"onReceived","contentTypeNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[-16,-256],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[16,0],"id":"e1af4b35-50e5-44c4-aa02-cf681f9e3beb","name":"When clicking ‘Execute workflow’"}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]},"When clicking ‘Execute workflow’":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{" Prepare Input":[{"json":{"user_id":"amd-local-user","message":"Can you set a schedule for me today at 3 pm for my trading study session?","timezone":"Asia/Taipei","today":"2026-05-01"},"pairedItem":{"item":0}}]}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"error":"5","runData":"6","pinData":"7","lastNodeExecuted":"8","metadata":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"1fc4ec030880032839634f6443a3ed0cb1f54fbc72107743cd1cb6da39b0e049",{"level":"16","tags":"17","description":"18","timestamp":1777607277151,"context":"19","functionality":"20","name":"21","node":"22","messages":"23","message":"24","stack":"25"},{"When clicking ‘Execute workflow’":"26"," Prepare Input":"27","OpenRouter Chat Model":"28","Extract Task JSON":"29","Parse AI Output":"30","Is Clarification Needed?":"31","Reply Clarification":"32"},{" Prepare Input":"33"},"Reply Clarification",{"response_extract_task_json":"34"},{},["35"],{"OpenRouter Chat Model":"36"},{},{},{"version":1,"establishedAt":1777607261843,"source":"37","redaction":"38","triggerNode":"39"},"warning",{},"Insert a Webhook node to your workflow and set the “Respond” parameter to “Using Respond to Webhook Node” ",{},"regular","NodeOperationError",{"parameters":"40","type":"41","typeVersion":1.5,"position":"42","id":"43","name":"8"},[],"No Webhook node found in the workflow","NodeOperationError: No Webhook node found in the workflow\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/RespondToWebhook/RespondToWebhook.node.ts:391:12)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1048:32)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1239:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1687:38\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2339:11",["44"],["45"],["46"],["47"],["48"],["49"],["50"],["51"],"{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"Trading study session\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"2026-05-01\\",\\n  \\"start_time\\": \\"15:00\\",\\n  \\"end_time\\": \\"16:00\\",\\n  \\"priority\\": \\"medium\\",\\n  \\"status\\": \\"scheduled\\"\\n}",{"node":"52","data":"53","source":"54"},["55"],"manual",{"version":1,"policy":"56"},{"name":"57","type":"58"},{"enableResponseOutput":false,"generalNotice":"59","respondWith":"60","options":"61"},"n8n-nodes-base.respondToWebhook",[1248,-192],"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a",{"startTime":1777607262332,"executionIndex":0,"source":"62","hints":"63","executionTime":1,"executionStatus":"64","data":"65"},{"startTime":1777607262336,"executionIndex":1,"source":"66","hints":"67","executionTime":0,"executionStatus":"64","data":"68"},{"startTime":1777607262675,"executionTime":14300,"executionIndex":3,"executionStatus":"64","source":"69","data":"70","inputOverride":"71","metadata":"72"},{"startTime":1777607262338,"executionIndex":2,"source":"73","hints":"74","executionTime":14640,"executionStatus":"64","data":"75"},{"startTime":1777607277047,"executionIndex":4,"source":"76","hints":"77","executionTime":100,"executionStatus":"64","data":"78"},{"startTime":1777607277148,"executionIndex":5,"source":"79","hints":"80","executionTime":1,"executionStatus":"64","data":"81"},{"startTime":1777607277150,"executionIndex":6,"source":"82","hints":"83","executionTime":1,"executionStatus":"84","error":"85"},{"json":"86","pairedItem":"87"},{"parameters":"88","type":"41","typeVersion":1.5,"position":"89","id":"43","name":"8"},{"main":"90"},{"main":"82"},{"subRun":"91"},"none","When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger","","firstIncomingItem",{},[],[],"success",{"main":"92"},["93"],[],{"main":"94"},["95"],{"ai_languageModel":"96"},{"ai_languageModel":"97"},{"subRun":"91"},["98"],[],{"main":"99"},["100"],[],{"main":"101"},["102"],[],{"main":"103"},["104"],[],"error",{"level":"16","tags":"17","description":"18","timestamp":1777607277151,"context":"19","functionality":"20","name":"21","node":"22","messages":"23","message":"24","stack":"25"},{"user_id":"105","message":"106","timezone":"107","today":"108"},{"item":0},{"enableResponseOutput":false,"generalNotice":"59","respondWith":"60","options":"109"},[1248,-192],["110"],["111"],["112"],{"previousNode":"57","previousNodeOutput":0,"previousNodeRun":0},["33"],{"previousNode":"113","previousNodeRun":0},["114"],["115"],{"previousNode":"116","previousNodeOutput":0,"previousNodeRun":0},["117"],{"previousNode":"113","previousNodeOutput":0,"previousNodeRun":0},["118"],{"previousNode":"119","previousNodeOutput":0,"previousNodeRun":0},["120","121"],{"previousNode":"122","previousNodeOutput":0,"previousNodeRun":0},"amd-local-user","Can you set a schedule for me today at 3 pm for my trading study session?","Asia/Taipei","2026-05-01",{},["123"],{"node":"124","runIndex":0},["125"],"Extract Task JSON",["126"],["127"]," Prepare Input",["128"],["129"],"Parse AI Output",["130"],[],"Is Clarification Needed?",{"json":"131","pairedItem":"132"},"OpenRouter Chat Model",{"json":"133","pairedItem":"134"},{"json":"135"},{"json":"136"},{"json":"137","pairedItem":"138"},{"json":"131","pairedItem":"139"},{"json":"131","pairedItem":"140"},{"intent":"141","user_id":"105","title":"142","details":"59","date":"108","start_time":"143","end_time":"144","priority":"145","status":"146"},{"item":0},{},{"item":0},{"response":"147","tokenUsage":"148"},{"messages":"149","estimatedTokens":244,"options":"150"},{"output":"34"},{"item":0},{"item":0},{"item":0},"create_task","Trading study session","15:00","16:00","medium","scheduled",{"generations":"151"},{"completionTokens":1339,"promptTokens":257,"totalTokens":1596},["152"],{"openai_api_key":"153","model":"154","max_retries":2,"configuration":"155","model_kwargs":"156"},["157"],"System: You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: 2026-05-01\\nTimezone: Asia/Taipei\\nUser ID: amd-local-user\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n\\nHuman: Can you set a schedule for me today at 3 pm for my trading study session?",{"lc":1,"type":"158","id":"159"},"openrouter/free",{"baseURL":"160","fetchOptions":"161"},{},["162"],"secret",["163"],"https://openrouter.ai/api/v1",{"dispatcher":"164"},{"text":"34","generationInfo":"165"},"OPENAI_API_KEY",{"_events":"166","_eventsCount":0},{"finish_reason":"167"},{},"stop"]	abeb742e-37bd-4abc-8d4b-f608511f254f
3	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T03:51:05.496Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"","rightValue":"","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"5728f4ae-c07d-4202-99b5-cd8e77f66876","name":"user_id","value":"amd-local-user","type":"string"},{"id":"c4c11187-563d-46fc-a528-9aefaefeb2a2","name":"message","value":"Can you set a schedule for me today at 3 pm for my trading study session?","type":"string"},{"id":"ef3cdb00-0d66-4156-aa24-9bcf3b0ea804","name":"timezone","value":"Asia/Taipei","type":"string"},{"id":"4bcc1fbf-c455-419a-811e-287683960a63","name":"today","value":"2026-05-01","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"GET","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"onReceived","contentTypeNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[-16,-256],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[16,0],"id":"e1af4b35-50e5-44c4-aa02-cf681f9e3beb","name":"When clicking ‘Execute workflow’"}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]},"When clicking ‘Execute workflow’":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{" Prepare Input":[{"json":{"user_id":"amd-local-user","message":"Can you set a schedule for me today at 3 pm for my trading study session?","timezone":"Asia/Taipei","today":"2026-05-01"}}]}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"d2057781dfb2a09f3f574456859238d564ed07842b72f3b9e0fb09a43ab68baf",{"nodeName":"9","mode":"16"},["17","18","9","19","20","21"],{"When clicking ‘Execute workflow’":"22"," Prepare Input":"23","Extract Task JSON":"24","Parse AI Output":"25","Is Clarification Needed?":"26"},{" Prepare Input":"27"},"Is Clarification Needed?",{},[],{},{},{},{"version":1,"establishedAt":1777607487552,"source":"28","redaction":"29","triggerNode":"30"},"inclusive","When clicking ‘Execute workflow’","Parse AI Output","Extract Task JSON"," Prepare Input","OpenRouter Chat Model",["31"],["32"],["33"],["34"],["35"],["36"],"manual",{"version":1,"policy":"37"},{"name":"9","type":"38"},{"startTime":1777607262332,"executionIndex":0,"source":"39","hints":"40","executionTime":1,"executionStatus":"41","data":"42"},{"startTime":1777607262336,"executionIndex":1,"source":"43","hints":"44","executionTime":0,"executionStatus":"41","data":"45"},{"startTime":1777607262338,"executionIndex":2,"source":"46","hints":"47","executionTime":14640,"executionStatus":"41","data":"48"},{"startTime":1777607277047,"executionIndex":4,"source":"49","hints":"50","executionTime":100,"executionStatus":"41","data":"51"},{"startTime":1777607488314,"executionIndex":5,"source":"52","hints":"53","executionTime":6,"executionStatus":"41","data":"54"},{"json":"55"},"none","n8n-nodes-base.if",[],[],"success",{"main":"56"},["57"],[],{"main":"58"},["59"],[],{"main":"60"},["61"],[],{"main":"62"},["63"],[],{"main":"64"},{"user_id":"65","message":"66","timezone":"67","today":"68"},["69"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["70"],{"previousNode":"20","previousNodeOutput":0,"previousNodeRun":0},["71"],{"previousNode":"19","previousNodeOutput":0,"previousNodeRun":0},["72"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},["73","74"],"amd-local-user","Can you set a schedule for me today at 3 pm for my trading study session?","Asia/Taipei","2026-05-01",["75"],["76"],["77"],["78"],[],["79"],{"json":"80","pairedItem":"81"},{"json":"82","pairedItem":"83"},{"json":"84","pairedItem":"85"},{"json":"86","pairedItem":"87"},{"json":"86","pairedItem":"88"},{},{"item":0},{"user_id":"65","message":"66","timezone":"67","today":"68"},{"item":0},{"output":"89"},{"item":0},{"intent":"90","user_id":"65","title":"91","details":"92","date":"68","start_time":"93","end_time":"94","priority":"95","status":"96"},{"item":0},{"item":0},"{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"Trading study session\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"2026-05-01\\",\\n  \\"start_time\\": \\"15:00\\",\\n  \\"end_time\\": \\"16:00\\",\\n  \\"priority\\": \\"medium\\",\\n  \\"status\\": \\"scheduled\\"\\n}","create_task","Trading study session","","15:00","16:00","medium","scheduled"]	ccea98b4-675b-4541-a3ed-815eb2b00588
4	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T03:52:29.204Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"5728f4ae-c07d-4202-99b5-cd8e77f66876","name":"user_id","value":"amd-local-user","type":"string"},{"id":"c4c11187-563d-46fc-a528-9aefaefeb2a2","name":"message","value":"Can you set a schedule for me today at 3 pm for my trading study session?","type":"string"},{"id":"ef3cdb00-0d66-4156-aa24-9bcf3b0ea804","name":"timezone","value":"Asia/Taipei","type":"string"},{"id":"4bcc1fbf-c455-419a-811e-287683960a63","name":"today","value":"2026-05-01","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"GET","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"onReceived","contentTypeNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[-16,-256],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[16,0],"id":"e1af4b35-50e5-44c4-aa02-cf681f9e3beb","name":"When clicking ‘Execute workflow’"}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]},"When clicking ‘Execute workflow’":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{" Prepare Input":[{"json":{"user_id":"amd-local-user","message":"Can you set a schedule for me today at 3 pm for my trading study session?","timezone":"Asia/Taipei","today":"2026-05-01"}}]}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"ba7aba52ebd95ef79a765200db8c9016c4dd0d4414e02f8bd83723bc3ac586d9",{"nodeName":"9","mode":"16"},["17","18","9","19","20","21","22"],{"When clicking ‘Execute workflow’":"23"," Prepare Input":"24","Extract Task JSON":"25","Parse AI Output":"26","Is Clarification Needed?":"27","Is Task JSON Valid?":"28"},{" Prepare Input":"29"},"Is Task JSON Valid?",{},[],{},{},{},{"version":1,"establishedAt":1777607558767,"source":"30","redaction":"31","triggerNode":"32"},"inclusive","When clicking ‘Execute workflow’","Is Clarification Needed?","Parse AI Output","Extract Task JSON"," Prepare Input","OpenRouter Chat Model",["33"],["34"],["35"],["36"],["37"],["38"],["39"],"manual",{"version":1,"policy":"40"},{"name":"9","type":"41"},{"startTime":1777607262332,"executionIndex":0,"source":"42","hints":"43","executionTime":1,"executionStatus":"44","data":"45"},{"startTime":1777607262336,"executionIndex":1,"source":"46","hints":"47","executionTime":0,"executionStatus":"44","data":"48"},{"startTime":1777607262338,"executionIndex":2,"source":"49","hints":"50","executionTime":14640,"executionStatus":"44","data":"51"},{"startTime":1777607277047,"executionIndex":4,"source":"52","hints":"53","executionTime":100,"executionStatus":"44","data":"54"},{"startTime":1777607488314,"executionIndex":5,"source":"55","hints":"56","executionTime":6,"executionStatus":"44","data":"57"},{"startTime":1777607559260,"executionIndex":6,"source":"58","hints":"59","executionTime":2,"executionStatus":"44","data":"60"},{"json":"61"},"none","n8n-nodes-base.if",[],[],"success",{"main":"62"},["63"],[],{"main":"64"},["65"],[],{"main":"66"},["67"],[],{"main":"68"},["69"],[],{"main":"70"},["71"],[],{"main":"72"},{"user_id":"73","message":"74","timezone":"75","today":"76"},["77"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["78"],{"previousNode":"21","previousNodeOutput":0,"previousNodeRun":0},["79"],{"previousNode":"20","previousNodeOutput":0,"previousNodeRun":0},["80"],{"previousNode":"19","previousNodeOutput":0,"previousNodeRun":0},["81","82"],{"previousNode":"18","previousNodeOutput":1,"previousNodeRun":0},["83","84"],"amd-local-user","Can you set a schedule for me today at 3 pm for my trading study session?","Asia/Taipei","2026-05-01",["85"],["86"],["87"],["88"],[],["89"],["90"],[],{"json":"91","pairedItem":"92"},{"json":"93","pairedItem":"94"},{"json":"95","pairedItem":"96"},{"json":"97","pairedItem":"98"},{"json":"99","pairedItem":"100"},{"json":"99","pairedItem":"101"},{},{"item":0},{"user_id":"73","message":"74","timezone":"75","today":"76"},{"item":0},{"output":"102"},{"item":0},{"intent":"103","user_id":"73","title":"104","details":"105","date":"76","start_time":"106","end_time":"107","priority":"108","status":"109"},{"item":0},{"intent":"103","user_id":"73","title":"104","details":"105","date":"76","start_time":"106","end_time":"107","priority":"108","status":"109"},{"item":0},{"item":0},"{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"Trading study session\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"2026-05-01\\",\\n  \\"start_time\\": \\"15:00\\",\\n  \\"end_time\\": \\"16:00\\",\\n  \\"priority\\": \\"medium\\",\\n  \\"status\\": \\"scheduled\\"\\n}","create_task","Trading study session","","15:00","16:00","medium","scheduled"]	239d0c40-7704-40a8-ac32-bf7fa4a9dd92
5	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T03:52:34.716Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"5728f4ae-c07d-4202-99b5-cd8e77f66876","name":"user_id","value":"amd-local-user","type":"string"},{"id":"c4c11187-563d-46fc-a528-9aefaefeb2a2","name":"message","value":"Can you set a schedule for me today at 3 pm for my trading study session?","type":"string"},{"id":"ef3cdb00-0d66-4156-aa24-9bcf3b0ea804","name":"timezone","value":"Asia/Taipei","type":"string"},{"id":"4bcc1fbf-c455-419a-811e-287683960a63","name":"today","value":"2026-05-01","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"GET","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"onReceived","contentTypeNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[-16,-256],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[16,0],"id":"e1af4b35-50e5-44c4-aa02-cf681f9e3beb","name":"When clicking ‘Execute workflow’"}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]},"When clicking ‘Execute workflow’":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{" Prepare Input":[{"json":{"user_id":"amd-local-user","message":"Can you set a schedule for me today at 3 pm for my trading study session?","timezone":"Asia/Taipei","today":"2026-05-01"}}]}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"3637d0a240cf16061394942d75d7bc269281fe55101bc451ed16a87a77c2d42b",{"nodeName":"9","mode":"16"},["17","18","9","19","20","21","22"],{"When clicking ‘Execute workflow’":"23"," Prepare Input":"24","Extract Task JSON":"25","Parse AI Output":"26","Is Clarification Needed?":"27","Is Task JSON Valid?":"28"},{" Prepare Input":"29"},"Is Task JSON Valid?",{},[],{},{},{},{"version":1,"establishedAt":1777607563639,"source":"30","redaction":"31","triggerNode":"32"},"inclusive","When clicking ‘Execute workflow’","Is Clarification Needed?","Parse AI Output","Extract Task JSON"," Prepare Input","OpenRouter Chat Model",["33"],["34"],["35"],["36"],["37"],["38"],["39"],"manual",{"version":1,"policy":"40"},{"name":"9","type":"41"},{"startTime":1777607262332,"executionIndex":0,"source":"42","hints":"43","executionTime":1,"executionStatus":"44","data":"45"},{"startTime":1777607262336,"executionIndex":1,"source":"46","hints":"47","executionTime":0,"executionStatus":"44","data":"48"},{"startTime":1777607262338,"executionIndex":2,"source":"49","hints":"50","executionTime":14640,"executionStatus":"44","data":"51"},{"startTime":1777607277047,"executionIndex":4,"source":"52","hints":"53","executionTime":100,"executionStatus":"44","data":"54"},{"startTime":1777607488314,"executionIndex":5,"source":"55","hints":"56","executionTime":6,"executionStatus":"44","data":"57"},{"startTime":1777607564132,"executionIndex":6,"source":"58","hints":"59","executionTime":1,"executionStatus":"44","data":"60"},{"json":"61"},"none","n8n-nodes-base.if",[],[],"success",{"main":"62"},["63"],[],{"main":"64"},["65"],[],{"main":"66"},["67"],[],{"main":"68"},["69"],[],{"main":"70"},["71"],[],{"main":"72"},{"user_id":"73","message":"74","timezone":"75","today":"76"},["77"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["78"],{"previousNode":"21","previousNodeOutput":0,"previousNodeRun":0},["79"],{"previousNode":"20","previousNodeOutput":0,"previousNodeRun":0},["80"],{"previousNode":"19","previousNodeOutput":0,"previousNodeRun":0},["81","82"],{"previousNode":"18","previousNodeOutput":1,"previousNodeRun":0},["83","84"],"amd-local-user","Can you set a schedule for me today at 3 pm for my trading study session?","Asia/Taipei","2026-05-01",["85"],["86"],["87"],["88"],[],["89"],["90"],[],{"json":"91","pairedItem":"92"},{"json":"93","pairedItem":"94"},{"json":"95","pairedItem":"96"},{"json":"97","pairedItem":"98"},{"json":"99","pairedItem":"100"},{"json":"99","pairedItem":"101"},{},{"item":0},{"user_id":"73","message":"74","timezone":"75","today":"76"},{"item":0},{"output":"102"},{"item":0},{"intent":"103","user_id":"73","title":"104","details":"105","date":"76","start_time":"106","end_time":"107","priority":"108","status":"109"},{"item":0},{"intent":"103","user_id":"73","title":"104","details":"105","date":"76","start_time":"106","end_time":"107","priority":"108","status":"109"},{"item":0},{"item":0},"{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"Trading study session\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"2026-05-01\\",\\n  \\"start_time\\": \\"15:00\\",\\n  \\"end_time\\": \\"16:00\\",\\n  \\"priority\\": \\"medium\\",\\n  \\"status\\": \\"scheduled\\"\\n}","create_task","Trading study session","","15:00","16:00","medium","scheduled"]	239d0c40-7704-40a8-ac32-bf7fa4a9dd92
6	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T03:55:52.192Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"5728f4ae-c07d-4202-99b5-cd8e77f66876","name":"user_id","value":"amd-local-user","type":"string"},{"id":"c4c11187-563d-46fc-a528-9aefaefeb2a2","name":"message","value":"Can you set a schedule for me today at 3 pm for my trading study session?","type":"string"},{"id":"ef3cdb00-0d66-4156-aa24-9bcf3b0ea804","name":"timezone","value":"Asia/Taipei","type":"string"},{"id":"4bcc1fbf-c455-419a-811e-287683960a63","name":"today","value":"2026-05-01","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"GET","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"onReceived","contentTypeNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[-16,-256],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[16,0],"id":"e1af4b35-50e5-44c4-aa02-cf681f9e3beb","name":"When clicking ‘Execute workflow’"}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]},"When clicking ‘Execute workflow’":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{" Prepare Input":[{"json":{"user_id":"amd-local-user","message":"Can you set a schedule for me today at 3 pm for my trading study session?","timezone":"Asia/Taipei","today":"2026-05-01"}}]}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"dc5db3e6c207f728bd5ef7add62d93daab3be436ef66ac05a188765298443872",{"nodeName":"9","mode":"16"},["17","18","9","19","20","21","22","23"],{"When clicking ‘Execute workflow’":"24"," Prepare Input":"25","Extract Task JSON":"26","Parse AI Output":"27","Is Clarification Needed?":"28","Is Task JSON Valid?":"29","Create Task in Supabase":"30"},{" Prepare Input":"31"},"Create Task in Supabase",{},[],{},{},{},{"version":1,"establishedAt":1777607799782,"source":"32","redaction":"33","triggerNode":"34"},"inclusive","When clicking ‘Execute workflow’","Is Task JSON Valid?","Is Clarification Needed?","Parse AI Output","Extract Task JSON"," Prepare Input","OpenRouter Chat Model",["35"],["36"],["37"],["38"],["39"],["40"],["41"],["42"],"manual",{"version":1,"policy":"43"},{"name":"9","type":"44"},{"startTime":1777607262332,"executionIndex":0,"source":"45","hints":"46","executionTime":1,"executionStatus":"47","data":"48"},{"startTime":1777607262336,"executionIndex":1,"source":"49","hints":"50","executionTime":0,"executionStatus":"47","data":"51"},{"startTime":1777607262338,"executionIndex":2,"source":"52","hints":"53","executionTime":14640,"executionStatus":"47","data":"54"},{"startTime":1777607277047,"executionIndex":4,"source":"55","hints":"56","executionTime":100,"executionStatus":"47","data":"57"},{"startTime":1777607488314,"executionIndex":5,"source":"58","hints":"59","executionTime":6,"executionStatus":"47","data":"60"},{"startTime":1777607564132,"executionIndex":6,"source":"61","hints":"62","executionTime":1,"executionStatus":"47","data":"63"},{"startTime":1777607800583,"executionIndex":7,"source":"64","hints":"65","executionTime":4027,"executionStatus":"47","data":"66"},{"json":"67"},"none","n8n-nodes-base.supabase",[],[],"success",{"main":"68"},["69"],[],{"main":"70"},["71"],[],{"main":"72"},["73"],[],{"main":"74"},["75"],[],{"main":"76"},["77"],[],{"main":"78"},["79"],[],{"main":"80"},{"user_id":"81","message":"82","timezone":"83","today":"84"},["85"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["86"],{"previousNode":"22","previousNodeOutput":0,"previousNodeRun":0},["87"],{"previousNode":"21","previousNodeOutput":0,"previousNodeRun":0},["88"],{"previousNode":"20","previousNodeOutput":0,"previousNodeRun":0},["89","90"],{"previousNode":"19","previousNodeOutput":1,"previousNodeRun":0},["91","92"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},["93"],"amd-local-user","Can you set a schedule for me today at 3 pm for my trading study session?","Asia/Taipei","2026-05-01",["94"],["95"],["96"],["97"],[],["98"],["99"],[],["100"],{"json":"101","pairedItem":"102"},{"json":"103","pairedItem":"104"},{"json":"105","pairedItem":"106"},{"json":"107","pairedItem":"108"},{"json":"109","pairedItem":"110"},{"json":"111","pairedItem":"112"},{"json":"113","pairedItem":"114"},{},{"item":0},{"user_id":"81","message":"82","timezone":"83","today":"84"},{"item":0},{"output":"115"},{"item":0},{"intent":"116","user_id":"81","title":"117","details":"118","date":"84","start_time":"119","end_time":"120","priority":"121","status":"122"},{"item":0},{"intent":"116","user_id":"81","title":"117","details":"118","date":"84","start_time":"119","end_time":"120","priority":"121","status":"122"},{"item":0},{"intent":"116","user_id":"81","title":"117","details":"118","date":"84","start_time":"119","end_time":"120","priority":"121","status":"122"},{"item":0},{"id":"123","user_id":"81","title":"117","details":"118","date":"84","start_time":"124","end_time":"125","priority":"121","status":"122","source":"126","created_at":"127","updated_at":"127"},{"item":0},"{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"Trading study session\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"2026-05-01\\",\\n  \\"start_time\\": \\"15:00\\",\\n  \\"end_time\\": \\"16:00\\",\\n  \\"priority\\": \\"medium\\",\\n  \\"status\\": \\"scheduled\\"\\n}","create_task","Trading study session","","15:00","16:00","medium","scheduled","45c7d9f4-2552-4ce6-860d-e9efd53763c6","15:00:00","16:00:00","ai","2026-05-01T03:56:44.463862+00:00"]	c30c1371-4573-4377-bded-b58723638a8c
7	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":true,"activeVersionId":"3357fda1-c007-4e8c-884e-dd359eebf954","isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T04:30:18.543Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"77af0734-b7a9-4d31-a082-80ec82fe8be2","name":"=user_id","value":"={{$json.body.user_id}}","type":"string"},{"id":"e13b2508-86c1-4521-9297-5530b7058a24","name":"=message","value":"={{$json.body.message}}","type":"string"},{"id":"0a5733e5-a51f-4886-9d07-270da6b77051","name":"=timezone","value":"={{$json.body.timezone}}","type":"string"},{"id":"46bba186-d834-4d9e-b7dc-2d5fd08bf5c5","name":"=today","value":"={{$json.body.today}}","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"POST","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"responseNode","webhookNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":{},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","lastNodeExecuted":"6","metadata":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"bc4014f96547454e897a8cb4290c2c76e15b8ffc243868cd27b72bf65c8e0962",{"Chat In":"14"," Prepare Input":"15","OpenRouter Chat Model":"16","Extract Task JSON":"17","Parse AI Output":"18","Is Clarification Needed?":"19","Is Task JSON Valid?":"20","Create Task in Supabase":"21","Reply Success":"22"},"Reply Success",{"response_extract_task_json":"23"},{},[],{"OpenRouter Chat Model":"24"},{},{},{"version":1,"establishedAt":1777610348836,"source":"25","redaction":"26","triggerNode":"27"},["28"],["29"],["30"],["31"],["32"],["33"],["34"],["35"],["36"],"{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"2026-04-30\\",\\n  \\"start_time\\": \\"18:00\\",\\n  \\"end_time\\": \\"20:00\\",\\n  \\"priority\\": \\"medium\\",\\n  \\"status\\": \\"scheduled\\"\\n}",["37"],"webhook",{"version":1,"policy":"38"},{"name":"39","type":"40"},{"startTime":1777610348836,"executionIndex":0,"source":"41","hints":"42","executionTime":1,"executionStatus":"43","data":"44"},{"startTime":1777610348837,"executionIndex":1,"source":"45","hints":"46","executionTime":22,"executionStatus":"43","data":"47"},{"startTime":1777610349353,"executionTime":2652,"executionIndex":3,"executionStatus":"43","source":"48","data":"49","inputOverride":"50","metadata":"51"},{"startTime":1777610348859,"executionIndex":2,"source":"52","hints":"53","executionTime":3149,"executionStatus":"43","data":"54"},{"startTime":1777610352008,"executionIndex":4,"source":"55","hints":"56","executionTime":45,"executionStatus":"43","data":"57"},{"startTime":1777610352053,"executionIndex":5,"source":"58","hints":"59","executionTime":2,"executionStatus":"43","data":"60"},{"startTime":1777610352055,"executionIndex":6,"source":"61","hints":"62","executionTime":0,"executionStatus":"43","data":"63"},{"startTime":1777610352056,"executionIndex":7,"source":"64","hints":"65","executionTime":1812,"executionStatus":"43","data":"66"},{"startTime":1777610353868,"executionIndex":8,"source":"67","hints":"68","executionTime":1,"executionStatus":"43","data":"69"},{"subRun":"70"},"none","Chat In","n8n-nodes-base.webhook",[],[],"success",{"main":"71"},["72"],[],{"main":"73"},["74"],{"ai_languageModel":"75"},{"ai_languageModel":"76"},{"subRun":"70"},["77"],[],{"main":"78"},["79"],[],{"main":"80"},["81"],[],{"main":"82"},["83"],[],{"main":"84"},["85"],[],{"main":"86"},["87"],[],{"main":"88"},["89"],["90"],{"previousNode":"39","previousNodeOutput":0,"previousNodeRun":0},["91"],{"previousNode":"92","previousNodeRun":0},["93"],["94"],{"previousNode":"95","previousNodeOutput":0,"previousNodeRun":0},["96"],{"previousNode":"92","previousNodeOutput":0,"previousNodeRun":0},["97"],{"previousNode":"98","previousNodeOutput":0,"previousNodeRun":0},["99","100"],{"previousNode":"101","previousNodeOutput":1,"previousNodeRun":0},["102","103"],{"previousNode":"104","previousNodeOutput":0,"previousNodeRun":0},["105"],{"previousNode":"106","previousNodeOutput":0,"previousNodeRun":0},["107"],{"node":"108","runIndex":0},["109"],["110"],"Extract Task JSON",["111"],["112"]," Prepare Input",["113"],["114"],"Parse AI Output",[],["115"],"Is Clarification Needed?",["116"],[],"Is Task JSON Valid?",["117"],"Create Task in Supabase",["118"],"OpenRouter Chat Model",{"json":"119","pairedItem":"120"},{"json":"121","pairedItem":"122"},{"json":"123"},{"json":"124"},{"json":"125","pairedItem":"126"},{"json":"127","pairedItem":"128"},{"json":"127","pairedItem":"129"},{"json":"127","pairedItem":"130"},{"json":"131","pairedItem":"132"},{"json":"131","pairedItem":"133"},{"headers":"134","params":"135","query":"136","body":"137","webhookUrl":"138","executionMode":"139"},{"item":0},{"user_id":"140","message":"141","timezone":"142","today":"143"},{"item":0},{"response":"144","tokenUsage":"145"},{"messages":"146","estimatedTokens":242,"options":"147"},{"output":"23"},{"item":0},{"intent":"148","user_id":"140","title":"149","details":"149","date":"150","start_time":"151","end_time":"152","priority":"153","status":"154"},{"item":0},{"item":0},{"item":0},{"id":"155","user_id":"140","title":"149","details":"149","date":"150","start_time":"156","end_time":"157","priority":"153","status":"154","source":"158","created_at":"159","updated_at":"159"},{"item":0},{"item":0},{"host":"160","user-agent":"161","content-length":"162","accept-encoding":"163","cdn-loop":"164","cf-connecting-ip":"165","cf-ipcountry":"166","cf-ray":"167","cf-visitor":"168","content-type":"169","render-proxy-ttl":"170","rndr-id":"171","true-client-ip":"165","x-forwarded-for":"172","x-forwarded-proto":"173","x-request-start":"174"},{},{},{"user_id":"140","message":"141","timezone":"142","today":"143"},"https://raven8nmanagement.onrender.com/webhook/17aa8756-5381-46f5-974d-8bb70edabb53","production","amd-local-user","Can you schedule me a trading session tonight at 6pm to 8pm","Asia/Taipei","2026-05-01",{"generations":"175"},{"completionTokens":85,"promptTokens":257,"totalTokens":342},["176"],{"openai_api_key":"177","model":"178","max_retries":2,"configuration":"179","model_kwargs":"180"},"create_task","","2026-04-30","18:00","20:00","medium","scheduled","ea3414fd-2163-428b-842f-4fc18b67142f","18:00:00","20:00:00","ai","2026-05-01T04:39:13.721223+00:00","raves-n8n-management.onrender.com","Python-urllib/3.14","153","gzip, br","cloudflare; loops=1","27.49.15.177","PH","9f4c19ad59ddbc4c-PDX","{\\"scheme\\":\\"https\\"}","application/json","4","00485cb2-391d-4ac3","27.49.15.177, 172.68.175.95, 10.28.167.56","https","1777610344732720",["181"],"System: You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: 2026-05-01\\nTimezone: Asia/Taipei\\nUser ID: amd-local-user\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n\\nHuman: Can you schedule me a trading session tonight at 6pm to 8pm",{"lc":1,"type":"182","id":"183"},"openrouter/free",{"baseURL":"184","fetchOptions":"185"},{},["186"],"secret",["187"],"https://openrouter.ai/api/v1",{"dispatcher":"188"},{"text":"23","generationInfo":"189"},"OPENAI_API_KEY",{"_events":"190","_eventsCount":0},{"finish_reason":"191"},{},"stop"]	3357fda1-c007-4e8c-884e-dd359eebf954
8	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":true,"activeVersionId":"3357fda1-c007-4e8c-884e-dd359eebf954","isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T04:30:18.543Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"77af0734-b7a9-4d31-a082-80ec82fe8be2","name":"=user_id","value":"={{$json.body.user_id}}","type":"string"},{"id":"e13b2508-86c1-4521-9297-5530b7058a24","name":"=message","value":"={{$json.body.message}}","type":"string"},{"id":"0a5733e5-a51f-4886-9d07-270da6b77051","name":"=timezone","value":"={{$json.body.timezone}}","type":"string"},{"id":"46bba186-d834-4d9e-b7dc-2d5fd08bf5c5","name":"=today","value":"={{$json.body.today}}","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"POST","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"responseNode","webhookNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":{},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","lastNodeExecuted":"6","metadata":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"7cec600dc22ed3e672542c4fdda4398bb81dd997a97350e04a2943f8f0ea31fd",{"Chat In":"14"," Prepare Input":"15","OpenRouter Chat Model":"16","Extract Task JSON":"17","Parse AI Output":"18","Is Clarification Needed?":"19","Is Task JSON Valid?":"20","Create Task in Supabase":"21","Reply Success":"22"},"Reply Success",{"response_extract_task_json":"23"},{},[],{"OpenRouter Chat Model":"24"},{},{},{"version":1,"establishedAt":1777610445104,"source":"25","redaction":"26","triggerNode":"27"},["28"],["29"],["30"],["31"],["32"],["33"],["34"],["35"],["36"],"{\\n\\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"trading session\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"2026-05-01\\",\\n  \\"start_time\\": \\"18:00\\",\\n  \\"end_time\\": \\"20:00\\",\\n  \\"priority\\": \\"medium\\",\\n  \\"status\\": \\"scheduled\\"\\n}",["37"],"webhook",{"version":1,"policy":"38"},{"name":"39","type":"40"},{"startTime":1777610445105,"executionIndex":0,"source":"41","hints":"42","executionTime":1,"executionStatus":"43","data":"44"},{"startTime":1777610445106,"executionIndex":1,"source":"45","hints":"46","executionTime":9,"executionStatus":"43","data":"47"},{"startTime":1777610445480,"executionTime":2345,"executionIndex":3,"executionStatus":"43","source":"48","data":"49","inputOverride":"50","metadata":"51"},{"startTime":1777610445116,"executionIndex":2,"source":"52","hints":"53","executionTime":2710,"executionStatus":"43","data":"54"},{"startTime":1777610447826,"executionIndex":4,"source":"55","hints":"56","executionTime":24,"executionStatus":"43","data":"57"},{"startTime":1777610447850,"executionIndex":5,"source":"58","hints":"59","executionTime":1,"executionStatus":"43","data":"60"},{"startTime":1777610447852,"executionIndex":6,"source":"61","hints":"62","executionTime":0,"executionStatus":"43","data":"63"},{"startTime":1777610447853,"executionIndex":7,"source":"64","hints":"65","executionTime":1244,"executionStatus":"43","data":"66"},{"startTime":1777610449097,"executionIndex":8,"source":"67","hints":"68","executionTime":1,"executionStatus":"43","data":"69"},{"subRun":"70"},"none","Chat In","n8n-nodes-base.webhook",[],[],"success",{"main":"71"},["72"],[],{"main":"73"},["74"],{"ai_languageModel":"75"},{"ai_languageModel":"76"},{"subRun":"70"},["77"],[],{"main":"78"},["79"],[],{"main":"80"},["81"],[],{"main":"82"},["83"],[],{"main":"84"},["85"],[],{"main":"86"},["87"],[],{"main":"88"},["89"],["90"],{"previousNode":"39","previousNodeOutput":0,"previousNodeRun":0},["91"],{"previousNode":"92","previousNodeRun":0},["93"],["94"],{"previousNode":"95","previousNodeOutput":0,"previousNodeRun":0},["96"],{"previousNode":"92","previousNodeOutput":0,"previousNodeRun":0},["97"],{"previousNode":"98","previousNodeOutput":0,"previousNodeRun":0},["99","100"],{"previousNode":"101","previousNodeOutput":1,"previousNodeRun":0},["102","103"],{"previousNode":"104","previousNodeOutput":0,"previousNodeRun":0},["105"],{"previousNode":"106","previousNodeOutput":0,"previousNodeRun":0},["107"],{"node":"108","runIndex":0},["109"],["110"],"Extract Task JSON",["111"],["112"]," Prepare Input",["113"],["114"],"Parse AI Output",[],["115"],"Is Clarification Needed?",["116"],[],"Is Task JSON Valid?",["117"],"Create Task in Supabase",["118"],"OpenRouter Chat Model",{"json":"119","pairedItem":"120"},{"json":"121","pairedItem":"122"},{"json":"123"},{"json":"124"},{"json":"125","pairedItem":"126"},{"json":"127","pairedItem":"128"},{"json":"127","pairedItem":"129"},{"json":"127","pairedItem":"130"},{"json":"131","pairedItem":"132"},{"json":"131","pairedItem":"133"},{"headers":"134","params":"135","query":"136","body":"137","webhookUrl":"138","executionMode":"139"},{"item":0},{"user_id":"140","message":"141","timezone":"142","today":"143"},{"item":0},{"response":"144","tokenUsage":"145"},{"messages":"146","estimatedTokens":242,"options":"147"},{"output":"23"},{"item":0},{"intent":"148","user_id":"140","title":"149","details":"150","date":"143","start_time":"151","end_time":"152","priority":"153","status":"154"},{"item":0},{"item":0},{"item":0},{"id":"155","user_id":"140","title":"149","details":"150","date":"143","start_time":"156","end_time":"157","priority":"153","status":"154","source":"158","created_at":"159","updated_at":"159"},{"item":0},{"item":0},{"host":"160","user-agent":"161","content-length":"162","accept":"163","accept-encoding":"164","accept-language":"165","cdn-loop":"166","cf-connecting-ip":"167","cf-ipcountry":"168","cf-ray":"169","cf-visitor":"170","content-type":"171","render-proxy-ttl":"172","rndr-id":"173","sec-fetch-mode":"174","true-client-ip":"167","x-forwarded-for":"175","x-forwarded-proto":"176","x-request-start":"177"},{},{},{"user_id":"140","message":"141","timezone":"142","today":"143"},"https://raven8nmanagement.onrender.com/webhook/17aa8756-5381-46f5-974d-8bb70edabb53","production","amd-local-user","Can you schedule me a trading session tonight at 6pm to 8pm","Asia/Taipei","2026-05-01",{"generations":"178"},{"completionTokens":450,"promptTokens":262,"totalTokens":712},["179"],{"openai_api_key":"180","model":"181","max_retries":2,"configuration":"182","model_kwargs":"183"},"create_task","trading session","","18:00","20:00","medium","scheduled","08aa6026-d40c-4a92-8968-e128b9eb7053","18:00:00","20:00:00","ai","2026-05-01T04:40:48.992893+00:00","raves-n8n-management.onrender.com","node","146","*/*","gzip, br","*","cloudflare; loops=1","27.49.15.177","PH","9f4c1c046a55b9ef-MNL","{\\"scheme\\":\\"https\\"}","application/json","4","5b516e1b-3408-4185","cors","27.49.15.177, 172.71.87.204, 10.28.250.2","https","1777610440860055",["184"],"System: You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: 2026-05-01\\nTimezone: Asia/Taipei\\nUser ID: amd-local-user\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n\\nHuman: Can you schedule me a trading session tonight at 6pm to 8pm",{"lc":1,"type":"185","id":"186"},"openrouter/free",{"baseURL":"187","fetchOptions":"188"},{},["189"],"secret",["190"],"https://openrouter.ai/api/v1",{"dispatcher":"191"},{"text":"23","generationInfo":"192"},"OPENAI_API_KEY",{"_events":"193","_eventsCount":0},{"finish_reason":"194"},{},"stop"]	3357fda1-c007-4e8c-884e-dd359eebf954
9	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":true,"activeVersionId":"3357fda1-c007-4e8c-884e-dd359eebf954","isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T04:30:18.543Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"77af0734-b7a9-4d31-a082-80ec82fe8be2","name":"=user_id","value":"={{$json.body.user_id}}","type":"string"},{"id":"e13b2508-86c1-4521-9297-5530b7058a24","name":"=message","value":"={{$json.body.message}}","type":"string"},{"id":"0a5733e5-a51f-4886-9d07-270da6b77051","name":"=timezone","value":"={{$json.body.timezone}}","type":"string"},{"id":"46bba186-d834-4d9e-b7dc-2d5fd08bf5c5","name":"=today","value":"={{$json.body.today}}","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"POST","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"responseNode","webhookNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":{},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","lastNodeExecuted":"6","metadata":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"232f58ce65f0eb58e42dd666b452333305a00c066eaef989d169cd5fb64cb341",{"Chat In":"14"," Prepare Input":"15","OpenRouter Chat Model":"16","Extract Task JSON":"17","Parse AI Output":"18","Is Clarification Needed?":"19","Reply Clarification":"20"},"Reply Clarification",{"response_extract_task_json":"21"},{},[],{"OpenRouter Chat Model":"22"},{},{},{"version":1,"establishedAt":1777610580673,"source":"23","redaction":"24","triggerNode":"25"},["26"],["27"],["28"],["29"],["30"],["31"],["32"],"{\\"intent\\":\\"clarify\\",\\"question\\":\\"Which date and start time should the trading study session be scheduled for?\\"}",["33"],"webhook",{"version":1,"policy":"34"},{"name":"35","type":"36"},{"startTime":1777610580674,"executionIndex":0,"source":"37","hints":"38","executionTime":0,"executionStatus":"39","data":"40"},{"startTime":1777610580674,"executionIndex":1,"source":"41","hints":"42","executionTime":4,"executionStatus":"39","data":"43"},{"startTime":1777610581012,"executionTime":2479,"executionIndex":3,"executionStatus":"39","source":"44","data":"45","inputOverride":"46","metadata":"47"},{"startTime":1777610580678,"executionIndex":2,"source":"48","hints":"49","executionTime":2814,"executionStatus":"39","data":"50"},{"startTime":1777610583492,"executionIndex":4,"source":"51","hints":"52","executionTime":6,"executionStatus":"39","data":"53"},{"startTime":1777610583499,"executionIndex":5,"source":"54","hints":"55","executionTime":0,"executionStatus":"39","data":"56"},{"startTime":1777610583500,"executionIndex":6,"source":"57","hints":"58","executionTime":47,"executionStatus":"39","data":"59"},{"subRun":"60"},"none","Chat In","n8n-nodes-base.webhook",[],[],"success",{"main":"61"},["62"],[],{"main":"63"},["64"],{"ai_languageModel":"65"},{"ai_languageModel":"66"},{"subRun":"60"},["67"],[],{"main":"68"},["69"],[],{"main":"70"},["71"],[],{"main":"72"},["73"],[],{"main":"74"},["75"],["76"],{"previousNode":"35","previousNodeOutput":0,"previousNodeRun":0},["77"],{"previousNode":"78","previousNodeRun":0},["79"],["80"],{"previousNode":"81","previousNodeOutput":0,"previousNodeRun":0},["82"],{"previousNode":"78","previousNodeOutput":0,"previousNodeRun":0},["83"],{"previousNode":"84","previousNodeOutput":0,"previousNodeRun":0},["85","86"],{"previousNode":"87","previousNodeOutput":0,"previousNodeRun":0},["88"],{"node":"89","runIndex":0},["90"],["91"],"Extract Task JSON",["92"],["93"]," Prepare Input",["94"],["95"],"Parse AI Output",["96"],[],"Is Clarification Needed?",["97"],"OpenRouter Chat Model",{"json":"98","pairedItem":"99"},{"json":"100","pairedItem":"101"},{"json":"102"},{"json":"103"},{"json":"104","pairedItem":"105"},{"json":"106","pairedItem":"107"},{"json":"106","pairedItem":"108"},{"json":"106","pairedItem":"109"},{"headers":"110","params":"111","query":"112","body":"113","webhookUrl":"114","executionMode":"115"},{"item":0},{"user_id":"116","message":"117","timezone":"118","today":"119"},{"item":0},{"response":"120","tokenUsage":"121"},{"messages":"122","estimatedTokens":247,"options":"123"},{"output":"21"},{"item":0},{"intent":"124","question":"125"},{"item":0},{"item":0},{"item":0},{"host":"126","user-agent":"127","content-length":"128","accept":"129","accept-encoding":"130","accept-language":"131","cdn-loop":"132","cf-connecting-ip":"133","cf-ipcountry":"134","cf-ray":"135","cf-visitor":"136","content-type":"137","render-proxy-ttl":"138","rndr-id":"139","sec-fetch-mode":"140","true-client-ip":"133","x-forwarded-for":"141","x-forwarded-proto":"142","x-request-start":"143"},{},{},{"user_id":"116","message":"117","timezone":"118","today":"119"},"https://raven8nmanagement.onrender.com/webhook/17aa8756-5381-46f5-974d-8bb70edabb53","production","amd-local-user","Can you edit the trading study session i want it to end at 5 pm instead of 4 pm","Asia/Taipei","2026-05-01",{"generations":"144"},{"completionTokens":280,"promptTokens":267,"totalTokens":547},["145"],{"openai_api_key":"146","model":"147","max_retries":2,"configuration":"148","model_kwargs":"149"},"clarify","Which date and start time should the trading study session be scheduled for?","raves-n8n-management.onrender.com","node","166","*/*","gzip, br","*","cloudflare; loops=1","27.49.15.177","PH","9f4c1f550fb7bc5b-PDX","{\\"scheme\\":\\"https\\"}","application/json","4","73c768fa-90d8-4097","cors","27.49.15.177, 172.68.174.238, 10.24.141.130","https","1777610576297730",["150"],"System: You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: 2026-05-01\\nTimezone: Asia/Taipei\\nUser ID: amd-local-user\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n\\nHuman: Can you edit the trading study session i want it to end at 5 pm instead of 4 pm",{"lc":1,"type":"151","id":"152"},"openrouter/free",{"baseURL":"153","fetchOptions":"154"},{},["155"],"secret",["156"],"https://openrouter.ai/api/v1",{"dispatcher":"157"},{"text":"21","generationInfo":"158"},"OPENAI_API_KEY",{"_events":"159","_eventsCount":0},{"finish_reason":"160"},{},"stop"]	3357fda1-c007-4e8c-884e-dd359eebf954
10	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":true,"activeVersionId":"3357fda1-c007-4e8c-884e-dd359eebf954","isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T04:30:18.543Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"77af0734-b7a9-4d31-a082-80ec82fe8be2","name":"=user_id","value":"={{$json.body.user_id}}","type":"string"},{"id":"e13b2508-86c1-4521-9297-5530b7058a24","name":"=message","value":"={{$json.body.message}}","type":"string"},{"id":"0a5733e5-a51f-4886-9d07-270da6b77051","name":"=timezone","value":"={{$json.body.timezone}}","type":"string"},{"id":"46bba186-d834-4d9e-b7dc-2d5fd08bf5c5","name":"=today","value":"={{$json.body.today}}","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"POST","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"responseNode","webhookNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":{},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","lastNodeExecuted":"6","metadata":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"c7a596584b2379a9db5d33f256187240472720a5e090176a782dc69ff9374ed2",{"Chat In":"14"," Prepare Input":"15","OpenRouter Chat Model":"16","Extract Task JSON":"17","Parse AI Output":"18","Is Clarification Needed?":"19","Is Task JSON Valid?":"20","Create Task in Supabase":"21","Reply Success":"22"},"Reply Success",{"response_extract_task_json":"23"},{},[],{"OpenRouter Chat Model":"24"},{},{},{"version":1,"establishedAt":1777610923942,"source":"25","redaction":"26","triggerNode":"27"},["28"],["29"],["30"],["31"],["32"],["33"],["34"],["35"],["36"],"{\\"intent\\":\\"create_task\\",\\"user_id\\":\\"amd-local-user\\",\\"title\\":\\"n8n session\\",\\"details\\":\\"\\",\\"date\\":\\"2026-05-01\\",\\"start_time\\":\\"21:00\\",\\"end_time\\":\\"23:00\\",\\"priority\\":\\"medium\\",\\"status\\":\\"scheduled\\"}",["37"],"webhook",{"version":1,"policy":"38"},{"name":"39","type":"40"},{"startTime":1777610923943,"executionIndex":0,"source":"41","hints":"42","executionTime":0,"executionStatus":"43","data":"44"},{"startTime":1777610923943,"executionIndex":1,"source":"45","hints":"46","executionTime":3,"executionStatus":"43","data":"47"},{"startTime":1777610924275,"executionTime":97442,"executionIndex":3,"executionStatus":"43","source":"48","data":"49","inputOverride":"50","metadata":"51"},{"startTime":1777610923946,"executionIndex":2,"source":"52","hints":"53","executionTime":97776,"executionStatus":"43","data":"54"},{"startTime":1777611021722,"executionIndex":4,"source":"55","hints":"56","executionTime":34,"executionStatus":"43","data":"57"},{"startTime":1777611021756,"executionIndex":5,"source":"58","hints":"59","executionTime":1,"executionStatus":"43","data":"60"},{"startTime":1777611021757,"executionIndex":6,"source":"61","hints":"62","executionTime":1,"executionStatus":"43","data":"63"},{"startTime":1777611021758,"executionIndex":7,"source":"64","hints":"65","executionTime":1650,"executionStatus":"43","data":"66"},{"startTime":1777611023409,"executionIndex":8,"source":"67","hints":"68","executionTime":0,"executionStatus":"43","data":"69"},{"subRun":"70"},"none","Chat In","n8n-nodes-base.webhook",[],[],"success",{"main":"71"},["72"],[],{"main":"73"},["74"],{"ai_languageModel":"75"},{"ai_languageModel":"76"},{"subRun":"70"},["77"],[],{"main":"78"},["79"],[],{"main":"80"},["81"],[],{"main":"82"},["83"],[],{"main":"84"},["85"],[],{"main":"86"},["87"],[],{"main":"88"},["89"],["90"],{"previousNode":"39","previousNodeOutput":0,"previousNodeRun":0},["91"],{"previousNode":"92","previousNodeRun":0},["93"],["94"],{"previousNode":"95","previousNodeOutput":0,"previousNodeRun":0},["96"],{"previousNode":"92","previousNodeOutput":0,"previousNodeRun":0},["97"],{"previousNode":"98","previousNodeOutput":0,"previousNodeRun":0},["99","100"],{"previousNode":"101","previousNodeOutput":1,"previousNodeRun":0},["102","103"],{"previousNode":"104","previousNodeOutput":0,"previousNodeRun":0},["105"],{"previousNode":"106","previousNodeOutput":0,"previousNodeRun":0},["107"],{"node":"108","runIndex":0},["109"],["110"],"Extract Task JSON",["111"],["112"]," Prepare Input",["113"],["114"],"Parse AI Output",[],["115"],"Is Clarification Needed?",["116"],[],"Is Task JSON Valid?",["117"],"Create Task in Supabase",["118"],"OpenRouter Chat Model",{"json":"119","pairedItem":"120"},{"json":"121","pairedItem":"122"},{"json":"123"},{"json":"124"},{"json":"125","pairedItem":"126"},{"json":"127","pairedItem":"128"},{"json":"127","pairedItem":"129"},{"json":"127","pairedItem":"130"},{"json":"131","pairedItem":"132"},{"json":"131","pairedItem":"133"},{"headers":"134","params":"135","query":"136","body":"137","webhookUrl":"138","executionMode":"139"},{"item":0},{"user_id":"140","message":"141","timezone":"142","today":"143"},{"item":0},{"response":"144","tokenUsage":"145"},{"messages":"146","estimatedTokens":244,"options":"147"},{"output":"23"},{"item":0},{"intent":"148","user_id":"140","title":"149","details":"150","date":"143","start_time":"151","end_time":"152","priority":"153","status":"154"},{"item":0},{"item":0},{"item":0},{"id":"155","user_id":"140","title":"149","details":"150","date":"143","start_time":"156","end_time":"157","priority":"153","status":"154","source":"158","created_at":"159","updated_at":"159"},{"item":0},{"item":0},{"host":"160","user-agent":"161","content-length":"162","accept":"163","accept-encoding":"164","accept-language":"165","cdn-loop":"166","cf-connecting-ip":"167","cf-ipcountry":"168","cf-ray":"169","cf-visitor":"170","content-type":"171","render-proxy-ttl":"172","rndr-id":"173","sec-fetch-mode":"174","true-client-ip":"167","x-forwarded-for":"175","x-forwarded-proto":"176","x-request-start":"177"},{},{},{"user_id":"140","message":"141","timezone":"142","today":"143"},"https://raven8nmanagement.onrender.com/webhook/17aa8756-5381-46f5-974d-8bb70edabb53","production","amd-local-user","Can you schedule me a n8n session tonight at 9pm to 11pm","Asia/Taipei","2026-05-01",{"generations":"178"},{"completionTokens":199,"promptTokens":258,"totalTokens":457},["179"],{"openai_api_key":"180","model":"181","max_retries":2,"configuration":"182","model_kwargs":"183"},"create_task","n8n session","","21:00","23:00","medium","scheduled","ad7e7001-076c-4d20-ba74-360db731a857","21:00:00","23:00:00","ai","2026-05-01T04:50:23.282454+00:00","raves-n8n-management.onrender.com","node","143","*/*","gzip, br","*","cloudflare; loops=1","27.49.15.177","PH","9f4c27b2be94bc43-PDX","{\\"scheme\\":\\"https\\"}","application/json","4","199a658d-7126-48d3","cors","27.49.15.177, 172.68.175.96, 10.31.25.130","https","1777610918968674",["184"],"System: You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: 2026-05-01\\nTimezone: Asia/Taipei\\nUser ID: amd-local-user\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n\\nHuman: Can you schedule me a n8n session tonight at 9pm to 11pm",{"lc":1,"type":"185","id":"186"},"openrouter/free",{"baseURL":"187","fetchOptions":"188"},{},["189"],"secret",["190"],"https://openrouter.ai/api/v1",{"dispatcher":"191"},{"text":"23","generationInfo":"192"},"OPENAI_API_KEY",{"_events":"193","_eventsCount":0},{"finish_reason":"194"},{},"stop"]	3357fda1-c007-4e8c-884e-dd359eebf954
11	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":true,"activeVersionId":"3357fda1-c007-4e8c-884e-dd359eebf954","isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T04:30:18.543Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"77af0734-b7a9-4d31-a082-80ec82fe8be2","name":"=user_id","value":"={{$json.body.user_id}}","type":"string"},{"id":"e13b2508-86c1-4521-9297-5530b7058a24","name":"=message","value":"={{$json.body.message}}","type":"string"},{"id":"0a5733e5-a51f-4886-9d07-270da6b77051","name":"=timezone","value":"={{$json.body.timezone}}","type":"string"},{"id":"46bba186-d834-4d9e-b7dc-2d5fd08bf5c5","name":"=today","value":"={{$json.body.today}}","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"POST","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"responseNode","webhookNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":{},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","lastNodeExecuted":"6","metadata":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"848a0250f92bdf83d68c2d4f9f183e9ed7888ca1dd130117722e12b470b30a7c",{"Chat In":"14"," Prepare Input":"15","OpenRouter Chat Model":"16","Extract Task JSON":"17","Parse AI Output":"18","Is Clarification Needed?":"19","Is Task JSON Valid?":"20","Create Task in Supabase":"21","Reply Success":"22"},"Reply Success",{"response_extract_task_json":"23"},{},[],{"OpenRouter Chat Model":"24"},{},{},{"version":1,"establishedAt":1777611003714,"source":"25","redaction":"26","triggerNode":"27"},["28"],["29"],["30"],["31"],["32"],["33"],["34"],["35"],["36"],"{\\"intent\\":\\"create_task\\",\\"user_id\\":\\"amd-local-user\\",\\"title\\":\\"n8n session\\",\\"details\\":\\"\\",\\"date\\":\\"2026-05-01\\",\\"start_time\\":\\"21:00\\",\\"end_time\\":\\"23:00\\",\\"priority\\":\\"medium\\",\\"status\\":\\"scheduled\\"}",["37"],"webhook",{"version":1,"policy":"38"},{"name":"39","type":"40"},{"startTime":1777611003716,"executionIndex":0,"source":"41","hints":"42","executionTime":0,"executionStatus":"43","data":"44"},{"startTime":1777611003717,"executionIndex":1,"source":"45","hints":"46","executionTime":3,"executionStatus":"43","data":"47"},{"startTime":1777611004047,"executionTime":20630,"executionIndex":3,"executionStatus":"43","source":"48","data":"49","inputOverride":"50","metadata":"51"},{"startTime":1777611003720,"executionIndex":2,"source":"52","hints":"53","executionTime":20959,"executionStatus":"43","data":"54"},{"startTime":1777611024679,"executionIndex":4,"source":"55","hints":"56","executionTime":5,"executionStatus":"43","data":"57"},{"startTime":1777611024684,"executionIndex":5,"source":"58","hints":"59","executionTime":63,"executionStatus":"43","data":"60"},{"startTime":1777611024747,"executionIndex":6,"source":"61","hints":"62","executionTime":1,"executionStatus":"43","data":"63"},{"startTime":1777611024748,"executionIndex":7,"source":"64","hints":"65","executionTime":1263,"executionStatus":"43","data":"66"},{"startTime":1777611026011,"executionIndex":8,"source":"67","hints":"68","executionTime":1,"executionStatus":"43","data":"69"},{"subRun":"70"},"none","Chat In","n8n-nodes-base.webhook",[],[],"success",{"main":"71"},["72"],[],{"main":"73"},["74"],{"ai_languageModel":"75"},{"ai_languageModel":"76"},{"subRun":"70"},["77"],[],{"main":"78"},["79"],[],{"main":"80"},["81"],[],{"main":"82"},["83"],[],{"main":"84"},["85"],[],{"main":"86"},["87"],[],{"main":"88"},["89"],["90"],{"previousNode":"39","previousNodeOutput":0,"previousNodeRun":0},["91"],{"previousNode":"92","previousNodeRun":0},["93"],["94"],{"previousNode":"95","previousNodeOutput":0,"previousNodeRun":0},["96"],{"previousNode":"92","previousNodeOutput":0,"previousNodeRun":0},["97"],{"previousNode":"98","previousNodeOutput":0,"previousNodeRun":0},["99","100"],{"previousNode":"101","previousNodeOutput":1,"previousNodeRun":0},["102","103"],{"previousNode":"104","previousNodeOutput":0,"previousNodeRun":0},["105"],{"previousNode":"106","previousNodeOutput":0,"previousNodeRun":0},["107"],{"node":"108","runIndex":0},["109"],["110"],"Extract Task JSON",["111"],["112"]," Prepare Input",["113"],["114"],"Parse AI Output",[],["115"],"Is Clarification Needed?",["116"],[],"Is Task JSON Valid?",["117"],"Create Task in Supabase",["118"],"OpenRouter Chat Model",{"json":"119","pairedItem":"120"},{"json":"121","pairedItem":"122"},{"json":"123"},{"json":"124"},{"json":"125","pairedItem":"126"},{"json":"127","pairedItem":"128"},{"json":"127","pairedItem":"129"},{"json":"127","pairedItem":"130"},{"json":"131","pairedItem":"132"},{"json":"131","pairedItem":"133"},{"headers":"134","params":"135","query":"136","body":"137","webhookUrl":"138","executionMode":"139"},{"item":0},{"user_id":"140","message":"141","timezone":"142","today":"143"},{"item":0},{"response":"144","tokenUsage":"145"},{"messages":"146","estimatedTokens":244,"options":"147"},{"output":"23"},{"item":0},{"intent":"148","user_id":"140","title":"149","details":"150","date":"143","start_time":"151","end_time":"152","priority":"153","status":"154"},{"item":0},{"item":0},{"item":0},{"id":"155","user_id":"140","title":"149","details":"150","date":"143","start_time":"156","end_time":"157","priority":"153","status":"154","source":"158","created_at":"159","updated_at":"159"},{"item":0},{"item":0},{"host":"160","user-agent":"161","content-length":"162","accept":"163","accept-encoding":"164","accept-language":"165","cdn-loop":"166","cf-connecting-ip":"167","cf-ipcountry":"168","cf-ray":"169","cf-visitor":"170","content-type":"171","render-proxy-ttl":"172","rndr-id":"173","sec-fetch-mode":"174","true-client-ip":"167","x-forwarded-for":"175","x-forwarded-proto":"176","x-request-start":"177"},{},{},{"user_id":"140","message":"141","timezone":"142","today":"143"},"https://raven8nmanagement.onrender.com/webhook/17aa8756-5381-46f5-974d-8bb70edabb53","production","amd-local-user","Can you schedule me a n8n session tonight at 9pm to 11pm","Asia/Taipei","2026-05-01",{"generations":"178"},{"completionTokens":192,"promptTokens":258,"totalTokens":450},["179"],{"openai_api_key":"180","model":"181","max_retries":2,"configuration":"182","model_kwargs":"183"},"create_task","n8n session","","21:00","23:00","medium","scheduled","e44f1fcb-95df-4897-be37-57e750b2d4b9","21:00:00","23:00:00","ai","2026-05-01T04:50:25.919964+00:00","raves-n8n-management.onrender.com","node","143","*/*","gzip, br","*","cloudflare; loops=1","27.49.15.177","PH","9f4c29ab5bbabc40-PDX","{\\"scheme\\":\\"https\\"}","application/json","4","01b12dd2-cf6c-406b","cors","27.49.15.177, 104.23.160.35, 10.28.167.56","https","1777610999699704",["184"],"System: You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: 2026-05-01\\nTimezone: Asia/Taipei\\nUser ID: amd-local-user\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n\\nHuman: Can you schedule me a n8n session tonight at 9pm to 11pm",{"lc":1,"type":"185","id":"186"},"openrouter/free",{"baseURL":"187","fetchOptions":"188"},{},["189"],"secret",["190"],"https://openrouter.ai/api/v1",{"dispatcher":"191"},{"text":"23","generationInfo":"192"},"OPENAI_API_KEY",{"_events":"193","_eventsCount":0},{"finish_reason":"194"},{},"stop"]	3357fda1-c007-4e8c-884e-dd359eebf954
12	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":true,"activeVersionId":"3357fda1-c007-4e8c-884e-dd359eebf954","isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T04:30:18.543Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"77af0734-b7a9-4d31-a082-80ec82fe8be2","name":"=user_id","value":"={{$json.body.user_id}}","type":"string"},{"id":"e13b2508-86c1-4521-9297-5530b7058a24","name":"=message","value":"={{$json.body.message}}","type":"string"},{"id":"0a5733e5-a51f-4886-9d07-270da6b77051","name":"=timezone","value":"={{$json.body.timezone}}","type":"string"},{"id":"46bba186-d834-4d9e-b7dc-2d5fd08bf5c5","name":"=today","value":"={{$json.body.today}}","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"POST","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"responseNode","webhookNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":{},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","lastNodeExecuted":"6","metadata":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"78ff8ed85b61f5432781727c16aed03b936130e167ee3d5cb4d19e0730713a1a",{"Chat In":"14"," Prepare Input":"15","OpenRouter Chat Model":"16","Extract Task JSON":"17","Parse AI Output":"18","Is Clarification Needed?":"19","Is Task JSON Valid?":"20","Create Task in Supabase":"21","Reply Success":"22"},"Reply Success",{"response_extract_task_json":"23"},{},[],{"OpenRouter Chat Model":"24"},{},{},{"version":1,"establishedAt":1777627063111,"source":"25","redaction":"26","triggerNode":"27"},["28"],["29"],["30"],["31"],["32"],["33"],["34"],["35"],["36"],"{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"n8n study session\\",\\n  \\"details\\": \\"Study session for n8n\\",\\n  \\"date\\": \\"2026-05-02\\",\\n  \\"start_time\\": \\"08:00\\",\\n  \\"end_time\\": \\"10:00\\",\\n  \\"priority\\": \\"medium\\",\\n  \\"status\\": \\"scheduled\\"\\n}",["37"],"webhook",{"version":1,"policy":"38"},{"name":"39","type":"40"},{"startTime":1777627063112,"executionIndex":0,"source":"41","hints":"42","executionTime":0,"executionStatus":"43","data":"44"},{"startTime":1777627063112,"executionIndex":1,"source":"45","hints":"46","executionTime":4,"executionStatus":"43","data":"47"},{"startTime":1777627063461,"executionTime":5323,"executionIndex":3,"executionStatus":"43","source":"48","data":"49","inputOverride":"50","metadata":"51"},{"startTime":1777627063116,"executionIndex":2,"source":"52","hints":"53","executionTime":5670,"executionStatus":"43","data":"54"},{"startTime":1777627068787,"executionIndex":4,"source":"55","hints":"56","executionTime":64,"executionStatus":"43","data":"57"},{"startTime":1777627068851,"executionIndex":5,"source":"58","hints":"59","executionTime":1,"executionStatus":"43","data":"60"},{"startTime":1777627068852,"executionIndex":6,"source":"61","hints":"62","executionTime":1,"executionStatus":"43","data":"63"},{"startTime":1777627068853,"executionIndex":7,"source":"64","hints":"65","executionTime":1540,"executionStatus":"43","data":"66"},{"startTime":1777627070393,"executionIndex":8,"source":"67","hints":"68","executionTime":1,"executionStatus":"43","data":"69"},{"subRun":"70"},"none","Chat In","n8n-nodes-base.webhook",[],[],"success",{"main":"71"},["72"],[],{"main":"73"},["74"],{"ai_languageModel":"75"},{"ai_languageModel":"76"},{"subRun":"70"},["77"],[],{"main":"78"},["79"],[],{"main":"80"},["81"],[],{"main":"82"},["83"],[],{"main":"84"},["85"],[],{"main":"86"},["87"],[],{"main":"88"},["89"],["90"],{"previousNode":"39","previousNodeOutput":0,"previousNodeRun":0},["91"],{"previousNode":"92","previousNodeRun":0},["93"],["94"],{"previousNode":"95","previousNodeOutput":0,"previousNodeRun":0},["96"],{"previousNode":"92","previousNodeOutput":0,"previousNodeRun":0},["97"],{"previousNode":"98","previousNodeOutput":0,"previousNodeRun":0},["99","100"],{"previousNode":"101","previousNodeOutput":1,"previousNodeRun":0},["102","103"],{"previousNode":"104","previousNodeOutput":0,"previousNodeRun":0},["105"],{"previousNode":"106","previousNodeOutput":0,"previousNodeRun":0},["107"],{"node":"108","runIndex":0},["109"],["110"],"Extract Task JSON",["111"],["112"]," Prepare Input",["113"],["114"],"Parse AI Output",[],["115"],"Is Clarification Needed?",["116"],[],"Is Task JSON Valid?",["117"],"Create Task in Supabase",["118"],"OpenRouter Chat Model",{"json":"119","pairedItem":"120"},{"json":"121","pairedItem":"122"},{"json":"123"},{"json":"124"},{"json":"125","pairedItem":"126"},{"json":"127","pairedItem":"128"},{"json":"127","pairedItem":"129"},{"json":"127","pairedItem":"130"},{"json":"131","pairedItem":"132"},{"json":"131","pairedItem":"133"},{"headers":"134","params":"135","query":"136","body":"137","webhookUrl":"138","executionMode":"139"},{"item":0},{"user_id":"140","message":"141","timezone":"142","today":"143"},{"item":0},{"response":"144","tokenUsage":"145"},{"messages":"146","estimatedTokens":244,"options":"147"},{"output":"23"},{"item":0},{"intent":"148","user_id":"140","title":"149","details":"150","date":"151","start_time":"152","end_time":"153","priority":"154","status":"155"},{"item":0},{"item":0},{"item":0},{"id":"156","user_id":"140","title":"149","details":"150","date":"151","start_time":"157","end_time":"158","priority":"154","status":"155","source":"159","created_at":"160","updated_at":"160"},{"item":0},{"item":0},{"host":"161","user-agent":"162","content-length":"163","accept":"164","accept-encoding":"165","accept-language":"166","cdn-loop":"167","cf-connecting-ip":"168","cf-ipcountry":"169","cf-ray":"170","cf-visitor":"171","content-type":"172","render-proxy-ttl":"173","rndr-id":"174","sec-fetch-mode":"175","true-client-ip":"168","x-forwarded-for":"176","x-forwarded-proto":"177","x-request-start":"178"},{},{},{"user_id":"140","message":"141","timezone":"142","today":"143"},"https://raven8nmanagement.onrender.com/webhook/17aa8756-5381-46f5-974d-8bb70edabb53","production","amd-local-user","Can you schedule a n8n study session tomorrow at 8am to 10am","Asia/Taipei","2026-05-01",{"generations":"179"},{"completionTokens":317,"promptTokens":266,"totalTokens":583},["180"],{"openai_api_key":"181","model":"182","max_retries":2,"configuration":"183","model_kwargs":"184"},"create_task","n8n study session","Study session for n8n","2026-05-02","08:00","10:00","medium","scheduled","42be5c2b-d1fb-49ca-a2a2-d40f8249c7cc","08:00:00","10:00:00","ai","2026-05-01T09:17:50.241397+00:00","raves-n8n-management.onrender.com","node","147","*/*","gzip, br","*","cloudflare; loops=1","27.49.15.177","PH","9f4db1b1ed4bb9f9-MNL","{\\"scheme\\":\\"https\\"}","application/json","4","874ec438-812f-4f79","cors","27.49.15.177, 172.71.87.204, 10.28.250.2","https","1777627057056001",["185"],"System: You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: 2026-05-01\\nTimezone: Asia/Taipei\\nUser ID: amd-local-user\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n\\nHuman: Can you schedule a n8n study session tomorrow at 8am to 10am",{"lc":1,"type":"186","id":"187"},"openrouter/free",{"baseURL":"188","fetchOptions":"189"},{},["190"],"secret",["191"],"https://openrouter.ai/api/v1",{"dispatcher":"192"},{"text":"23","generationInfo":"193"},"OPENAI_API_KEY",{"_events":"194","_eventsCount":0},{"finish_reason":"195"},{},"stop"]	3357fda1-c007-4e8c-884e-dd359eebf954
13	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":true,"activeVersionId":"3357fda1-c007-4e8c-884e-dd359eebf954","isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T04:30:18.543Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"77af0734-b7a9-4d31-a082-80ec82fe8be2","name":"=user_id","value":"={{$json.body.user_id}}","type":"string"},{"id":"e13b2508-86c1-4521-9297-5530b7058a24","name":"=message","value":"={{$json.body.message}}","type":"string"},{"id":"0a5733e5-a51f-4886-9d07-270da6b77051","name":"=timezone","value":"={{$json.body.timezone}}","type":"string"},{"id":"46bba186-d834-4d9e-b7dc-2d5fd08bf5c5","name":"=today","value":"={{$json.body.today}}","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"POST","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"responseNode","webhookNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":{},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"error":"5","runData":"6","lastNodeExecuted":"7","metadata":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},"8c7c76b00533198acd2da54f41696f47bacda7022b54572238232d8ec8a802f3",{"level":"15","tags":"16","description":"17","timestamp":1777627163148,"context":"18","functionality":"19","name":"20","node":"21","messages":"22","httpCode":"23","message":"24","stack":"25"},{"Chat In":"26"," Prepare Input":"27","OpenRouter Chat Model":"28","Extract Task JSON":"29","Parse AI Output":"30","Is Clarification Needed?":"31","Is Task JSON Valid?":"32","Create Task in Supabase":"33"},"Create Task in Supabase",{"response_extract_task_json":"34"},{},["35"],{"OpenRouter Chat Model":"36"},{},{},{"version":1,"establishedAt":1777627152614,"source":"37","redaction":"38","triggerNode":"39"},"warning",{},"null value in column \\"title\\" of relation \\"tasks\\" violates not-null constraint",{},"regular","NodeApiError",{"parameters":"40","type":"41","typeVersion":1,"position":"42","id":"43","name":"7","credentials":"44"},["45"],"400","Bad request - please check your parameters: null value in column \\"title\\" of relation \\"tasks\\" violates not-null constraint","NodeApiError: Bad request - please check your parameters: null value in column \\"title\\" of relation \\"tasks\\" violates not-null constraint\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helper-functions.ts:1305:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helper-functions.ts:1631:11)\\n    at ExecuteContext.supabaseApiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Supabase/GenericFunctions.ts:80:10)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Supabase/Supabase.node.ts:210:41)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1048:9)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1239:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1687:27\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_d301200d8c5446bebb311523c3c1b485/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2339:11",["46"],["47"],["48"],["49"],["50"],["51"],["52"],["53"],"{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"start_time\\": \\"23:30\\",\\n  \\"end_time\\": \\"23:59\\",\\n  \\"priority\\": \\"medium\\",\\n  \\"date\\": \\"2026-05-01\\",\\n  \\"status\\": \\"scheduled\\"\\n}",{"node":"54","data":"55","source":"56"},["57"],"webhook",{"version":1,"policy":"58"},{"name":"59","type":"60"},{"useCustomSchema":false,"resource":"61","operation":"62","tableId":"63","dataToSend":"64","fieldsUi":"65"},"n8n-nodes-base.supabase",[1488,176],"6d46342e-db9d-4e62-ab56-53f29409cdd2",{"supabaseApi":"66"},"400 - {\\"code\\":\\"23502\\",\\"details\\":\\"Failing row contains (61a8add3-6064-4577-b4ca-b2b174dce9ba, amd-local-user, null, , 2026-05-01, 23:30:00, 23:59:00, medium, scheduled, ai, 2026-05-01 09:19:19.778535+00, 2026-05-01 09:19:19.778535+00).\\",\\"hint\\":null,\\"message\\":\\"null value in column \\\\\\"title\\\\\\" of relation \\\\\\"tasks\\\\\\" violates not-null constraint\\"}",{"startTime":1777627152615,"executionIndex":0,"source":"67","hints":"68","executionTime":0,"executionStatus":"69","data":"70"},{"startTime":1777627152615,"executionIndex":1,"source":"71","hints":"72","executionTime":3,"executionStatus":"69","data":"73"},{"startTime":1777627153377,"executionTime":5004,"executionIndex":3,"executionStatus":"69","source":"74","data":"75","inputOverride":"76","metadata":"77"},{"startTime":1777627152618,"executionIndex":2,"source":"78","hints":"79","executionTime":5764,"executionStatus":"69","data":"80"},{"startTime":1777627158382,"executionIndex":4,"source":"81","hints":"82","executionTime":67,"executionStatus":"69","data":"83"},{"startTime":1777627158449,"executionIndex":5,"source":"84","hints":"85","executionTime":0,"executionStatus":"69","data":"86"},{"startTime":1777627158450,"executionIndex":6,"source":"87","hints":"88","executionTime":0,"executionStatus":"69","data":"89"},{"startTime":1777627158450,"executionIndex":7,"source":"90","hints":"91","executionTime":5097,"executionStatus":"92","error":"93"},{"parameters":"94","type":"41","typeVersion":1,"position":"95","id":"43","name":"7","credentials":"96"},{"main":"97"},{"main":"90"},{"subRun":"98"},"none","Chat In","n8n-nodes-base.webhook","row","create","tasks","defineBelow",{"fieldValues":"99"},{"id":"100","name":"101"},[],[],"success",{"main":"102"},["103"],[],{"main":"104"},["105"],{"ai_languageModel":"106"},{"ai_languageModel":"107"},{"subRun":"98"},["108"],[],{"main":"109"},["110"],[],{"main":"111"},["112"],[],{"main":"113"},["114"],[],{"main":"115"},["116"],[],"error",{"level":"15","tags":"16","description":"17","timestamp":1777627163148,"context":"18","functionality":"19","name":"20","node":"21","messages":"22","httpCode":"23","message":"24","stack":"25"},{"useCustomSchema":false,"resource":"61","operation":"62","tableId":"63","dataToSend":"64","fieldsUi":"117"},[1488,176],{"supabaseApi":"118"},["119"],["120"],["121","122","123","124","125","126","127","128","129"],"x4MjUTAD90T6ozOy","Supabase account",["130"],{"previousNode":"59","previousNodeOutput":0,"previousNodeRun":0},["131"],{"previousNode":"132","previousNodeRun":0},["133"],["134"],{"previousNode":"135","previousNodeOutput":0,"previousNodeRun":0},["136"],{"previousNode":"132","previousNodeOutput":0,"previousNodeRun":0},["137"],{"previousNode":"138","previousNodeOutput":0,"previousNodeRun":0},["139","140"],{"previousNode":"141","previousNodeOutput":1,"previousNodeRun":0},["142","143"],{"previousNode":"144","previousNodeOutput":0,"previousNodeRun":0},{"fieldValues":"145"},{"id":"100","name":"101"},["146"],{"node":"147","runIndex":0},{"fieldId":"148","fieldValue":"149"},{"fieldId":"150","fieldValue":"151"},{"fieldId":"152","fieldValue":"153"},{"fieldId":"154","fieldValue":"155"},{"fieldId":"156","fieldValue":"157"},{"fieldId":"158","fieldValue":"159"},{"fieldId":"160","fieldValue":"161"},{"fieldId":"162","fieldValue":"163"},{"fieldId":"164","fieldValue":"165"},["166"],["167"],"Extract Task JSON",["168"],["169"]," Prepare Input",["170"],["171"],"Parse AI Output",[],["172"],"Is Clarification Needed?",["173"],[],"Is Task JSON Valid?",["174","175","176","177","178","179","180","181","182"],{"json":"183","pairedItem":"184"},"OpenRouter Chat Model","user_id","={{$json.user_id}}","title","={{$json.title}}","details","={{$json.details}}","date","={{$json.date}}","start_time","={{$json.start_time}}","end_time","={{$json.end_time}}","priority","={{$json.priority}}","status","={{$json.status}}","source","ai",{"json":"185","pairedItem":"186"},{"json":"187","pairedItem":"188"},{"json":"189"},{"json":"190"},{"json":"191","pairedItem":"192"},{"json":"183","pairedItem":"193"},{"json":"183","pairedItem":"194"},{"json":"183","pairedItem":"195"},{"fieldId":"148","fieldValue":"149"},{"fieldId":"150","fieldValue":"151"},{"fieldId":"152","fieldValue":"153"},{"fieldId":"154","fieldValue":"155"},{"fieldId":"156","fieldValue":"157"},{"fieldId":"158","fieldValue":"159"},{"fieldId":"160","fieldValue":"161"},{"fieldId":"162","fieldValue":"163"},{"fieldId":"164","fieldValue":"165"},{"intent":"196","user_id":"197","start_time":"198","end_time":"199","priority":"200","date":"201","status":"202"},{"item":0},{"headers":"203","params":"204","query":"205","body":"206","webhookUrl":"207","executionMode":"208"},{"item":0},{"user_id":"197","message":"209","timezone":"210","today":"201"},{"item":0},{"response":"211","tokenUsage":"212"},{"messages":"213","estimatedTokens":248,"options":"214"},{"output":"34"},{"item":0},{"item":0},{"item":0},{"item":0},"create_task","amd-local-user","23:30","23:59","medium","2026-05-01","scheduled",{"host":"215","user-agent":"216","content-length":"217","accept":"218","accept-encoding":"219","accept-language":"220","cdn-loop":"221","cf-connecting-ip":"222","cf-ipcountry":"223","cf-ray":"224","cf-visitor":"225","content-type":"226","render-proxy-ttl":"227","rndr-id":"228","sec-fetch-mode":"229","true-client-ip":"222","x-forwarded-for":"230","x-forwarded-proto":"231","x-request-start":"232"},{},{},{"user_id":"197","message":"209","timezone":"210","today":"201"},"https://raven8nmanagement.onrender.com/webhook/17aa8756-5381-46f5-974d-8bb70edabb53","production","Can you schedule a n8n study session tonight at 11:30pm to 11:59pm","Asia/Taipei",{"generations":"233"},{"completionTokens":1463,"promptTokens":284,"totalTokens":1747},["234"],{"openai_api_key":"235","model":"236","max_retries":2,"configuration":"237","model_kwargs":"238"},"raves-n8n-management.onrender.com","node","153","*/*","gzip, br","*","cloudflare; loops=1","27.49.15.177","PH","9f4db3efd8cbba02-PDX","{\\"scheme\\":\\"https\\"}","application/json","4","4eb958c1-3c15-43c5","cors","27.49.15.177, 104.23.160.35, 10.28.250.2","https","1777627148892110",["239"],"System: You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: 2026-05-01\\nTimezone: Asia/Taipei\\nUser ID: amd-local-user\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n\\nHuman: Can you schedule a n8n study session tonight at 11:30pm to 11:59pm",{"lc":1,"type":"240","id":"241"},"openrouter/free",{"baseURL":"242","fetchOptions":"243"},{},["244"],"secret",["245"],"https://openrouter.ai/api/v1",{"dispatcher":"246"},{"text":"34","generationInfo":"247"},"OPENAI_API_KEY",{"_events":"248","_eventsCount":0},{"finish_reason":"249"},{},"stop"]	3357fda1-c007-4e8c-884e-dd359eebf954
14	{"id":"ILzLcy6Hai30g72g","name":"My workflow","active":true,"activeVersionId":"3357fda1-c007-4e8c-884e-dd359eebf954","isArchived":false,"createdAt":"2026-05-01T02:41:37.952Z","updatedAt":"2026-05-01T04:30:18.543Z","nodes":[{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"useCustomSchema":false,"resource":"row","operation":"create","tableId":"tasks","dataToSend":"defineBelow","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":false,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"enableResponseOutput":false,"generalNotice":"","respondWith":"firstIncomingItem","options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"={{$json.message}}","hasOutputParser":false,"needsFallback":false,"options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"77af0734-b7a9-4d31-a082-80ec82fe8be2","name":"=user_id","value":"={{$json.body.user_id}}","type":"string"},{"id":"e13b2508-86c1-4521-9297-5530b7058a24","name":"=message","value":"={{$json.body.message}}","type":"string"},{"id":"0a5733e5-a51f-4886-9d07-270da6b77051","name":"=timezone","value":"={{$json.body.timezone}}","type":"string"},{"id":"46bba186-d834-4d9e-b7dc-2d5fd08bf5c5","name":"=today","value":"={{$json.body.today}}","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"multipleMethods":false,"httpMethod":"POST","path":"17aa8756-5381-46f5-974d-8bb70edabb53","authentication":"none","responseMode":"responseNode","webhookNotice":"","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"notice":"","model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}}],"connections":{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":{},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","lastNodeExecuted":"6","metadata":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"4e06b26e089313a0dd58f36eb2c27f87bf70163147490002a55cca80d1d2f069",{"Chat In":"14"," Prepare Input":"15","OpenRouter Chat Model":"16","Extract Task JSON":"17","Parse AI Output":"18","Is Clarification Needed?":"19","Is Task JSON Valid?":"20","Create Task in Supabase":"21","Reply Success":"22"},"Reply Success",{"response_extract_task_json":"23"},{},[],{"OpenRouter Chat Model":"24"},{},{},{"version":1,"establishedAt":1777627175499,"source":"25","redaction":"26","triggerNode":"27"},["28"],["29"],["30"],["31"],["32"],["33"],["34"],["35"],["36"],"{\\"intent\\":\\"create_task\\",\\"user_id\\":\\"amd-local-user\\",\\"title\\":\\"n8n study session\\",\\"details\\":\\"\\",\\"date\\":\\"2026-05-01\\",\\"start_time\\":\\"23:30\\",\\"end_time\\":\\"23:59\\",\\"priority\\":\\"medium\\",\\"status\\":\\"scheduled\\"}",["37"],"webhook",{"version":1,"policy":"38"},{"name":"39","type":"40"},{"startTime":1777627175499,"executionIndex":0,"source":"41","hints":"42","executionTime":0,"executionStatus":"43","data":"44"},{"startTime":1777627175500,"executionIndex":1,"source":"45","hints":"46","executionTime":2,"executionStatus":"43","data":"47"},{"startTime":1777627175833,"executionTime":2502,"executionIndex":3,"executionStatus":"43","source":"48","data":"49","inputOverride":"50","metadata":"51"},{"startTime":1777627175502,"executionIndex":2,"source":"52","hints":"53","executionTime":2834,"executionStatus":"43","data":"54"},{"startTime":1777627178336,"executionIndex":4,"source":"55","hints":"56","executionTime":6,"executionStatus":"43","data":"57"},{"startTime":1777627178342,"executionIndex":5,"source":"58","hints":"59","executionTime":1,"executionStatus":"43","data":"60"},{"startTime":1777627178343,"executionIndex":6,"source":"61","hints":"62","executionTime":4,"executionStatus":"43","data":"63"},{"startTime":1777627178347,"executionIndex":7,"source":"64","hints":"65","executionTime":2361,"executionStatus":"43","data":"66"},{"startTime":1777627180708,"executionIndex":8,"source":"67","hints":"68","executionTime":1,"executionStatus":"43","data":"69"},{"subRun":"70"},"none","Chat In","n8n-nodes-base.webhook",[],[],"success",{"main":"71"},["72"],[],{"main":"73"},["74"],{"ai_languageModel":"75"},{"ai_languageModel":"76"},{"subRun":"70"},["77"],[],{"main":"78"},["79"],[],{"main":"80"},["81"],[],{"main":"82"},["83"],[],{"main":"84"},["85"],[],{"main":"86"},["87"],[],{"main":"88"},["89"],["90"],{"previousNode":"39","previousNodeOutput":0,"previousNodeRun":0},["91"],{"previousNode":"92","previousNodeRun":0},["93"],["94"],{"previousNode":"95","previousNodeOutput":0,"previousNodeRun":0},["96"],{"previousNode":"92","previousNodeOutput":0,"previousNodeRun":0},["97"],{"previousNode":"98","previousNodeOutput":0,"previousNodeRun":0},["99","100"],{"previousNode":"101","previousNodeOutput":1,"previousNodeRun":0},["102","103"],{"previousNode":"104","previousNodeOutput":0,"previousNodeRun":0},["105"],{"previousNode":"106","previousNodeOutput":0,"previousNodeRun":0},["107"],{"node":"108","runIndex":0},["109"],["110"],"Extract Task JSON",["111"],["112"]," Prepare Input",["113"],["114"],"Parse AI Output",[],["115"],"Is Clarification Needed?",["116"],[],"Is Task JSON Valid?",["117"],"Create Task in Supabase",["118"],"OpenRouter Chat Model",{"json":"119","pairedItem":"120"},{"json":"121","pairedItem":"122"},{"json":"123"},{"json":"124"},{"json":"125","pairedItem":"126"},{"json":"127","pairedItem":"128"},{"json":"127","pairedItem":"129"},{"json":"127","pairedItem":"130"},{"json":"131","pairedItem":"132"},{"json":"131","pairedItem":"133"},{"headers":"134","params":"135","query":"136","body":"137","webhookUrl":"138","executionMode":"139"},{"item":0},{"user_id":"140","message":"141","timezone":"142","today":"143"},{"item":0},{"response":"144","tokenUsage":"145"},{"messages":"146","estimatedTokens":248,"options":"147"},{"output":"23"},{"item":0},{"intent":"148","user_id":"140","title":"149","details":"150","date":"143","start_time":"151","end_time":"152","priority":"153","status":"154"},{"item":0},{"item":0},{"item":0},{"id":"155","user_id":"140","title":"149","details":"150","date":"143","start_time":"156","end_time":"157","priority":"153","status":"154","source":"158","created_at":"159","updated_at":"159"},{"item":0},{"item":0},{"host":"160","user-agent":"161","content-length":"162","accept":"163","accept-encoding":"164","accept-language":"165","cdn-loop":"166","cf-connecting-ip":"167","cf-ipcountry":"168","cf-ray":"169","cf-visitor":"170","content-type":"171","render-proxy-ttl":"172","rndr-id":"173","sec-fetch-mode":"174","true-client-ip":"167","x-forwarded-for":"175","x-forwarded-proto":"176","x-request-start":"177"},{},{},{"user_id":"140","message":"141","timezone":"142","today":"143"},"https://raven8nmanagement.onrender.com/webhook/17aa8756-5381-46f5-974d-8bb70edabb53","production","amd-local-user","Can you schedule a n8n study session tonight at 11:30pm to 11:59pm","Asia/Taipei","2026-05-01",{"generations":"178"},{"completionTokens":108,"promptTokens":315,"totalTokens":423},["179"],{"openai_api_key":"180","model":"181","max_retries":2,"configuration":"182","model_kwargs":"183"},"create_task","n8n study session","","23:30","23:59","medium","scheduled","054a7fe8-dea4-4e31-ac99-6b6946db5d3f","23:30:00","23:59:00","ai","2026-05-01T09:19:40.558889+00:00","raves-n8n-management.onrender.com","node","153","*/*","gzip, br","*","cloudflare; loops=1","27.49.15.177","PH","9f4db476ff57bc52-MNL","{\\"scheme\\":\\"https\\"}","application/json","4","e8b96dce-3799-4e85","cors","27.49.15.177, 172.71.87.204, 10.28.250.2","https","1777627170504111",["184"],"System: You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: 2026-05-01\\nTimezone: Asia/Taipei\\nUser ID: amd-local-user\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"amd-local-user\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n\\nHuman: Can you schedule a n8n study session tonight at 11:30pm to 11:59pm",{"lc":1,"type":"185","id":"186"},"openrouter/free",{"baseURL":"187","fetchOptions":"188"},{},["189"],"secret",["190"],"https://openrouter.ai/api/v1",{"dispatcher":"191"},{"text":"23","generationInfo":"192"},"OPENAI_API_KEY",{"_events":"193","_eventsCount":0},{"finish_reason":"194"},{},"stop"]	3357fda1-c007-4e8c-884e-dd359eebf954
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
1	1	response_extract_task_json	{\n  "intent": "create_task",\n  "user_id": "amd-local-user",\n  "title": "Trading study session",\n  "details": "",\n  "date": "2026-05-01",\n  "start_time": "15:00",\n  "end_time": "16:00",\n  "priority": "medium",\n  "status": "scheduled"\n}
2	2	response_extract_task_json	{\n  "intent": "create_task",\n  "user_id": "amd-local-user",\n  "title": "Trading study session",\n  "details": "",\n  "date": "2026-05-01",\n  "start_time": "15:00",\n  "end_time": "16:00",\n  "priority": "medium",\n  "status": "scheduled"\n}
3	7	response_extract_task_json	{\n  "intent": "create_task",\n  "user_id": "amd-local-user",\n  "title": "",\n  "details": "",\n  "date": "2026-04-30",\n  "start_time": "18:00",\n  "end_time": "20:00",\n  "priority": "medium",\n  "status": "scheduled"\n}
4	8	response_extract_task_json	{\n"intent": "create_task",\n  "user_id": "amd-local-user",\n  "title": "trading session",\n  "details": "",\n  "date": "2026-05-01",\n  "start_time": "18:00",\n  "end_time": "20:00",\n  "priority": "medium",\n  "status": "scheduled"\n}
5	9	response_extract_task_json	{"intent":"clarify","question":"Which date and start time should the trading study session be scheduled for?"}
6	10	response_extract_task_json	{"intent":"create_task","user_id":"amd-local-user","title":"n8n session","details":"","date":"2026-05-01","start_time":"21:00","end_time":"23:00","priority":"medium","status":"scheduled"}
7	11	response_extract_task_json	{"intent":"create_task","user_id":"amd-local-user","title":"n8n session","details":"","date":"2026-05-01","start_time":"21:00","end_time":"23:00","priority":"medium","status":"scheduled"}
8	12	response_extract_task_json	{\n  "intent": "create_task",\n  "user_id": "amd-local-user",\n  "title": "n8n study session",\n  "details": "Study session for n8n",\n  "date": "2026-05-02",\n  "start_time": "08:00",\n  "end_time": "10:00",\n  "priority": "medium",\n  "status": "scheduled"\n}
9	13	response_extract_task_json	{\n  "intent": "create_task",\n  "user_id": "amd-local-user",\n  "start_time": "23:30",\n  "end_time": "23:59",\n  "priority": "medium",\n  "date": "2026-05-01",\n  "status": "scheduled"\n}
10	14	response_extract_task_json	{"intent":"create_task","user_id":"amd-local-user","title":"n8n study session","details":"","date":"2026-05-01","start_time":"23:30","end_time":"23:59","priority":"medium","status":"scheduled"}
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
1	ILzLcy6Hai30g72g	ytV0KVQxMQClg4ZY	My workflow	Rave Albemich Icaro <raveicaron8n@gmail.com>
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
1	1	1	133676	0	2026-05-01 04:00:00+00
2	1	0	0	0	2026-05-01 04:00:00+00
3	1	2	5	0	2026-05-01 04:00:00+00
4	1	1	23531	0	2026-05-01 09:00:00+00
5	1	0	0	0	2026-05-01 09:00:00+00
6	1	2	2	0	2026-05-01 09:00:00+00
10	1	3	1	0	2026-05-01 09:00:00+00
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: instance_ai_iteration_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_iteration_logs" ("id", "threadId", "taskKey", "entry", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_messages" ("id", "threadId", "content", "role", "type", "resourceId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observational_memory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observational_memory" ("id", "lookupKey", "scope", "threadId", "resourceId", "activeObservations", "originType", "config", "generationCount", "lastObservedAt", "pendingMessageTokens", "totalTokensObserved", "observationTokenCount", "isObserving", "isReflecting", "observedMessageIds", "observedTimezone", "bufferedObservations", "bufferedObservationTokens", "bufferedMessageIds", "bufferedReflection", "bufferedReflectionTokens", "bufferedReflectionInputTokens", "reflectedObservationLineCount", "bufferedObservationChunks", "isBufferingObservation", "isBufferingReflection", "lastBufferedAtTokens", "lastBufferedAtTime", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_resources" ("id", "workingMemory", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_run_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_run_snapshots" ("threadId", "runId", "messageGroupId", "runIds", "tree", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_workflow_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_workflow_snapshots" ("runId", "workflowName", "resourceId", "status", "snapshot", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_version_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_version_history" ("id", "major", "minor", "patch", "createdAt") FROM stdin;
1	2	18	5	2026-04-30 14:19:16.36+00
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
100	1758731786132	AddAudienceColumnToApiKeys1758731786132
101	1758794506893	AddProjectIdToVariableTable1758794506893
102	1759399811000	ChangeValueTypesForInsights1759399811000
103	1760019379982	CreateChatHubTables1760019379982
104	1760020000000	CreateChatHubAgentTable1760020000000
105	1760020838000	UniqueRoleNames1760020838000
106	1760116750277	CreateOAuthEntities1760116750277
107	1760314000000	CreateWorkflowDependencyTable1760314000000
108	1760965142113	DropUnusedChatHubColumns1760965142113
109	1761047826451	AddWorkflowVersionColumn1761047826451
110	1761655473000	ChangeDependencyInfoToJson1761655473000
111	1761773155024	AddAttachmentsToChatHubMessages1761773155024
112	1761830340990	AddToolsColumnToChatHubTables1761830340990
113	1762177736257	AddWorkflowDescriptionColumn1762177736257
114	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
115	1762771264000	ChangeDefaultForIdInUserTable1762771264000
116	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
117	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
118	1763047800000	AddActiveVersionIdColumn1763047800000
119	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
120	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
121	1763716655000	CreateBinaryDataTable1763716655000
122	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
123	1764276827837	AddCreatorIdToProjectTable1764276827837
124	1764682447000	CreateDynamicCredentialResolverTable1764682447000
125	1764689388394	AddDynamicCredentialEntryTable1764689388394
126	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
127	1765459448000	AddResolvableFieldsToCredentials1765459448000
128	1765788427674	AddIconToAgentTable1765788427674
129	1765804780000	ConvertAgentIdToUuid1765804780000
130	1765886667897	AddAgentIdForeignKeys1765886667897
131	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
132	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
133	1766068346315	AddChatMessageIndices1766068346315
134	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
135	1767018516000	ChangeWorkflowStatisticsFKToNoAction1767018516000
136	1768402473068	ExpandModelColumnLength1768402473068
137	1768557000000	AddStoredAtToExecutionEntity1768557000000
138	1768901721000	AddDynamicCredentialUserEntryTable1768901721000
139	1769000000000	AddPublishedVersionIdToWorkflowDependency1769000000000
140	1769433700000	CreateSecretsProviderConnectionTables1769433700000
141	1769698710000	CreateWorkflowPublishedVersionTable1769698710000
142	1769784356000	ExpandSubjectIDColumnLength1769784356000
143	1769900001000	AddWorkflowUnpublishScopeToCustomRoles1769900001000
144	1770000000000	CreateChatHubToolsTable1770000000000
145	1770000000000	ExpandProviderIdColumnLength1770000000000
146	1770220686000	CreateWorkflowBuilderSessionTable1770220686000
147	1771417407753	AddScalingFieldsToTestRun1771417407753
148	1771500000000	MigrateExternalSecretsToEntityStorage1771500000000
149	1771500000001	AddUnshareScopeToCustomRoles1771500000001
150	1771500000002	AddFilesColumnToChatHubAgents1771500000002
151	1772000000000	AddSuggestedPromptsToAgentTable1772000000000
152	1772619247761	AddRoleColumnToProjectSecretsProviderAccess1772619247761
153	1772619247762	ChangeWorkflowPublishedVersionFKsToRestrict1772619247762
154	1772700000000	AddTypeToChatHubSessions1772700000000
155	1772800000000	CreateRoleMappingRuleTable1772800000000
156	1773000000000	CreateCredentialDependencyTable1773000000000
157	1774280963551	AddRestoreFieldsToWorkflowBuilderSession1774280963551
158	1774854660000	CreateInstanceVersionHistoryTable1774854660000
159	1775000000000	CreateInstanceAiTables1775000000000
160	1775116241000	CreateTokenExchangeJtiTable1775116241000
161	1775740765000	ChangeWorkflowPublishHistoryVersionIdToSetNull1775740765000
162	1776000000000	CreateTrustedKeyTables1776000000000
163	1776150756000	CreateFavoritesTable1776150756000
164	1777000000000	CreateDeploymentKeyTable1777000000000
165	1777281990043	CreateAiBuilderTemporaryWorkflowTable1777281990043
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
ytV0KVQxMQClg4ZY	22ca4401-6da6-4d92-a577-ff4958db6ffa	project:personalOwner	2026-04-30 13:59:21.629+00	2026-04-30 13:59:21.629+00
\.


--
-- Data for Name: secrets_provider_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."secrets_provider_connection" ("id", "providerKey", "type", "encryptedSettings", "isEnabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_secrets_provider_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_secrets_provider_access" ("secretsProviderConnectionId", "projectId", "createdAt", "updatedAt", "role") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule" ("id", "expression", "role", "type", "order", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule_project" ("roleMappingRuleId", "projectId") FROM stdin;
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
workflow:unpublish	Unpublish Workflow	Allows unpublishing workflows.
workflow:unshare	Unshare Workflow	Allows removing workflow shares.
credential:unshare	Unshare Credential	Allows removing credential shares.
aiAssistant:manage	Manage AI Usage	Allows managing AI Usage settings.
aiAssistant:*	aiAssistant:*	\N
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
securitySettings:manage	securitySettings:manage	\N
securitySettings:*	securitySettings:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:generateInviteLink	user:generateInviteLink	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
projectVariable:*	projectVariable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:execute-chat	workflow:execute-chat	\N
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:updateRedactionSetting	workflow:updateRedactionSetting	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:read	Read Insights	Allows reading insights data.
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
provisioning:manage	provisioning:manage	\N
provisioning:*	provisioning:*	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:listProject	dataTable:listProject	\N
dataTable:*	dataTable:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:reveal	execution:reveal	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcp:*	mcp:*	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
mcpApiKey:*	mcpApiKey:*	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHub:*	chatHub:*	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
chatHubAgent:*	chatHubAgent:*	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:*	breakingChanges:*	\N
apiKey:manage	apiKey:manage	\N
apiKey:*	apiKey:*	\N
credentialResolver:create	credentialResolver:create	\N
credentialResolver:read	credentialResolver:read	\N
credentialResolver:update	credentialResolver:update	\N
credentialResolver:delete	credentialResolver:delete	\N
credentialResolver:list	credentialResolver:list	\N
credentialResolver:*	credentialResolver:*	\N
instanceAi:message	instanceAi:message	\N
instanceAi:manage	instanceAi:manage	\N
instanceAi:gateway	instanceAi:gateway	\N
instanceAi:*	instanceAi:*	\N
roleMappingRule:create	roleMappingRule:create	\N
roleMappingRule:read	roleMappingRule:read	\N
roleMappingRule:update	roleMappingRule:update	\N
roleMappingRule:delete	roleMappingRule:delete	\N
roleMappingRule:list	roleMappingRule:list	\N
roleMappingRule:*	roleMappingRule:*	\N
*	*	\N
workflow:publish	Publish Workflow	Allows publishing workflows.
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	workflow:unpublish
global:owner	workflow:unshare
global:owner	credential:unshare
global:owner	aiAssistant:manage
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	securitySettings:manage
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:generateInviteLink
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:execute-chat
global:owner	workflow:move
global:owner	workflow:updateRedactionSetting
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	insights:read
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:listProject
global:owner	execution:reveal
global:owner	role:manage
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:owner	apiKey:manage
global:owner	credentialResolver:create
global:owner	credentialResolver:read
global:owner	credentialResolver:update
global:owner	credentialResolver:delete
global:owner	credentialResolver:list
global:owner	instanceAi:message
global:owner	instanceAi:manage
global:owner	instanceAi:gateway
global:owner	roleMappingRule:create
global:owner	roleMappingRule:read
global:owner	roleMappingRule:update
global:owner	roleMappingRule:delete
global:owner	roleMappingRule:list
global:owner	workflow:publish
global:admin	workflow:unpublish
global:admin	workflow:unshare
global:admin	credential:unshare
global:admin	aiAssistant:manage
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:shareGlobally
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	securitySettings:manage
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:generateInviteLink
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:execute-chat
global:admin	workflow:move
global:admin	workflow:updateRedactionSetting
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	insights:read
global:admin	oidc:manage
global:admin	provisioning:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:listProject
global:admin	execution:reveal
global:admin	role:manage
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:admin	apiKey:manage
global:admin	credentialResolver:create
global:admin	credentialResolver:read
global:admin	credentialResolver:update
global:admin	credentialResolver:delete
global:admin	credentialResolver:list
global:admin	instanceAi:message
global:admin	instanceAi:manage
global:admin	instanceAi:gateway
global:admin	roleMappingRule:create
global:admin	roleMappingRule:read
global:admin	roleMappingRule:update
global:admin	roleMappingRule:delete
global:admin	roleMappingRule:list
global:admin	workflow:publish
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	insights:read
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
global:member	apiKey:manage
global:member	credentialResolver:list
global:member	instanceAi:message
global:member	instanceAi:gateway
global:chatUser	chatHub:message
global:chatUser	chatHubAgent:create
global:chatUser	chatHubAgent:read
global:chatUser	chatHubAgent:update
global:chatUser	chatHubAgent:delete
global:chatUser	chatHubAgent:list
project:admin	workflow:unpublish
project:admin	credential:unshare
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:execute-chat
project:admin	workflow:move
project:admin	workflow:updateRedactionSetting
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:listProject
project:admin	execution:reveal
project:admin	workflow:publish
project:personalOwner	workflow:unpublish
project:personalOwner	workflow:unshare
project:personalOwner	credential:unshare
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:execute-chat
project:personalOwner	workflow:move
project:personalOwner	workflow:updateRedactionSetting
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:listProject
project:personalOwner	execution:reveal
project:personalOwner	workflow:publish
project:editor	workflow:unpublish
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:execute-chat
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:listProject
project:editor	workflow:publish
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:execute-chat
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:listProject
project:chatUser	workflow:execute-chat
credential:owner	credential:unshare
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:unpublish
workflow:owner	workflow:unshare
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:execute-chat
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:owner	workflow:publish
workflow:editor	workflow:unpublish
workflow:editor	workflow:execute
workflow:editor	workflow:execute-chat
workflow:editor	workflow:read
workflow:editor	workflow:update
workflow:editor	workflow:publish
secretsProviderConnection:owner	externalSecretsProvider:sync
secretsProviderConnection:owner	externalSecretsProvider:read
secretsProviderConnection:owner	externalSecretsProvider:update
secretsProviderConnection:owner	externalSecretsProvider:delete
secretsProviderConnection:owner	externalSecretsProvider:list
secretsProviderConnection:owner	externalSecret:list
secretsProviderConnection:user	externalSecretsProvider:read
secretsProviderConnection:user	externalSecretsProvider:list
secretsProviderConnection:user	externalSecret:list
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
features.sourceControl.sshKeys	{"encryptedPrivateKey":"U2FsdGVkX1/++QTGmTSfH9O2WyBcossJTXVAGY8Ip9Ww+dm2oNhTADaE4SgZhYg3/tgbDcLn2AVeMcQiIy1sxNGyQLPXXwWPmzBRZOdZXO4i76DbPAWlHACbadkiPaliaROhkt957Jazo9GbRTrFBbV21lXvyxvlwcL9vBRcxkY7P71LaLbhMXOY3BF0MqC3LCH0n6ARWOZ9Kw6KPoezXzuuvhBhdYQYaVu2pcj7iSe4Kmqd3mDEHKCHTkQFKMOmdZI8iCbPLcAIY/94UGO7AcMVGQTyL5zgoHfDwqZJHG4vqW3O0wr0EzwroQLtBEC5lFQv8KOdwUr7uhM0NfiK/o8lEj6LWhoEv0vUsGXwZ0Psacr+4WtztZSOAv2VJxdbUygPHDJRbGG5pJQl/V+9XoIlegPivrgSAynGJeTkpQNqkHi84IfnrSpdK2CwJEF4Ba7Q7BimTdWADhG6OGiS16E9rCKqH2tXdnwweqJHMS+cleIczseAPKmXhkwefJF5Fp8u/+o2RZcRYcGcYWktF4EwIcsRxP2SMrnTUh7ZBcljDq0pb0VxT/gkFg7H6rmI","publicKey":"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILH3EW+q8TR4G8cva7s3Poshae/vgsqKpkNszuM3Y4sr n8n deploy key"}	t
features.sourceControl	{"branchName":"main","keyGeneratorType":"ed25519"}	t
userManagement.isInstanceOwnerSetUp	true	t
instance.firstProductionFailure	{"workflowId":"ILzLcy6Hai30g72g","projectId":"ytV0KVQxMQClg4ZY","userId":"22ca4401-6da6-4d92-a577-ff4958db6ffa","timestamp":1777627152613}	f
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5SR1IrS0xiMGtySkZXNEExTFJaa2p4a1lISFBJNkk5L3V0cG5jV0piT1o4N2VWVkRYRGF5NXlURTY1MFJnVXpHXG4xVlVOQS93cXp3dXNjTFRvSVg3dC9kNkpjcERNbkRmR0F0T2x2S2poTTQ0VFJYL2xtOFQrVDdaTmhyMU9pM3h2XG5yL08zemhSY3FGa2pHZzArM2VUL0JWU3ZRRVpYZkFrMDFXVWRUZTBnRDd0V0FqSyt4THlTS1Y0d3lWZDJhY2tZXG5wM0YraXdHam1UK3VMRGhFOWhXdnJzZ3o2NFhyNzZQS0x5ckpUWk5GeU1HamJxQkt4bnRWYzVrUUdTSFlMcERMXG4wbFREMFVFbHZwZjh6ME1oYWtkQkVXNHhFSGRxUGtiRjJrQUVsNnVleXd6dzFvREp6Qlhza0J4elRIN3RkWUhyXG40WTllenN4eGtzS00xWXk4dVZNTjRnPT18fFUyRnNkR1ZrWDEvSnZ3M2g1KzZKMWo3eGVDSDlYZWRSZDhib1YrXG50RkE1V005TXl3OFYwdFVYVnlYTGMxRFlWZlBuSUJ2WUhNKzUzbnpXV0VERU96VmNTakZPS2toUU8wUHBHRmQxXG41a2ZSbmx1RlBXQ2Q5NzA2YUIyYUpLdkFsN2RpUmtvY0RsYU4yT0tnQnlBYzZ3NFZvbjd4MUVSZlZnSDF0cEdtXG5hWHlxQmw4TlhBN2YxMzA0Q1I1cHcrMHlsYWxhSHY5eTRuUGI5dExOSHZ2cWxOY29VOEZtZTk2bDVnWlNHQW5JXG5Hd1RxN2NoMTc3M1U2NEhxamJmc2hYNitQaDE5Z245TVBaYkdzRUh0R2F1SkFyMjZFanlKWEhMMFhrcUpNc0ltXG5wUzJHdUpqVVNWMVBaYmdtdWFpaWV6R1Y0K01ncTErU2k1cmttYXJsNWMxek84RGd5SHJ6d2ZuWjZ6NFFBTkhLXG44ay8wOS9XQmNSYnJEMUVPWk5nTlVkckI5TVNRRm1vVVBKK0ptSklDNjVpcG4wb1FNTURKWDZWVm9ia05KTlpNXG5rendNMmlwS1kxeW84UEtseTBSUUE4b0xlN0dXcDZZMndrdUxTdU5ZdG5udG9TMitXUlErTEVoc01RNXRjWXd4XG44QUtGT3ZBWFkvWE44U0o3cCtKL3hqbUZKdmJiR0FtcVRqNnU1N2hTeW1WdWxaSzFEaEtUdm9UOEdFL0lyVUU3XG5IYnd6THhDWCt1WmkwOFhMZjdKcGYySGxYZlRpQ0xXZm1JZW1uUlVvdDh0cTVCZ2RjTWlIeEJCcDJzbjlaNVlKXG42cVpMQk1qWk9yVndTa2NINHl1RHlValBRekFXRDc5QTQ2QnBxekFNc1dDcytNQTN6QVVvYWN1TDNoM0h4VEF4XG56RUJZZVI0bDhSQ1BtUm9ZMG45Y2Q3cWdRTGhCNnlMcUxrYkY2YTAxd3VkQ0EvREkyV3ZCM3N5SjRMNUVGRy9sXG5GSHZYTlN0eDMvYlI0ZWR1VU1aRkgwK1N4TlgxbEUwU0o2MGxzcy9idzBMQ2xHUGVZcXo0eDAxakZyNTgxU21tXG4rZTZEZUxyR0MrL0VFTStmbzJuQmRYTVVhUUVHUXorZ3BKTjB4ZnhyNFdMSmNQR2wxYzJ6ZEk5ZVRTcFZXQ1hwXG56TmpUdzhseWdYM1A0eWlhVWkwSzhiYm5jaExiNHlyM0tsaEI4N0JhdXlRNkd5QUpuQUtJWFVEb092TzFHSmJ3XG52N0NURjlmbGNZTXNvYUZUTHRKRm1GU2RsQzBvQVFxOWhHK2pGNE9Xd2ovL2NWSVlpVHJBQjRWeFczWUtRKzd4XG5sQU04bnp6aWJYcURXUG5WZUpuV0FDMnU0dDZ1V2tTbWVBVDRRWHFrTXpHRUVzSVI2M2NoSDJuVXppbUlhVjA5XG4raUN6S2FLLzBxcGpOMFVNbWZQMUxNNGRxTFExSXdXRjFXbDBGR0VBVDhtdDhTYzVNbDQ0akxIZFFLaGpsQUVWXG5lMFVDVGhKbENZcVBHaHVwTmFHTytnVkMxRFF2V1M0RVFmSmJreTlqeFcrOWRJM0NUY0hVNHhSaHhjNmk5VmV1XG5nUEJmVWpHcDRoM2tXdjlLdzhPeTVVaDhkK01Pa2RJS1hvSjRwbnV5TkZDbCtLVk43ZDQxeU1LY1hTczN3Y0tvXG41RmF3cEs0cnB6S3ExUGpKNUtOSEpwZ0ZBS3ZpK2tUNjdSWWlNdTdlbll2WGZ2VlFHNURSOGRLVVcrTWRZRmVGXG5Da0J1Ryt4Y0hKVzNDb1Z1bCt6dUlTaGVTZ0F4YnNRMCtMcy9YcHNlODB5bzZhZWNSdFVHbDQ0WXBzWWtpcW9kXG5IN0FFWWdhUHlTeHRVUXRGT1lsYVp2Mm1WeGZUU0tXWFJwVm91ejZmb2dBTk5OODVvY004cndMS1VRUE1HS3RjXG4vRWlhM29Cd2ZBSTE4cW5RQ2VFRERZbE1qYlRsbExEWElsWDRaanY0c1FUZEZMa1BtdkRGZ25KZ3BpSHNGUitWXG4zTTRORlFrRGFmSzgvTTlYYitrMWdKTlpJTVRrWmEwbFNmSzJMRVM2QlROWU9UZk9iWVBXMXhQYTF3eFJuK0ZRXG4yNDFFUFlmSmcxeWh1dVJhOTRrYVQ0R0x1ZjAvaWVKTnR0UStwalJkakJqdG9RSVhLdUxHWU1pTjdXYVN0Um05XG5zNnBSWmtxVUlxdW5OWis2U0JmTmRhblNNbDN6djQwVk9IVVZ1UlB3cGM5R0J6NTNjc3ZwWFAxSFpHdVphS0ZjXG5GZ0RnK3VOS2Urc1BlcTZ0WU1yV1IvRXVucjZyU2FWdFVHZUM5cGlsdXUzbzV4S0xqNFRkQkdjWmljdzVCa3M5XG5aeXlWUHZIVzZuRGExWkduZ1BKN2xIekRsd2QxUW5GM3NsTEdXSHNmb1NTUDdieHNsVFBzQ3pMM2J2OHQxekwyXG5kMWdHNW1kS0RramkvbGtLb250eWlCN2FFSzFXSExtdlJwUTJ2Y2YrblNzbnVyclNteVJSNFBCN0xyejc4YUlWXG5aMzlZYTVRZ0trMDRIbjl5eGVNNFI3aGM5SThObW51VnR3bTF2OUJ6enVEbTBJRVllVjQ4K0hTeTBHVzZOR3NtXG5GeCtZOW9IeFFJWFdzbUJMYnlLYWY3clYzYy8ycmdzNGs2cjdOZVd3ZFBtRkJ6bXpidWhyZXI1bklMYmtodnluXG4wWDhZMTRhOG80TEhyYjlvaU5BT1FBQktWS2Q1c015WEFMVGhONzhDamUxTDVlWnkxZTJVK0Jqa1oxTlA1enJXXG45YWtDQUZOblZBVkg5SDRrWEJ0VldWMTlHaUhMSjV6M1Y5R0RPNjBUUDMxdzlkYityYUxFZG9lWVh4amlVQWxsXG5VM3luanZmUWRTWG9Ea3poRjNscWtYV1g1d0pMVEQ3SklmSzJzUlQ2RTk0cGlPME1PSGJUUU43eTFhRDNaZC9yXG5HdkN4cU9GYytiRjZLWU1TOVVnU0ZUR1czVi95WUxTQ0d6L2t1TytHVFFab1c4bi9UL1Z1UUpnNy9UdUx5bGtUXG5nL0dpeXJQVkRicU16Znphd0svbXJqakhOVFExemJGTUJrRDRTMW53Yk0xQm9URmc9PXx8bUZKbE53OUtJMld2XG5KYkRXbjRFV3B3Y0U0eXNGcnZlV01ZRlNFNjNDMjdRTmlzWmZleExTQkVSQ2doVk5hWDUwRUdseFVhQUFJSlBqXG5veklmeStkNXR0c2NaRGVjczJMUk8vSDlYRG94VDBkV21GSXEzbWFvWkRyVjJiUmNFUlhiWkVlS0ZnWEl2SzRxXG5iT1RSZmdidTkxY1l0SEU1SjVKdE1XMnloelpPRUZUUklsbW5XaEsrczgrUW9jTTN4bzZkdDM2aVNySnk5amMxXG5nVElXditlb3VuZlBpTGpSOGc2VW9FT1JncUNWNlU4OS9CS1VNVjBZM3JaOEpiT01nQjFFc29yemsyY2R4cTlxXG42azI3NHlyUDZGNFRDT0hHd2Vra2JvMUVacGsvWjJoRDRnRURXSEx4Z3FibnVaTUxjcldrdjFlbmkvalM4NTZqXG5od0JhaExVcHFBPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
x4MjUTAD90T6ozOy	ytV0KVQxMQClg4ZY	credential:owner	2026-05-01 03:06:11.02+00	2026-05-01 03:06:11.02+00
FR2n6Slti9BzPzoy	ytV0KVQxMQClg4ZY	credential:owner	2026-05-01 03:31:53.401+00	2026-05-01 03:31:53.401+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
ILzLcy6Hai30g72g	ytV0KVQxMQClg4ZY	workflow:owner	2026-05-01 02:41:37.952+00	2026-05-01 02:41:37.952+00
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tasks" ("id", "user_id", "title", "details", "date", "start_time", "end_time", "priority", "status", "source", "created_at", "updated_at") FROM stdin;
ea3414fd-2163-428b-842f-4fc18b67142f	amd-local-user			2026-04-30	18:00:00	20:00:00	medium	scheduled	ai	2026-05-01 04:39:13.721223+00	2026-05-01 04:39:13.721223+00
08aa6026-d40c-4a92-8968-e128b9eb7053	amd-local-user	trading session		2026-05-01	18:00:00	20:00:00	medium	scheduled	ai	2026-05-01 04:40:48.992893+00	2026-05-01 04:40:48.992893+00
e44f1fcb-95df-4897-be37-57e750b2d4b9	amd-local-user	n8n session		2026-05-01	21:00:00	23:00:00	medium	scheduled	ai	2026-05-01 04:50:25.919964+00	2026-05-01 04:50:25.919964+00
45c7d9f4-2552-4ce6-860d-e9efd53763c6	amd-local-user	Trading study session		2026-05-01	16:00:00	17:00:00	medium	rescheduled	ai	2026-05-01 03:56:44.463862+00	2026-05-01 08:13:57.745865+00
42be5c2b-d1fb-49ca-a2a2-d40f8249c7cc	amd-local-user	n8n study session	Study session for n8n	2026-05-02	08:00:00	10:00:00	medium	scheduled	ai	2026-05-01 09:17:50.241397+00	2026-05-01 09:17:50.241397+00
054a7fe8-dea4-4e31-ac99-6b6946db5d3f	amd-local-user	n8n study session		2026-05-01	23:30:00	23:59:00	medium	scheduled	ai	2026-05-01 09:19:40.558889+00	2026-05-01 09:19:40.558889+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt", "runningInstanceId", "cancelRequested") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs") FROM stdin;
\.


--
-- Data for Name: token_exchange_jti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."token_exchange_jti" ("jti", "expiresAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_key_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key_source" ("id", "type", "config", "status", "lastError", "lastRefreshedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: trusted_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key" ("sourceId", "kid", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience") FROM stdin;
\.


--
-- Data for Name: user_favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_favorites" ("id", "userId", "resourceId", "resourceType") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
17aa8756-5381-46f5-974d-8bb70edabb53	POST	Chat In	\N	\N	ILzLcy6Hai30g72g
\.


--
-- Data for Name: workflow_builder_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_builder_session" ("id", "workflowId", "userId", "messages", "previousSummary", "createdAt", "updatedAt", "activeVersionCardId", "resumeAfterRestoreMessageId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt", "publishedVersionId") FROM stdin;
1374	ILzLcy6Hai30g72g	113	credentialId	FR2n6Slti9BzPzoy	{"nodeId":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","nodeVersion":1}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1375	ILzLcy6Hai30g72g	114	nodeType	n8n-nodes-base.respondToWebhook	{"nodeId":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","nodeVersion":1.5}	1	2026-05-01 16:33:28.124+00	\N
1376	ILzLcy6Hai30g72g	114	nodeType	n8n-nodes-base.supabase	{"nodeId":"6d46342e-db9d-4e62-ab56-53f29409cdd2","nodeVersion":1}	1	2026-05-01 16:33:28.124+00	\N
1377	ILzLcy6Hai30g72g	114	credentialId	x4MjUTAD90T6ozOy	{"nodeId":"6d46342e-db9d-4e62-ab56-53f29409cdd2","nodeVersion":1}	1	2026-05-01 16:33:28.124+00	\N
1378	ILzLcy6Hai30g72g	114	nodeType	n8n-nodes-base.if	{"nodeId":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","nodeVersion":2.3}	1	2026-05-01 16:33:28.124+00	\N
1379	ILzLcy6Hai30g72g	114	nodeType	n8n-nodes-base.if	{"nodeId":"5f937a16-8cf6-4374-a73b-488562d4e31e","nodeVersion":2.3}	1	2026-05-01 16:33:28.124+00	\N
1380	ILzLcy6Hai30g72g	114	nodeType	n8n-nodes-base.respondToWebhook	{"nodeId":"b5fcc987-81c6-434a-838d-9ab57959d2aa","nodeVersion":1.5}	1	2026-05-01 16:33:28.124+00	\N
1381	ILzLcy6Hai30g72g	114	nodeType	n8n-nodes-base.respondToWebhook	{"nodeId":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","nodeVersion":1.5}	1	2026-05-01 16:33:28.124+00	\N
1382	ILzLcy6Hai30g72g	114	nodeType	n8n-nodes-base.code	{"nodeId":"119016b3-3648-41b4-aa81-7b1d82b5bd79","nodeVersion":2}	1	2026-05-01 16:33:28.124+00	\N
1383	ILzLcy6Hai30g72g	114	nodeType	@n8n/n8n-nodes-langchain.agent	{"nodeId":"99079705-02ca-4c31-bd83-74dafe1207eb","nodeVersion":3.1}	1	2026-05-01 16:33:28.124+00	\N
1384	ILzLcy6Hai30g72g	114	nodeType	n8n-nodes-base.set	{"nodeId":"5012c226-2bac-4528-ab6d-ce0f60f97d09","nodeVersion":3.4}	1	2026-05-01 16:33:28.124+00	\N
1385	ILzLcy6Hai30g72g	114	nodeType	n8n-nodes-base.webhook	{"nodeId":"dbd06431-fffe-4c33-bb34-db0cbca78174","nodeVersion":2.1}	1	2026-05-01 16:33:28.124+00	\N
1386	ILzLcy6Hai30g72g	114	webhookPath	17aa8756-5381-46f5-974d-8bb70edabb53	{"nodeId":"dbd06431-fffe-4c33-bb34-db0cbca78174","nodeVersion":2.1}	1	2026-05-01 16:33:28.124+00	\N
1387	ILzLcy6Hai30g72g	114	nodeType	@n8n/n8n-nodes-langchain.lmChatOpenRouter	{"nodeId":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","nodeVersion":1}	1	2026-05-01 16:33:28.124+00	\N
1388	ILzLcy6Hai30g72g	114	credentialId	FR2n6Slti9BzPzoy	{"nodeId":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","nodeVersion":1}	1	2026-05-01 16:33:28.124+00	\N
1361	ILzLcy6Hai30g72g	113	nodeType	n8n-nodes-base.respondToWebhook	{"nodeId":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","nodeVersion":1.5}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1362	ILzLcy6Hai30g72g	113	nodeType	n8n-nodes-base.supabase	{"nodeId":"6d46342e-db9d-4e62-ab56-53f29409cdd2","nodeVersion":1}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1363	ILzLcy6Hai30g72g	113	credentialId	x4MjUTAD90T6ozOy	{"nodeId":"6d46342e-db9d-4e62-ab56-53f29409cdd2","nodeVersion":1}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1364	ILzLcy6Hai30g72g	113	nodeType	n8n-nodes-base.if	{"nodeId":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","nodeVersion":2.3}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1365	ILzLcy6Hai30g72g	113	nodeType	n8n-nodes-base.if	{"nodeId":"5f937a16-8cf6-4374-a73b-488562d4e31e","nodeVersion":2.3}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1366	ILzLcy6Hai30g72g	113	nodeType	n8n-nodes-base.respondToWebhook	{"nodeId":"b5fcc987-81c6-434a-838d-9ab57959d2aa","nodeVersion":1.5}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1367	ILzLcy6Hai30g72g	113	nodeType	n8n-nodes-base.respondToWebhook	{"nodeId":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","nodeVersion":1.5}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1368	ILzLcy6Hai30g72g	113	nodeType	n8n-nodes-base.code	{"nodeId":"119016b3-3648-41b4-aa81-7b1d82b5bd79","nodeVersion":2}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1369	ILzLcy6Hai30g72g	113	nodeType	@n8n/n8n-nodes-langchain.agent	{"nodeId":"99079705-02ca-4c31-bd83-74dafe1207eb","nodeVersion":3.1}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1370	ILzLcy6Hai30g72g	113	nodeType	n8n-nodes-base.set	{"nodeId":"5012c226-2bac-4528-ab6d-ce0f60f97d09","nodeVersion":3.4}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1371	ILzLcy6Hai30g72g	113	nodeType	n8n-nodes-base.webhook	{"nodeId":"dbd06431-fffe-4c33-bb34-db0cbca78174","nodeVersion":2.1}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1372	ILzLcy6Hai30g72g	113	webhookPath	17aa8756-5381-46f5-974d-8bb70edabb53	{"nodeId":"dbd06431-fffe-4c33-bb34-db0cbca78174","nodeVersion":2.1}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
1373	ILzLcy6Hai30g72g	113	nodeType	@n8n/n8n-nodes-langchain.lmChatOpenRouter	{"nodeId":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","nodeVersion":1}	1	2026-05-01 04:31:03.321+00	3357fda1-c007-4e8c-884e-dd359eebf954
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description") FROM stdin;
3357fda1-c007-4e8c-884e-dd359eebf954	ILzLcy6Hai30g72g	Rave Albemich Icaro	2026-05-01 04:30:18.773+00	2026-05-01 04:31:03.48+00	[{"parameters":{"options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1696,176],"id":"d6f7690b-b544-4d08-9be1-49d4f82f6b55","name":"Reply Success"},{"parameters":{"tableId":"tasks","fieldsUi":{"fieldValues":[{"fieldId":"user_id","fieldValue":"={{$json.user_id}}"},{"fieldId":"title","fieldValue":"={{$json.title}}"},{"fieldId":"details","fieldValue":"={{$json.details}}"},{"fieldId":"date","fieldValue":"={{$json.date}}"},{"fieldId":"start_time","fieldValue":"={{$json.start_time}}"},{"fieldId":"end_time","fieldValue":"={{$json.end_time}}"},{"fieldId":"priority","fieldValue":"={{$json.priority}}"},{"fieldId":"status","fieldValue":"={{$json.status}}"},{"fieldId":"source","fieldValue":"ai"}]}},"type":"n8n-nodes-base.supabase","typeVersion":1,"position":[1488,176],"id":"6d46342e-db9d-4e62-ab56-53f29409cdd2","name":"Create Task in Supabase","credentials":{"supabaseApi":{"id":"x4MjUTAD90T6ozOy","name":"Supabase account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"be43787c-e307-45b6-8aa5-31322019a86d","leftValue":"={{$json.intent}}","rightValue":"create_task","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[1232,192],"id":"99a2929c-c9d0-4dc9-b9e6-9229e8a06b61","name":"Is Task JSON Valid?"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"62f4d42d-3f76-4c93-8aa0-f8adb3235052","leftValue":"={{$json.intent}}","rightValue":"clarify","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[976,0],"id":"5f937a16-8cf6-4374-a73b-488562d4e31e","name":"Is Clarification Needed?"},{"parameters":{"options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1424,400],"id":"b5fcc987-81c6-434a-838d-9ab57959d2aa","name":"Reply Invalid Request"},{"parameters":{"options":{}},"type":"n8n-nodes-base.respondToWebhook","typeVersion":1.5,"position":[1248,-192],"id":"4c3dd49d-ecd9-4138-8ab6-a5abaa7d2b1a","name":"Reply Clarification"},{"parameters":{"jsCode":"const raw = $json.output;\\n\\nif (!raw || typeof raw !== \\"string\\") {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"I could not read the AI response.\\"\\n      }\\n    }\\n  ];\\n}\\n\\ntry {\\n  const parsed = JSON.parse(raw);\\n  return [{ json: parsed }];\\n} catch (error) {\\n  return [\\n    {\\n      json: {\\n        intent: \\"clarify\\",\\n        question: \\"The AI response was not valid JSON.\\"\\n      }\\n    }\\n  ];\\n}\\n"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[768,0],"id":"119016b3-3648-41b4-aa81-7b1d82b5bd79","name":"Parse AI Output"},{"parameters":{"promptType":"define","text":"={{$json.message}}","options":{"systemMessage":"=You are a scheduling parser.\\n\\nConvert the user's message into one strict JSON object only.\\nDo not explain anything.\\nDo not add markdown.\\nDo not wrap the JSON in code fences.\\n\\nCurrent date: {{$json.today}}\\nTimezone: {{$json.timezone}}\\nUser ID: {{$json.user_id}}\\n\\nSupported intent:\\n- create_task\\n\\nReturn this format if the request is clear:\\n{\\n  \\"intent\\": \\"create_task\\",\\n  \\"user_id\\": \\"{{$json.user_id}}\\",\\n  \\"title\\": \\"\\",\\n  \\"details\\": \\"\\",\\n  \\"date\\": \\"YYYY-MM-DD\\",\\n  \\"start_time\\": \\"HH:MM\\",\\n  \\"end_time\\": \\"HH:MM\\",\\n  \\"priority\\": \\"low|medium|high\\",\\n  \\"status\\": \\"scheduled\\"\\n}\\n\\nRules:\\n- If the user says \\"today\\", use the provided current date.\\n- If no end time is given, default to one hour after the start time.\\n- If priority is not specified, use \\"medium\\".\\n- If the request is unclear, return:\\n{\\n  \\"intent\\": \\"clarify\\",\\n  \\"question\\": \\"\\"\\n}\\n"}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[416,0],"id":"99079705-02ca-4c31-bd83-74dafe1207eb","name":"Extract Task JSON"},{"parameters":{"assignments":{"assignments":[{"id":"77af0734-b7a9-4d31-a082-80ec82fe8be2","name":"=user_id","value":"={{$json.body.user_id}}","type":"string"},{"id":"e13b2508-86c1-4521-9297-5530b7058a24","name":"=message","value":"={{$json.body.message}}","type":"string"},{"id":"0a5733e5-a51f-4886-9d07-270da6b77051","name":"=timezone","value":"={{$json.body.timezone}}","type":"string"},{"id":"46bba186-d834-4d9e-b7dc-2d5fd08bf5c5","name":"=today","value":"={{$json.body.today}}","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[208,0],"id":"5012c226-2bac-4528-ab6d-ce0f60f97d09","name":" Prepare Input"},{"parameters":{"httpMethod":"POST","path":"17aa8756-5381-46f5-974d-8bb70edabb53","responseMode":"responseNode","options":{}},"type":"n8n-nodes-base.webhook","typeVersion":2.1,"position":[0,0],"id":"dbd06431-fffe-4c33-bb34-db0cbca78174","name":"Chat In","webhookId":"17aa8756-5381-46f5-974d-8bb70edabb53"},{"parameters":{"model":"openrouter/free","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenRouter","typeVersion":1,"position":[416,192],"id":"ffd27c65-c61b-4b81-b3e5-03dbd0f9bb5e","name":"OpenRouter Chat Model","credentials":{"openRouterApi":{"id":"FR2n6Slti9BzPzoy","name":"OpenRouter account"}}}]	{"Create Task in Supabase":{"main":[[{"node":"Reply Success","type":"main","index":0}]]},"Is Task JSON Valid?":{"main":[[{"node":"Create Task in Supabase","type":"main","index":0}],[{"node":"Reply Invalid Request","type":"main","index":0}]]},"Is Clarification Needed?":{"main":[[{"node":"Reply Clarification","type":"main","index":0}],[{"node":"Is Task JSON Valid?","type":"main","index":0}]]},"Reply Invalid Request":{"main":[[]]},"Parse AI Output":{"main":[[{"node":"Is Clarification Needed?","type":"main","index":0}]]},"Extract Task JSON":{"main":[[{"node":"Parse AI Output","type":"main","index":0}]]}," Prepare Input":{"main":[[{"node":"Extract Task JSON","type":"main","index":0}]]},"Chat In":{"main":[[{"node":" Prepare Input","type":"main","index":0}]]},"OpenRouter Chat Model":{"ai_languageModel":[[{"node":"Extract Task JSON","type":"ai_languageModel","index":0}]]}}	Version 2	t	Changed the input
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publish_history" ("id", "workflowId", "versionId", "event", "userId", "createdAt") FROM stdin;
7	ILzLcy6Hai30g72g	3357fda1-c007-4e8c-884e-dd359eebf954	activated	22ca4401-6da6-4d92-a577-ff4958db6ffa	2026-05-01 04:31:02.996+00
1	ILzLcy6Hai30g72g	\N	activated	22ca4401-6da6-4d92-a577-ff4958db6ffa	2026-05-01 03:42:10.114+00
2	ILzLcy6Hai30g72g	\N	deactivated	22ca4401-6da6-4d92-a577-ff4958db6ffa	2026-05-01 04:14:08.778+00
3	ILzLcy6Hai30g72g	\N	activated	22ca4401-6da6-4d92-a577-ff4958db6ffa	2026-05-01 04:14:11.667+00
4	ILzLcy6Hai30g72g	\N	deactivated	22ca4401-6da6-4d92-a577-ff4958db6ffa	2026-05-01 04:20:39.288+00
5	ILzLcy6Hai30g72g	\N	activated	22ca4401-6da6-4d92-a577-ff4958db6ffa	2026-05-01 04:20:41.565+00
6	ILzLcy6Hai30g72g	\N	deactivated	22ca4401-6da6-4d92-a577-ff4958db6ffa	2026-05-01 04:31:00.247+00
\.


--
-- Data for Name: workflow_published_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_published_version" ("workflowId", "publishedVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount", "id", "workflowName") FROM stdin;
2	2026-05-01 03:47:58.856+00	manual_error	ILzLcy6Hai30g72g	0	1	My workflow
1	2026-05-01 03:56:44.94+00	data_loaded	ILzLcy6Hai30g72g	1	6	\N
4	2026-05-01 03:56:45.974+00	manual_success	ILzLcy6Hai30g72g	0	3	My workflow
1	2026-05-01 09:19:25.307+00	production_error	ILzLcy6Hai30g72g	1	14	My workflow
7	2026-05-01 09:19:45.754+00	production_success	ILzLcy6Hai30g72g	7	8	My workflow
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: credential_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."credential_dependency_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 14, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 10, true);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 10, true);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, true);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 23, true);


--
-- Name: instance_version_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."instance_version_history_id_seq"', 1, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 165, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: secrets_provider_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."secrets_provider_connection_id_seq"', 1, false);


--
-- Name: user_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."user_favorites_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_dependency_id_seq"', 1388, true);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publish_history_id_seq"', 7, true);


--
-- Name: workflow_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_id_seq"', 15, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict fIVBrJnzWEdbe5hl9ubSb94qarao12yUttWBHhOOpaDuKLMtWPW0XKBNkwBGOhR

RESET ALL;
