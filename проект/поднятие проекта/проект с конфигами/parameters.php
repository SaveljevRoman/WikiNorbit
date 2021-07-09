<?php
require_once __DIR__ . '/common/components/Parser/FileFormat/FileFormat.php';
require_once __DIR__ . '/common/components/Parser/FileTypes/FileTypes.php';

/**
 * Файл дефолтных настроек приложения. На его основе строится основной конфиг приложения - parameters.php
 */
return [
    '%YII_DEBUG%' => true,
    '%YII_TRACE_LEVEL%' => 3,
    '%display_errors%' => 1,
    '%error_reporting%' => E_ALL,

    '%postgres_main_host%' => 'postgres',
    '%postgres_main_port%' => 5432,
    '%postgres_main_dbname%' => 'cardsmile',
    '%postgres_main_user%' => 'postgres',
    '%postgres_main_password%' => 'root',
    '%components.db.attributes%' => [
        // атрибут необходим для переиспользования коннекта драйверами PDO
        // Для 14 сервера продакшна выставлены в false, иначе возникают проблемы с подключением
        \PDO::ATTR_PERSISTENT => true,
    ],

    '%postgres_personal_host%' => 'postgres_personal',
    '%postgres_personal_port%' => 5432,
    '%postgres_personal_dbname%' => 'cardsmile_personal',
    '%postgres_personal_user%' => 'postgres',
    '%postgres_personal_password%' => 'root',
    '%components.dbPersonal.attributes%' => [
        // атрибут необходим для переиспользования коннекта драйверами PDO
        // Для 14 сервера продакшна выставлены в false, иначе возникают проблемы с подключением
        \PDO::ATTR_PERSISTENT => true,
    ],

    '%mongo_host%' => 'mongo',
    '%mongo_port%' => 27017,
    '%mongo_database%' => 'cardsmile',
    '%mongo_auth_database%' => 'admin',
    '%mongo_username%' => '',
    '%mongo_password%' => '',
    '%mongo_enable_profiling%' => true,
    '%mongodb.options%' => [
        // Закомментировать username и password, если не используется авторизация
        //   'username' => '%mongo_username%',
        //   'password' => '%mongo_password%',
        'db' => '%mongo_database%',
        'authSource' => '%mongo_auth_database%',
        'connectTimeoutMS' => 1200000,
        'socketTimeoutMS' => 1200000,
    ],

    '%redis_host%' => 'redis',
    '%redis_port%' => 6379,
    '%redis_database%' => 0,
    '%redis_prefix%' => 'redis.',

    '%redis_cache_host%' => 'redis',
    '%redis_cache_port%' => 6379,
    '%redis_cache_database%' => 1,

    '%rabbitmq_host%' => 'rabbitmq',
    '%rabbitmq_port%' => 5672,
    '%rabbitmq_username%' => 'guest',
    '%rabbitmq_password%' => 'guest',
    '%rabbitmq_vhost%' => '/',
    // Флаг закрытия подключений с базами данных после обработки сообщения консьюмером
    '%rabbitmq.consumer.close_orm_connections_after_message_processing%' => false,

    '%irg_passbook_ftp_host%' => '',
    '%irg_passbook_ftp_port%' => '',
    '%irg_passbook_ftp_user%' => '',
    '%irg_passbook_ftp_pass%' => '',

    '%communication_api.allowed_recipients.emails%' => ['akozhevnikov@htc-cs.ru'],
    '%communication_api.allowed_recipients.sms%' => ['+79199193777'],
    '%communication_api.allowed_recipients.viber%' => ['+79199193777'],
    '%communication_api.wsdl_url%' => 'https://dms.omnichannel.ru/api/v1/soap/service',
    '%communication_api.use_test_service%' => false,

    '%mailer.from_address%' => 'robot@loyalty.com',
    '%mailer.from_name%' => 'robot',
    '%mailer.method%' => 'smtp',
    '%mailer.options.host%' => '127.0.0.1',
    '%mailer.options.port%' => 25,
    '%mailer.options.username%' => '',
    '%mailer.options.password%' => '',
    '%mailer.options.smtp_auth%' => true,

    '%errors_sender.send_email%' => ['akozhevnikov@htc-cs.ru'],

    '%promo_code_generator.salt%' => 'KJZXkjjkasda342987syd7HSD',

    // если = true, не выполняет запрос к реальному сервису, всегда возвращает true
    '%soap_existence_checker.result_always_true%' => true,

    '%customer_ui_proxy.service_url%' => 'http://customer-ui.local',
    '%customer_ui_proxy.inquiry_url%' => 'http://customer-ui.local/registration.html',

    '%filestorage.storage_registry.reports.path%' => __DIR__ . '/web/www/download/reports',
    '%filestorage.storage_registry.reports.public_uri%' => '',
    '%filestorage.storage_registry.virtual_card.path%' => __DIR__ . '/web/www/download/virtual_card',
    '%filestorage.storage_registry.virtual_card.public_uri%' => '',

    '%client_auth_proxy.base_uri%' => 'http://auth.local',
    '%client_auth_proxy.auth_web_uri%' => '/auth/webUser',
    '%client_auth_proxy.auth_api_uri%' => '/auth/api',
    '%client_auth_proxy.auth_processing_uri%' => '/auth/processing',
    '%client_auth_proxy.clear_cache_uri%' => '/auth/clearCache',

    '%geocode_geonames_proxy.username%' => '',
    '%geocode_geonames_proxy.token%' => null,

    '%company_ids.passbook.passbook_all_cards_uploader%' => [6,4],
    '%company_ids.appointment_date_full_fill_daemon%' => [],

    '%params.email_to%' => '',
    '%params.feedback_email_to%' => '',
    '%params.rightway_catalog_api_url%' => 'http://catalog.local/api',
    '%params.rightway_catalog_uri%' => 'http://catalog.local/api',
    '%params.sales_path%' => '',
    '%params.landing_base_uri%' => 'omnichannel.ru',
    '%params.log_message_update_count%' => true,

    '%params.olap_export_options.ftp_server.server%' => '',
    '%params.olap_export_options.ftp_server.port%' => 21,
    '%params.olap_export_options.ftp_server.user%' => '',
    '%params.olap_export_options.ftp_server.password%' => '',

    // на проде '%session.cookie_params.domain%' => '.omnichannel.ru',
    '%session.cookie_params.domain%' => null,

    '%params.captcha_verification.recaptcha_site_key%' => '',
    '%params.captcha_verification.verification_url%' => 'https://www.google.com/recaptcha/api/siteverify',
    '%params.captcha_verification.verification_params.secret%' => '',
    '%params.captcha_verification.verification_params.response%' => '',
    '%params.captcha_verification.verification_params.remote_ip%' => null,

    '%params.digital_wallet_key%' => 'test',
    '%params.digital_wallet_confirmation_key_time_to_live%' => 300,
    '%params.min_unsubscribed_participants_report_size%' => 1000,

    '%web_admin.name%' => 'RightWay',
    '%passbook_ui_proxy.service_url%' => 'http://wallet-backend.local',

    '%export_reports_to_ftp.tmp.shop_reports.path%' => '/home/apps/loyalty.omnichannel.ru/htdocs/applications/web/runtime/ftp/shop_reports/',

    // ключи авторизации для апи ИМ
    '%userAuth.keys%' => [
        '123' => 'contact-centre',
        '123456' => 'profile',
    ],

    '%mongo_host_catalog%' => 'mongo',
    '%mongo_database_catalog%' => 'catalog',
    '%mongo_enable_profiling_catalog%' => true,
    '%mongo_username_catalog%' => '',
    '%mongo_password_catalog%' => '',
    '%mongo_auth_database_catalog%' => 'admin',
    '%mongodb_catalog.options%' => [
        // Закомментировать username и password, если не используется авторизация
        // 'username' => '%mongo_username_catalog%',
        // 'password' => '%mongo_password_catalog%',
        'db' => '%mongo_database_catalog%',
        'authSource' => '%mongo_auth_database_catalog%',
        'connectTimeoutMS' => 1200000,
        'socketTimeoutMS' => 1200000,
    ],

    '%uploader.tempFolderPath%' => __DIR__ . '/web/www/upload/temp/',
    '%uploader.viberImagesFolderName%' => 'viber',
    '%loyaltyApiLogMessageTTLInSeconds%' => 7.884e6, //срок жизни логов API ИМ в секундах - 3 месяца

    '%params.exponea_api_uri%' => 'https://api-cis.exponea.com/',

    '%metrics.graphite_exporter_host%' => 'localhost',
    '%metrics.graphite_exporter_port%' => '9109',
    '%metrics.graphite_exporter_protocol%' => 'udp',
    '%jwt_secret_key%' => 'secret',
    '%params.application_base_url%' => 'http://omnichannel.ru',

    '%power_bi_account%' => [
        'username' => 'analytics_demo@omnichannel.ru',
        'password' => 'Qwer147ty',
        'native_app_id' => '1013d9ad-1c2e-42ab-a092-ff2d70f40fec',
        'connect_timeout' => 3,
        'timeout' => 5,
    ],
    '%power_bi_rest_connect_timeout%' => 3,
    '%power_bi_rest_timeout%' => 5,

    '%params.exporter_host%' => 'localhost',
    '%params.exporter_port%' => '9109',
    '%params.exporter_protocol%' => 'udp',
//    '%params.filestorage_api_uri%' => 'http://file-storage.cardsmile.htc-cs.com/filestorage/',
    '%params.filestorage_api_uri%' => 'http://filestorage-api.local',
    '%params.fraudControlReportTTL%' => 7.884e6, //срок жизни отчетов по fraud-контролю в секундах - 3 месяца
    '%params.external_api_uri%' => 'https://rightway-test-api.omnichannel.ru',
    '%params.cheque_recognition_api_uri%' => 'http://cheque-recognition.local',
    '%params.external_api_key%' => 'x-api-key',
    '%params.fraudControlReportTTL%' => 7.884e6, //срок жизни отчетов по fraud-контролю в секундах - 3 месяца,
    '%params.internal_api_uri%' => 'http://internal-api.local',
    '%uploader.cardsEmissionFolderName%' => 'emission',
    '%params.catalog_knauf_gift_category%' => 'gift',
    '%params.catalog_knauf_good_category%' => 'goods',
    //Налог на добавленную стоимость
    '%params.nds%' => 0.18,
    '%params.cardFilterUpdateDelay%' => 300000, //задержка обновления индекса карт в милисекундах - 300000 милисекунд = 5 минут

    '%gelf_host%' => 'fluentd',
    '%gelf_port%' => 12201,
    '%gelf_chunk_size%' => 128,

    '%params.use_mongo_card_index%' => false,
    '%params.elastic_search_host%' => 'elasticsearch',
    '%params.elastic_search_port%' => '9200',

    '%segments.localFileStorage%' => '/tmp/segments/files/',
    // Настройки редиса для модуля настроек КПЛ
    '%redis_clp_settings_host%' => 'redis',
    '%redis_clp_settings_port%' => 6379,
    '%redis_clp_settings_database%' => 2,
    '%params.redis_clp_prefix%' => 'clp',
    '%params.redis_clp_settings_cache_life_time%' => 86400,
    '%communication_api.white_list%' => [
        'enable' => true,
        'source' => 'config', // db or config,
        'emails' => '%communication_api.allowed_recipients.emails%',   // only for 'config' source
        'phones' => '%communication_api.allowed_recipients.sms%',   // only for 'config' source
    ],
    '%params.unifiedCustomerFilterUpdateDelay%' => 300000,
    '%params.internal_processing_uri%' => 'http://processing.local',

    '%params.count_records_for_start_server_pagination%' => 10000,
    '%params.local_mac_hash_files_path%' => '/tmp/',

    '%params.exponea_local_reports_path%' => '/tmp/exponea/reports',
    '%params.exponea_local_reports_path_card_events%' => '/tmp/exponea/card_events/reports',
    '%params.exponea_api_uri_track%' => 'https://api.exponea.com/track/v2/',
    '%params.exponea_project_token%' => '',
    '%params.exponea_public_token%' => '',
    '%params.exponea_secret_token%' => '',

    '%params.elastic_search_host_catalog%' => '',
    '%params.elastic_search_port_catalog%' => '',

    '%params.parking_api_uri_track%' => '',
    '%params.parking_public_token%' => ''
];