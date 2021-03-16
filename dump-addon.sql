CREATE TABLE chgk_common_session (
 session_idhash3 char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
 ipaddress bigint(10) NOT NULL,
 alt_ip bigint(10) NOT NULL,
 lasthit datetime NOT NULL,
 session_data text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
 PRIMARY KEY (session_idhash3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
