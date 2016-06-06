DELETE FROM METL_FLOW_STEP_LINK WHERE SOURCE_STEP_ID IN (SELECT ID FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' ));
DELETE FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' );
DELETE FROM METL_FLOW_PARAMETER WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' );
DELETE FROM METL_FLOW WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' ;
DELETE FROM METL_COMPONENT_ATTRIBUTE_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' );
DELETE FROM METL_COMPONENT_ENTITY_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' );
DELETE FROM METL_COMPONENT_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' );
DELETE FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' ;
DELETE FROM METL_RESOURCE_SETTING WHERE RESOURCE_ID IN (SELECT ID FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' );
DELETE FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' ;
DELETE FROM METL_MODEL_ATTRIBUTE WHERE ENTITY_ID IN (SELECT ID FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' ));
DELETE FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' );
DELETE FROM METL_MODEL WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1' ;
DELETE FROM METL_FOLDER WHERE PROJECT_VERSION_ID='3be58fcd-a973-45a6-99c8-df975b1954c1';
DELETE FROM METL_PROJECT_VERSION WHERE ID='3be58fcd-a973-45a6-99c8-df975b1954c1';
DELETE FROM METL_PROJECT WHERE ID='1c23f80d-bd3a-4028-bfa9-f87a27fc6715';
insert into METL_PROJECT (ID, NAME, DESCRIPTION, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1c23f80d-bd3a-4028-bfa9-f87a27fc6715','RDBMSWriter Flow Test',null,0,{ts '2016-01-20 09:38:46.790'},null,null,{ts '2016-01-20 09:40:06.963'});
insert into METL_PROJECT_VERSION (ID, VERSION_LABEL, PROJECT_ID, ORIG_VERSION_ID, DESCRIPTION, READ_ONLY, ARCHIVED, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('3be58fcd-a973-45a6-99c8-df975b1954c1','1.0','1c23f80d-bd3a-4028-bfa9-f87a27fc6715',null,'',0,0,0,{ts '2016-01-20 09:38:46.790'},null,null,{ts '2016-01-20 09:40:06.962'});
insert into METL_MODEL (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, SHARED, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('90d186a4-8aa8-473f-973c-abc7daed05be','bb7d0c6d-4e4d-4706-b2c4-014ae8ce126b','3be58fcd-a973-45a6-99c8-df975b1954c1',0,'model1',0,null,{ts '2016-01-20 09:43:19.269'},null,null,{ts '2016-01-20 09:43:22.367'});
insert into METL_MODEL_ENTITY (ID, MODEL_ID, NAME, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('297eb591-1007-4da0-858f-fee0dc01d4ec','90d186a4-8aa8-473f-973c-abc7daed05be','table1',{ts '2016-01-20 09:43:26.586'},null,null,{ts '2016-01-20 09:43:43.278'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b7766166-5b38-49b9-9293-1a69181f3161','297eb591-1007-4da0-858f-fee0dc01d4ec','field1','VARCHAR',null,0,{ts '2016-01-20 09:43:53.766'},null,null,{ts '2016-01-20 09:43:57.705'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('fadef5d8-7ab6-4294-a390-be42c4411df8','297eb591-1007-4da0-858f-fee0dc01d4ec','id','INTEGER',null,1,{ts '2016-01-20 09:43:44.910'},null,null,{ts '2016-01-20 09:43:49.801'});
insert into METL_RESOURCE (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('40deaa27-dbc4-4a41-883b-28bf0e594f32','78875741-1d31-4370-a4d0-c4ae3564b2f2','3be58fcd-a973-45a6-99c8-df975b1954c1',0,'database','Database',null,{ts '2016-01-20 09:43:11.002'},null,null,{ts '2016-01-20 09:43:12.736'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('65072964-830a-4cbc-8105-a1705963bb01','9fe9abd9-5928-41df-b1bc-da9db48b23f5','3be58fcd-a973-45a6-99c8-df975b1954c1',0,'Parse Delimited 1','Parse Delimited',null,1,null,'90d186a4-8aa8-473f-973c-abc7daed05be',null,{ts '2016-01-20 09:48:28.138'},null,null,{ts '2016-01-20 09:56:59.006'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a226d11e-c2d8-4801-a299-fb4efbbff85a','4ad8618b-c567-41c2-86e0-8895882976c9','3be58fcd-a973-45a6-99c8-df975b1954c1',0,'Sql Executor 1','Sql Executor',null,1,null,null,'40deaa27-dbc4-4a41-883b-28bf0e594f32',{ts '2016-01-20 09:46:00.110'},null,null,{ts '2016-01-20 09:56:52.779'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a927cbad-022a-4592-9a7b-019e9ea1fa1e','c0d98003-47bf-4a78-8804-981871a1d4cc','3be58fcd-a973-45a6-99c8-df975b1954c1',0,'Text Constant 1','Text Constant',null,1,null,null,null,{ts '2016-01-20 09:47:37.135'},null,null,{ts '2016-01-20 09:56:55.432'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d2e8f51b-54c2-42d0-a318-b4853e125906','6c37287d-3d96-422d-b8db-ef0dd7bf44b7','3be58fcd-a973-45a6-99c8-df975b1954c1',0,'RDBMS Writer Continue on Error','RDBMS Writer',null,0,'90d186a4-8aa8-473f-973c-abc7daed05be',null,'40deaa27-dbc4-4a41-883b-28bf0e594f32',{ts '2016-01-20 09:47:20.472'},null,null,{ts '2016-01-20 09:58:02.678'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e22f3a44-b4fc-4ae9-8e6d-ae73873f7120','66f7fff3-0034-4d8e-bf99-5200692829c7','3be58fcd-a973-45a6-99c8-df975b1954c1',0,'Assert 1','Assert',null,0,null,null,null,{ts '2016-01-20 09:57:58.496'},null,null,{ts '2016-01-20 09:58:02.679'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1373fd61-36bd-4177-b3ae-0a7ee264f499','a927cbad-022a-4592-9a7b-019e9ea1fa1e','run.when','PER MESSAGE',{ts '2016-01-20 09:47:41.945'},null,null,{ts '2016-01-20 09:56:55.432'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2f24be53-2b38-4333-86fb-8ae4131afc67','a226d11e-c2d8-4801-a299-fb4efbbff85a','sql','drop table if exists table1;
create table table1 (id integer, field1 varchar(5), primary key (id));
',{ts '2016-01-20 09:46:43.665'},null,null,{ts '2016-01-20 09:56:52.781'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('30b7b247-32bf-428a-8e5e-90a08ff14209','a927cbad-022a-4592-9a7b-019e9ea1fa1e','split.on.line.feed','true',{ts '2016-01-20 09:48:07.663'},null,null,{ts '2016-01-20 09:56:55.433'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9c078be7-0365-4eb5-a5b5-5b49819ef2e6','e22f3a44-b4fc-4ae9-8e6d-ae73873f7120','expected.text.messages.count','1',{ts '2016-01-20 09:58:05.578'},null,null,{ts '2016-01-20 09:58:05.578'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a220bdf3-3c89-45ad-af12-8a6a2d8c7b6f','d2e8f51b-54c2-42d0-a318-b4853e125906','continue.on.error','true',{ts '2016-01-20 09:50:11.215'},null,null,{ts '2016-01-20 09:58:02.678'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ba3ad3f4-cd89-40fb-8795-e4d4ff334cd0','e22f3a44-b4fc-4ae9-8e6d-ae73873f7120','expected.control.messages.count','1',{ts '2016-01-20 09:58:07.815'},null,null,{ts '2016-01-20 09:58:09.476'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d3d8fee5-030a-4188-8913-48c45b287c1a','a226d11e-c2d8-4801-a299-fb4efbbff85a','run.when','PER UNIT OF WORK',{ts '2016-01-20 09:46:15.893'},null,null,{ts '2016-01-20 09:56:52.781'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d9df5dcd-7af8-48a8-b5cb-f58c9f685efd','a927cbad-022a-4592-9a7b-019e9ea1fa1e','text','1,''This string is too long''
2,''OK''
',{ts '2016-01-20 09:47:49.726'},null,null,{ts '2016-01-20 09:56:55.433'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0416ad0c-a40d-406c-b007-acbba42e4282','65072964-830a-4cbc-8105-a1705963bb01','fadef5d8-7ab6-4294-a390-be42c4411df8','delimited.formatter.attribute.ordinal','1',{ts '2016-01-20 09:49:55.459'},null,null,{ts '2016-01-20 09:56:59.009'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('23c0776e-13d1-4109-a363-84c5b51417f5','65072964-830a-4cbc-8105-a1705963bb01','fadef5d8-7ab6-4294-a390-be42c4411df8','delimited.formatter.attribute.format.function','',{ts '2016-01-20 09:49:55.461'},null,null,{ts '2016-01-20 09:56:59.008'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('99788925-35fa-4016-b01a-05e6cb0b3325','65072964-830a-4cbc-8105-a1705963bb01','b7766166-5b38-49b9-9293-1a69181f3161','delimited.formatter.attribute.format.function','',{ts '2016-01-20 09:49:55.461'},null,null,{ts '2016-01-20 09:56:59.008'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a00eb148-5aa7-4909-9de4-0cdf2e3744d9','65072964-830a-4cbc-8105-a1705963bb01','b7766166-5b38-49b9-9293-1a69181f3161','delimited.formatter.attribute.ordinal','2',{ts '2016-01-20 09:49:55.461'},null,null,{ts '2016-01-20 09:56:59.007'});
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME, TEST) values ('cc1cb494-29f3-41da-8418-a7ff63a7d584','f0ce3004-3841-43e3-b27c-e945cb12b323','3be58fcd-a973-45a6-99c8-df975b1954c1',0,'RDBMSWriter - Test Continue on Error True',null,{ts '2016-01-20 09:45:08.740'},null,null,{ts '2016-01-20 09:59:18.011'},1);
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0b09e7e7-c77d-49cb-95f8-d96719f3314c','cc1cb494-29f3-41da-8418-a7ff63a7d584','65072964-830a-4cbc-8105-a1705963bb01',350,20,2,{ts '2016-01-20 09:48:28.138'},null,null,{ts '2016-01-20 09:58:02.677'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5ff313c1-5d27-4776-96b9-638ffdfef7c5','cc1cb494-29f3-41da-8418-a7ff63a7d584','a226d11e-c2d8-4801-a299-fb4efbbff85a',40,20,0,{ts '2016-01-20 09:46:00.110'},null,null,{ts '2016-01-20 09:58:02.676'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8496fc85-06e7-41fd-af95-d99cf6d8b225','cc1cb494-29f3-41da-8418-a7ff63a7d584','e22f3a44-b4fc-4ae9-8e6d-ae73873f7120',670,20,4,{ts '2016-01-20 09:57:58.496'},null,null,{ts '2016-01-20 09:58:02.679'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9370725d-9b96-4822-9c76-f7d5a2c791ce','cc1cb494-29f3-41da-8418-a7ff63a7d584','a927cbad-022a-4592-9a7b-019e9ea1fa1e',190,20,1,{ts '2016-01-20 09:47:37.135'},null,null,{ts '2016-01-20 09:58:02.677'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('f6de99e7-5ec9-4ead-a7a7-1b7a3ec2ae90','cc1cb494-29f3-41da-8418-a7ff63a7d584','d2e8f51b-54c2-42d0-a318-b4853e125906',510,20,3,{ts '2016-01-20 09:47:20.472'},null,null,{ts '2016-01-20 09:58:02.678'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0b09e7e7-c77d-49cb-95f8-d96719f3314c','f6de99e7-5ec9-4ead-a7a7-1b7a3ec2ae90',{ts '2016-01-20 09:50:05.763'},null,null,{ts '2016-01-20 09:58:02.680'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5ff313c1-5d27-4776-96b9-638ffdfef7c5','9370725d-9b96-4822-9c76-f7d5a2c791ce',{ts '2016-01-20 09:47:44.475'},null,null,{ts '2016-01-20 09:58:02.679'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9370725d-9b96-4822-9c76-f7d5a2c791ce','0b09e7e7-c77d-49cb-95f8-d96719f3314c',{ts '2016-01-20 09:48:31.292'},null,null,{ts '2016-01-20 09:58:02.679'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('f6de99e7-5ec9-4ead-a7a7-1b7a3ec2ae90','8496fc85-06e7-41fd-af95-d99cf6d8b225',{ts '2016-01-20 09:58:02.676'},null,null,{ts '2016-01-20 09:58:02.680'});
