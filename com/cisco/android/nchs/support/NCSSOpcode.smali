.class public final enum Lcom/cisco/android/nchs/support/NCSSOpcode;
.super Ljava/lang/Enum;
.source "NCSSOpcode.java"

# interfaces
.implements Lcom/cisco/android/nchs/codes/IOpcode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/support/NCSSOpcode;",
        ">;",
        "Lcom/cisco/android/nchs/codes/IOpcode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum CHANGE_HTTP_PROXY:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum DELETE_CERTIFICATES:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum DISCONNECT:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field private static final ENTITY_NAME:Ljava/lang/String; = "NCSSOpcode"

.field public static final enum ERROR:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_ACTIVE_NETWORK_INTERFACE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_ANDROID_SDK_VER:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_CERTIFICATES:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_CERT_CHAIN:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_CLIENT_CERTS:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_DEVICE_ID:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_DEVICE_IMEI:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_DEVICE_MAC_ADDRESS:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_DEVICE_PHONE_TYPE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_DEVICE_TYPE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_DNS_SEARCH:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_DNS_SERVERS:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_ENV_ATTRIBUTES:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_HTTP_PROXY:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_LOCALE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_NETWORK_INTERFACES:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_PACKAGE_INFO:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_PLATFORM_VERSION:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_PUBLIC_DNS_SERVERS:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum GET_SYSTEM_PROPERTY:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum HAS_KNOX_PACKET_META:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum HAS_KNOX_VPN:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_ADD_ADDRESS:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_ADD_DNS_SERVER:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_ADD_ROUTE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_ADD_SEARCH_DOMAIN:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_ALLOW_FAMILY:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_CREATE_DATAGRAM_SOCKET:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_CREATE_STREAM_SOCKET:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_ESTABLISH:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_PREPARE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_PROTECT_SOCKET:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_RESTORE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_SET_DIRECT_PROXY:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_SET_MTU:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_SET_PAC_PROXY:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum ICS_SET_SESSION:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum IMPORT_PKCS12:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum IMPORT_TRUSTED_CERT:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum IS_MANAGED_PERAPP:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum IS_PACKET_CAPTURE_ENABLED:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum IS_VPN_KNOX_INITIATED:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum MODIFY_FORWARDING_RULE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum MODIFY_SYSTEM_PROPERTY:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum REPORT_CLIENT_ADDRESSES:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum REPORT_NETWORK_TYPE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum REPORT_TUNNEL_STATE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum RESTORE_DNS:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum SEND_BROADCAST:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum SET_APP_RULES:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum SET_DNS:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum SET_KNOX_EDM:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum SIGN_HASH:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum START_SERVICE:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum USE_MULTITABLE_ROUTES:Lcom/cisco/android/nchs/support/NCSSOpcode;

.field public static final enum VERIFY_CERT_FOR_HOST:Lcom/cisco/android/nchs/support/NCSSOpcode;


# instance fields
.field private mArgs:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

.field private mCode:B

.field private mDisconnect:Z

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 86

    .line 36
    new-instance v7, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v1, "VERIFY_CERT_FOR_HOST"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "VerifyServerCert"

    const/4 v5, 0x0

    const/4 v8, 0x3

    new-array v6, v8, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v9, 0x0

    aput-object v0, v6, v9

    sget-object v0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v10, 0x1

    aput-object v0, v6, v10

    sget-object v0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v11, 0x2

    aput-object v0, v6, v11

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v7, Lcom/cisco/android/nchs/support/NCSSOpcode;->VERIFY_CERT_FOR_HOST:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 37
    new-instance v0, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v13, "IMPORT_TRUSTED_CERT"

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-string v16, "ImportTrustedCert"

    const/16 v17, 0x0

    new-array v1, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v2, v1, v9

    move-object v12, v0

    move-object/from16 v18, v1

    invoke-direct/range {v12 .. v18}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v0, Lcom/cisco/android/nchs/support/NCSSOpcode;->IMPORT_TRUSTED_CERT:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 38
    new-instance v1, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v19, "CHANGE_HTTP_PROXY"

    const/16 v20, 0x2

    const/16 v21, 0x2

    const-string v22, "ChangeHttpProxy"

    const/16 v23, 0x0

    new-array v2, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v3, v2, v9

    move-object/from16 v18, v1

    move-object/from16 v24, v2

    invoke-direct/range {v18 .. v24}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v1, Lcom/cisco/android/nchs/support/NCSSOpcode;->CHANGE_HTTP_PROXY:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 39
    new-instance v2, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v13, "GET_HTTP_PROXY"

    const/4 v14, 0x3

    const/4 v15, 0x3

    const-string v16, "GetHttpProxy"

    new-array v3, v9, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object v12, v2

    move-object/from16 v18, v3

    invoke-direct/range {v12 .. v18}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v2, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_HTTP_PROXY:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 40
    new-instance v3, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v19, "GET_CLIENT_CERTS"

    const/16 v20, 0x4

    const/16 v21, 0x4

    const-string v22, "GetClientCerts"

    new-array v4, v9, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v18, v3

    move-object/from16 v24, v4

    invoke-direct/range {v18 .. v24}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v3, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_CLIENT_CERTS:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 41
    new-instance v4, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v13, "SIGN_HASH"

    const/4 v14, 0x5

    const/4 v15, 0x5

    const-string v16, "SignHash"

    new-array v5, v8, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v6, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v6, v5, v9

    sget-object v6, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v6, v5, v10

    sget-object v6, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v6, v5, v11

    move-object v12, v4

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v4, Lcom/cisco/android/nchs/support/NCSSOpcode;->SIGN_HASH:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 42
    new-instance v5, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v19, "IMPORT_PKCS12"

    const/16 v20, 0x6

    const/16 v21, 0x6

    const-string v22, "ImportPKCS12"

    const/4 v6, 0x4

    new-array v12, v6, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v13, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v13, v12, v9

    sget-object v13, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v13, v12, v10

    sget-object v13, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v13, v12, v11

    sget-object v13, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v13, v12, v8

    move-object/from16 v18, v5

    move-object/from16 v24, v12

    invoke-direct/range {v18 .. v24}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v5, Lcom/cisco/android/nchs/support/NCSSOpcode;->IMPORT_PKCS12:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 43
    new-instance v12, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v25, "MODIFY_FORWARDING_RULE"

    const/16 v26, 0x7

    const/16 v27, 0x7

    const-string v28, "ModifyForwardingRule"

    const/16 v29, 0x0

    const/4 v13, 0x5

    new-array v14, v13, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v15, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v15, v14, v9

    sget-object v15, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v15, v14, v10

    sget-object v15, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v15, v14, v11

    sget-object v15, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v15, v14, v8

    sget-object v15, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v15, v14, v6

    move-object/from16 v24, v12

    move-object/from16 v30, v14

    invoke-direct/range {v24 .. v30}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v12, Lcom/cisco/android/nchs/support/NCSSOpcode;->MODIFY_FORWARDING_RULE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 44
    new-instance v14, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v17, "GET_LOCALE"

    const/16 v18, 0x8

    const/16 v19, 0x8

    const-string v20, "GetLocale"

    const/16 v21, 0x0

    new-array v15, v9, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v16, v14

    move-object/from16 v22, v15

    invoke-direct/range {v16 .. v22}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v14, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_LOCALE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 45
    new-instance v15, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v23, "GET_CERTIFICATES"

    const/16 v24, 0x9

    const/16 v25, 0x9

    const-string v26, "GetCertificates"

    const/16 v27, 0x0

    new-array v13, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v17, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v17, v13, v9

    move-object/from16 v22, v15

    move-object/from16 v28, v13

    invoke-direct/range {v22 .. v28}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v15, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_CERTIFICATES:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 46
    new-instance v13, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v29, "DELETE_CERTIFICATES"

    const/16 v30, 0xa

    const/16 v31, 0xa

    const-string v32, "DeleteCertificates"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v13

    invoke-direct/range {v28 .. v34}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v13, Lcom/cisco/android/nchs/support/NCSSOpcode;->DELETE_CERTIFICATES:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 47
    new-instance v24, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v18, "START_SERVICE"

    const/16 v19, 0xb

    const/16 v20, 0xb

    const-string v21, "StartServce"

    const/16 v22, 0x0

    new-array v6, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v17, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v17, v6, v9

    move-object/from16 v17, v24

    move-object/from16 v23, v6

    invoke-direct/range {v17 .. v23}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v24, Lcom/cisco/android/nchs/support/NCSSOpcode;->START_SERVICE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 51
    new-instance v6, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v27, "ICS_ADD_ADDRESS"

    const/16 v28, 0xc

    const/16 v29, 0xc

    const-string v30, "AddAddress"

    const/16 v31, 0x0

    new-array v8, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v18, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v18, v8, v9

    sget-object v18, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v18, v8, v10

    move-object/from16 v26, v6

    move-object/from16 v32, v8

    invoke-direct/range {v26 .. v32}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v6, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_ADD_ADDRESS:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 52
    new-instance v8, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v33, "ICS_ADD_DNS_SERVER"

    const/16 v34, 0xd

    const/16 v35, 0xd

    const-string v36, "AddDnsServer"

    const/16 v37, 0x0

    new-array v11, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v19, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v19, v11, v9

    move-object/from16 v32, v8

    move-object/from16 v38, v11

    invoke-direct/range {v32 .. v38}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v8, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_ADD_DNS_SERVER:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 53
    new-instance v11, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v27, "ICS_ADD_ROUTE"

    const/16 v28, 0xe

    const/16 v29, 0xe

    const-string v30, "AddRoute"

    move-object/from16 v20, v8

    const/4 v10, 0x3

    new-array v8, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v10, v8, v9

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v19, 0x1

    aput-object v10, v8, v19

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v18, 0x2

    aput-object v10, v8, v18

    move-object/from16 v26, v11

    move-object/from16 v32, v8

    invoke-direct/range {v26 .. v32}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v11, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_ADD_ROUTE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 54
    new-instance v8, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v33, "ICS_ADD_SEARCH_DOMAIN"

    const/16 v34, 0xf

    const/16 v35, 0xf

    const-string v36, "AddSearchDomain"

    move-object/from16 v21, v11

    const/4 v10, 0x1

    new-array v11, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v10, v11, v9

    move-object/from16 v32, v8

    move-object/from16 v38, v11

    invoke-direct/range {v32 .. v38}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v8, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_ADD_SEARCH_DOMAIN:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 55
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v27, "ICS_ESTABLISH"

    const/16 v28, 0x10

    const/16 v29, 0x10

    const-string v30, "Establish"

    new-array v11, v9, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v26, v10

    move-object/from16 v32, v11

    invoke-direct/range {v26 .. v32}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_ESTABLISH:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 56
    new-instance v11, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v33, "ICS_PREPARE"

    const/16 v34, 0x11

    const/16 v35, 0x11

    const-string v36, "Prepare"

    move-object/from16 v23, v10

    const/4 v9, 0x2

    new-array v10, v9, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v9, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v9, v10, v22

    sget-object v9, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v19, 0x1

    aput-object v9, v10, v19

    move-object/from16 v32, v11

    move-object/from16 v38, v10

    invoke-direct/range {v32 .. v38}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v11, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_PREPARE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 57
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v27, "ICS_SET_MTU"

    const/16 v28, 0x12

    const/16 v29, 0x12

    const-string v30, "SetMtu"

    move-object/from16 v33, v11

    const/4 v10, 0x1

    new-array v11, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v10, v11, v22

    move-object/from16 v26, v9

    move-object/from16 v32, v11

    invoke-direct/range {v26 .. v32}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_SET_MTU:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 58
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v35, "ICS_SET_SESSION"

    const/16 v36, 0x13

    const/16 v37, 0x13

    const-string v38, "SetSession"

    const/16 v39, 0x0

    const/4 v11, 0x1

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v9, v22

    move-object/from16 v34, v10

    move-object/from16 v40, v9

    invoke-direct/range {v34 .. v40}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_SET_SESSION:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 59
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v41, "ICS_PROTECT_SOCKET"

    const/16 v42, 0x14

    const/16 v43, 0x14

    const-string v44, "Protect"

    const/16 v45, 0x0

    move-object/from16 v27, v10

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v40, v9

    move-object/from16 v46, v10

    invoke-direct/range {v40 .. v46}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_PROTECT_SOCKET:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 60
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v35, "SET_APP_RULES"

    const/16 v36, 0x15

    const/16 v37, 0x30

    const-string v38, "SetAppRules"

    const/16 v40, 0x0

    move-object/from16 v34, v10

    invoke-direct/range {v34 .. v40}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->SET_APP_RULES:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 61
    new-instance v11, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v42, "IS_VPN_KNOX_INITIATED"

    const/16 v43, 0x16

    const/16 v44, 0x31

    const-string v45, "IsVpnKnoxInitiated"

    const/16 v46, 0x0

    move-object/from16 v29, v9

    move-object/from16 v28, v10

    const/4 v10, 0x0

    new-array v9, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v41, v11

    move-object/from16 v47, v9

    invoke-direct/range {v41 .. v47}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v11, Lcom/cisco/android/nchs/support/NCSSOpcode;->IS_VPN_KNOX_INITIATED:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 62
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v35, "HAS_KNOX_VPN"

    const/16 v36, 0x17

    const/16 v37, 0x32

    const-string v38, "HasKnoxVpn"

    move-object/from16 v30, v11

    const/4 v10, 0x0

    new-array v11, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v34, v9

    move-object/from16 v40, v11

    invoke-direct/range {v34 .. v40}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->HAS_KNOX_VPN:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 63
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v41, "HAS_KNOX_PACKET_META"

    const/16 v42, 0x18

    const/16 v43, 0x33

    const-string v44, "HasKnoxMeta"

    const/16 v45, 0x0

    move-object/from16 v31, v9

    const/4 v11, 0x0

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v40, v10

    move-object/from16 v46, v9

    invoke-direct/range {v40 .. v46}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->HAS_KNOX_PACKET_META:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 64
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v35, "ICS_RESTORE"

    const/16 v36, 0x19

    const/16 v37, 0x34

    const-string v38, "Restore"

    move-object/from16 v32, v10

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v34, v9

    move-object/from16 v40, v10

    invoke-direct/range {v34 .. v40}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_RESTORE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 65
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v41, "ICS_SET_DIRECT_PROXY"

    const/16 v42, 0x1a

    const/16 v43, 0x80

    const-string v44, "SetDirectProxy"

    const/16 v46, 0x0

    move-object/from16 v40, v10

    invoke-direct/range {v40 .. v46}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_SET_DIRECT_PROXY:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 66
    new-instance v11, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v35, "ICS_SET_PAC_PROXY"

    const/16 v36, 0x1b

    const/16 v37, 0x81

    const-string v38, "SetPacProxy"

    move-object/from16 v42, v9

    move-object/from16 v41, v10

    const/4 v10, 0x1

    new-array v9, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v10, v9, v22

    move-object/from16 v34, v11

    move-object/from16 v40, v9

    invoke-direct/range {v34 .. v40}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v11, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_SET_PAC_PROXY:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 70
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v44, "ICS_CREATE_STREAM_SOCKET"

    const/16 v45, 0x1c

    const/16 v46, 0x1a

    const-string v47, "CreateStreamSocket"

    const/16 v48, 0x0

    const/4 v10, 0x1

    new-array v11, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v10, v11, v22

    move-object/from16 v43, v9

    move-object/from16 v49, v11

    invoke-direct/range {v43 .. v49}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_CREATE_STREAM_SOCKET:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 71
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v50, "ICS_CREATE_DATAGRAM_SOCKET"

    const/16 v51, 0x1d

    const/16 v52, 0x1b

    const-string v53, "CreateDatagramSocket"

    const/16 v54, 0x0

    move-object/from16 v35, v9

    const/4 v11, 0x1

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v9, v22

    move-object/from16 v49, v10

    move-object/from16 v55, v9

    invoke-direct/range {v49 .. v55}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_CREATE_DATAGRAM_SOCKET:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 77
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v44, "MODIFY_SYSTEM_PROPERTY"

    const/16 v45, 0x1e

    const/16 v46, 0x16

    const-string v47, "ModifySystemProperty"

    move-object/from16 v36, v10

    const/4 v11, 0x2

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v10, v22

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v19, 0x1

    aput-object v11, v10, v19

    move-object/from16 v43, v9

    move-object/from16 v49, v10

    invoke-direct/range {v43 .. v49}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->MODIFY_SYSTEM_PROPERTY:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 78
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v50, "GET_DEVICE_ID"

    const/16 v51, 0x1f

    const/16 v52, 0x17

    const-string v53, "GetDeviceId"

    move-object/from16 v37, v9

    const/4 v11, 0x0

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v49, v10

    move-object/from16 v55, v9

    invoke-direct/range {v49 .. v55}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_DEVICE_ID:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 79
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v44, "GET_DEVICE_TYPE"

    const/16 v45, 0x20

    const/16 v46, 0x18

    const-string v47, "GetDeviceType"

    move-object/from16 v38, v10

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v43, v9

    move-object/from16 v49, v10

    invoke-direct/range {v43 .. v49}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_DEVICE_TYPE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 80
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v50, "GET_PLATFORM_VERSION"

    const/16 v51, 0x21

    const/16 v52, 0x19

    const-string v53, "GetPlatformVersion"

    move-object/from16 v39, v9

    const/4 v11, 0x0

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v49, v10

    move-object/from16 v55, v9

    invoke-direct/range {v49 .. v55}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_PLATFORM_VERSION:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 82
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v44, "GET_CERT_CHAIN"

    const/16 v45, 0x22

    const/16 v46, 0x20

    const-string v47, "GetCertChain"

    move-object/from16 v40, v10

    const/4 v11, 0x1

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v10, v22

    move-object/from16 v43, v9

    move-object/from16 v49, v10

    invoke-direct/range {v43 .. v49}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_CERT_CHAIN:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 84
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v50, "GET_PACKAGE_INFO"

    const/16 v51, 0x23

    const/16 v52, 0x21

    const-string v53, "GetPackageInfo"

    const/4 v11, 0x1

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v9, v22

    move-object/from16 v49, v10

    move-object/from16 v55, v9

    invoke-direct/range {v49 .. v55}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_PACKAGE_INFO:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 86
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v56, "SET_DNS"

    const/16 v57, 0x24

    const/16 v58, 0x22

    const-string v59, "SetDns"

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v55, v9

    invoke-direct/range {v55 .. v61}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->SET_DNS:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 87
    new-instance v11, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v45, "RESTORE_DNS"

    const/16 v46, 0x25

    const/16 v47, 0x23

    const-string v48, "RestoreDns"

    const/16 v49, 0x0

    move-object/from16 v51, v9

    move-object/from16 v52, v10

    const/4 v9, 0x0

    new-array v10, v9, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v44, v11

    move-object/from16 v50, v10

    invoke-direct/range {v44 .. v50}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v11, Lcom/cisco/android/nchs/support/NCSSOpcode;->RESTORE_DNS:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 88
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v54, "GET_DNS_SERVERS"

    const/16 v55, 0x26

    const/16 v56, 0x25

    const-string v57, "GetDnsServers"

    const/16 v58, 0x0

    const/4 v10, 0x1

    new-array v11, v10, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v10, v11, v22

    move-object/from16 v53, v9

    move-object/from16 v59, v11

    invoke-direct/range {v53 .. v59}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_DNS_SERVERS:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 89
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v60, "GET_DNS_SEARCH"

    const/16 v61, 0x27

    const/16 v62, 0x26

    const-string v63, "GetDnsSearch"

    const/16 v64, 0x0

    move-object/from16 v45, v9

    const/4 v11, 0x1

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v9, v22

    move-object/from16 v59, v10

    move-object/from16 v65, v9

    invoke-direct/range {v59 .. v65}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_DNS_SEARCH:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 90
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v54, "GET_DEVICE_MAC_ADDRESS"

    const/16 v55, 0x28

    const/16 v56, 0x27

    const-string v57, "GetDeviceMacAddress"

    move-object/from16 v46, v10

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v53, v9

    move-object/from16 v59, v10

    invoke-direct/range {v53 .. v59}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_DEVICE_MAC_ADDRESS:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 91
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v60, "GET_DEVICE_IMEI"

    const/16 v61, 0x29

    const/16 v62, 0x28

    const-string v63, "GetDeviceImei"

    move-object/from16 v47, v9

    const/4 v11, 0x0

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v59, v10

    move-object/from16 v65, v9

    invoke-direct/range {v59 .. v65}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_DEVICE_IMEI:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 92
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v54, "GET_DEVICE_PHONE_TYPE"

    const/16 v55, 0x2a

    const/16 v56, 0x29

    const-string v57, "GetDevicePhoneType"

    move-object/from16 v48, v10

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v53, v9

    move-object/from16 v59, v10

    invoke-direct/range {v53 .. v59}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_DEVICE_PHONE_TYPE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 93
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v60, "GET_SYSTEM_PROPERTY"

    const/16 v61, 0x2b

    const/16 v62, 0x36

    const-string v63, "GetSystemProperty"

    move-object/from16 v49, v9

    const/4 v11, 0x1

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v9, v22

    move-object/from16 v59, v10

    move-object/from16 v65, v9

    invoke-direct/range {v59 .. v65}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_SYSTEM_PROPERTY:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 94
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v54, "USE_MULTITABLE_ROUTES"

    const/16 v55, 0x2c

    const/16 v56, 0x37

    const-string v57, "UseMultitableRoutes"

    move-object/from16 v50, v10

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v53, v9

    move-object/from16 v59, v10

    invoke-direct/range {v53 .. v59}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->USE_MULTITABLE_ROUTES:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 95
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v60, "SEND_BROADCAST"

    const/16 v61, 0x2d

    const/16 v62, 0x38

    const-string v63, "SendBroadcast"

    const/4 v11, 0x1

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v9, v22

    move-object/from16 v59, v10

    move-object/from16 v65, v9

    invoke-direct/range {v59 .. v65}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->SEND_BROADCAST:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 96
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v66, "SET_KNOX_EDM"

    const/16 v67, 0x2e

    const/16 v68, 0x39

    const-string v69, "SetKnoxEdm"

    const/16 v70, 0x0

    move-object/from16 v54, v10

    const/4 v11, 0x1

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v10, v22

    move-object/from16 v65, v9

    move-object/from16 v71, v10

    invoke-direct/range {v65 .. v71}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->SET_KNOX_EDM:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 97
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v56, "REPORT_NETWORK_TYPE"

    const/16 v57, 0x2f

    const/16 v58, 0x40

    const-string v59, "ReportNetworkType"

    const/16 v60, 0x0

    move-object/from16 v62, v9

    const/4 v11, 0x1

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v9, v22

    move-object/from16 v55, v10

    move-object/from16 v61, v9

    invoke-direct/range {v55 .. v61}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->REPORT_NETWORK_TYPE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 98
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v64, "REPORT_TUNNEL_STATE"

    const/16 v65, 0x30

    const/16 v66, 0x41

    const-string v67, "ReportTunnelState"

    const/16 v68, 0x0

    const/4 v11, 0x1

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v10, v22

    move-object/from16 v63, v9

    move-object/from16 v69, v10

    invoke-direct/range {v63 .. v69}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->REPORT_TUNNEL_STATE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 99
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v70, "GET_ACTIVE_NETWORK_INTERFACE"

    const/16 v71, 0x31

    const/16 v72, 0x42

    const-string v73, "GetActiveNetworkInterface"

    const/16 v74, 0x0

    move-object/from16 v56, v9

    const/4 v11, 0x0

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v69, v10

    move-object/from16 v75, v9

    invoke-direct/range {v69 .. v75}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_ACTIVE_NETWORK_INTERFACE:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 100
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v64, "REPORT_CLIENT_ADDRESSES"

    const/16 v65, 0x32

    const/16 v66, 0x44

    const-string v67, "ReportClientAddresses"

    move-object/from16 v57, v10

    const/4 v11, 0x2

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v10, v22

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v19, 0x1

    aput-object v11, v10, v19

    move-object/from16 v63, v9

    move-object/from16 v69, v10

    invoke-direct/range {v63 .. v69}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->REPORT_CLIENT_ADDRESSES:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 101
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v70, "GET_PUBLIC_DNS_SERVERS"

    const/16 v71, 0x33

    const/16 v72, 0x45

    const-string v73, "GetPublicDnsServers"

    move-object/from16 v58, v9

    const/4 v11, 0x0

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v69, v10

    move-object/from16 v75, v9

    invoke-direct/range {v69 .. v75}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_PUBLIC_DNS_SERVERS:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 102
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v64, "IS_PACKET_CAPTURE_ENABLED"

    const/16 v65, 0x34

    const/16 v66, 0x46

    const-string v67, "IsPacketCaptureEnabled"

    move-object/from16 v59, v10

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v63, v9

    move-object/from16 v69, v10

    invoke-direct/range {v63 .. v69}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->IS_PACKET_CAPTURE_ENABLED:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 103
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v70, "ICS_ALLOW_FAMILY"

    const/16 v71, 0x35

    const/16 v72, 0x47

    const-string v73, "AllowFamily"

    move-object/from16 v60, v9

    const/4 v11, 0x1

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v11, v9, v22

    move-object/from16 v69, v10

    move-object/from16 v75, v9

    invoke-direct/range {v69 .. v75}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->ICS_ALLOW_FAMILY:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 104
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v64, "IS_MANAGED_PERAPP"

    const/16 v65, 0x36

    const/16 v66, 0x48

    const-string v67, "IsManagedPerApp"

    move-object/from16 v61, v10

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v63, v9

    move-object/from16 v69, v10

    invoke-direct/range {v63 .. v69}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->IS_MANAGED_PERAPP:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 105
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v70, "GET_NETWORK_INTERFACES"

    const/16 v71, 0x37

    const/16 v72, 0x49

    const-string v73, "GetNetworkInterfaces"

    const/4 v11, 0x0

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v69, v10

    move-object/from16 v75, v9

    invoke-direct/range {v69 .. v75}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_NETWORK_INTERFACES:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 108
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v76, "GET_ANDROID_SDK_VER"

    const/16 v77, 0x38

    const/16 v78, 0x50

    const-string v79, "GetAndroidSDKVer"

    const/16 v80, 0x0

    move-object/from16 v64, v10

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v75, v9

    move-object/from16 v81, v10

    invoke-direct/range {v75 .. v81}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_ANDROID_SDK_VER:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 109
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v66, "GET_ENV_ATTRIBUTES"

    const/16 v67, 0x39

    const/16 v68, 0x60

    const-string v69, "GetEnvAttributes"

    const/16 v70, 0x0

    move-object/from16 v72, v9

    const/4 v11, 0x0

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v65, v10

    move-object/from16 v71, v9

    invoke-direct/range {v65 .. v71}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->GET_ENV_ATTRIBUTES:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 111
    new-instance v9, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v74, "DISCONNECT"

    const/16 v75, 0x3a

    const/16 v76, 0xfe

    const-string v77, "Disconnect"

    const/16 v78, 0x1

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v73, v9

    move-object/from16 v79, v10

    invoke-direct/range {v73 .. v79}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->DISCONNECT:Lcom/cisco/android/nchs/support/NCSSOpcode;

    .line 113
    new-instance v10, Lcom/cisco/android/nchs/support/NCSSOpcode;

    const-string v80, "ERROR"

    const/16 v81, 0x3b

    const/16 v82, 0xff

    const-string v83, "Error"

    const/16 v84, 0x1

    move-object/from16 v66, v9

    const/4 v11, 0x0

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v79, v10

    move-object/from16 v85, v9

    invoke-direct/range {v79 .. v85}, Lcom/cisco/android/nchs/support/NCSSOpcode;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/support/NCSSOpcode;->ERROR:Lcom/cisco/android/nchs/support/NCSSOpcode;

    const/16 v9, 0x3c

    new-array v9, v9, [Lcom/cisco/android/nchs/support/NCSSOpcode;

    const/4 v11, 0x0

    aput-object v7, v9, v11

    const/4 v7, 0x1

    aput-object v0, v9, v7

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v3, v9, v0

    const/4 v0, 0x5

    aput-object v4, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v12, v9, v0

    const/16 v0, 0x8

    aput-object v14, v9, v0

    const/16 v0, 0x9

    aput-object v15, v9, v0

    const/16 v0, 0xa

    aput-object v13, v9, v0

    const/16 v0, 0xb

    aput-object v24, v9, v0

    const/16 v0, 0xc

    aput-object v6, v9, v0

    const/16 v0, 0xd

    aput-object v20, v9, v0

    const/16 v0, 0xe

    aput-object v21, v9, v0

    const/16 v0, 0xf

    aput-object v8, v9, v0

    const/16 v0, 0x10

    aput-object v23, v9, v0

    const/16 v0, 0x11

    aput-object v33, v9, v0

    const/16 v0, 0x12

    aput-object v26, v9, v0

    const/16 v0, 0x13

    aput-object v27, v9, v0

    const/16 v0, 0x14

    aput-object v29, v9, v0

    const/16 v0, 0x15

    aput-object v28, v9, v0

    const/16 v0, 0x16

    aput-object v30, v9, v0

    const/16 v0, 0x17

    aput-object v31, v9, v0

    const/16 v0, 0x18

    aput-object v32, v9, v0

    const/16 v0, 0x19

    aput-object v42, v9, v0

    const/16 v0, 0x1a

    aput-object v41, v9, v0

    const/16 v0, 0x1b

    aput-object v34, v9, v0

    const/16 v0, 0x1c

    aput-object v35, v9, v0

    const/16 v0, 0x1d

    aput-object v36, v9, v0

    const/16 v0, 0x1e

    aput-object v37, v9, v0

    const/16 v0, 0x1f

    aput-object v38, v9, v0

    const/16 v0, 0x20

    aput-object v39, v9, v0

    const/16 v0, 0x21

    aput-object v40, v9, v0

    const/16 v0, 0x22

    aput-object v43, v9, v0

    const/16 v0, 0x23

    aput-object v52, v9, v0

    const/16 v0, 0x24

    aput-object v51, v9, v0

    const/16 v0, 0x25

    aput-object v44, v9, v0

    const/16 v0, 0x26

    aput-object v45, v9, v0

    const/16 v0, 0x27

    aput-object v46, v9, v0

    const/16 v0, 0x28

    aput-object v47, v9, v0

    const/16 v0, 0x29

    aput-object v48, v9, v0

    const/16 v0, 0x2a

    aput-object v49, v9, v0

    const/16 v0, 0x2b

    aput-object v50, v9, v0

    const/16 v0, 0x2c

    aput-object v53, v9, v0

    const/16 v0, 0x2d

    aput-object v54, v9, v0

    const/16 v0, 0x2e

    aput-object v62, v9, v0

    const/16 v0, 0x2f

    aput-object v55, v9, v0

    const/16 v0, 0x30

    aput-object v56, v9, v0

    const/16 v0, 0x31

    aput-object v57, v9, v0

    const/16 v0, 0x32

    aput-object v58, v9, v0

    const/16 v0, 0x33

    aput-object v59, v9, v0

    const/16 v0, 0x34

    aput-object v60, v9, v0

    const/16 v0, 0x35

    aput-object v61, v9, v0

    const/16 v0, 0x36

    aput-object v63, v9, v0

    const/16 v0, 0x37

    aput-object v64, v9, v0

    const/16 v0, 0x38

    aput-object v72, v9, v0

    const/16 v0, 0x39

    aput-object v65, v9, v0

    const/16 v0, 0x3a

    aput-object v66, v9, v0

    const/16 v0, 0x3b

    aput-object v10, v9, v0

    .line 31
    sput-object v9, Lcom/cisco/android/nchs/support/NCSSOpcode;->$VALUES:[Lcom/cisco/android/nchs/support/NCSSOpcode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z[",
            "Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 137
    iput-byte p1, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mCode:B

    .line 138
    iput-object p4, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mName:Ljava/lang/String;

    .line 139
    iput-boolean p5, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mDisconnect:Z

    .line 140
    iput-object p6, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mArgs:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    return-void
.end method

.method public static getByCode(B)Lcom/cisco/android/nchs/support/NCSSOpcode;
    .locals 5

    .line 235
    invoke-static {}, Lcom/cisco/android/nchs/support/NCSSOpcode;->values()[Lcom/cisco/android/nchs/support/NCSSOpcode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 237
    invoke-virtual {v3}, Lcom/cisco/android/nchs/support/NCSSOpcode;->getCode()B

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_1
    sget-object p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->ERROR:Lcom/cisco/android/nchs/support/NCSSOpcode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/support/NCSSOpcode;
    .locals 1

    .line 31
    const-class v0, Lcom/cisco/android/nchs/support/NCSSOpcode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/support/NCSSOpcode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/support/NCSSOpcode;
    .locals 1

    .line 31
    sget-object v0, Lcom/cisco/android/nchs/support/NCSSOpcode;->$VALUES:[Lcom/cisco/android/nchs/support/NCSSOpcode;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/support/NCSSOpcode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/support/NCSSOpcode;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 150
    iget-byte v0, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mCode:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public shouldDisconnect()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mDisconnect:Z

    return v0
.end method

.method public validateArguments(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)Z"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mArgs:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v1, 0x1

    const-string v2, "NCSSOpcode"

    if-nez v0, :cond_0

    .line 184
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/NCSSOpcode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " skipping arg checking"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 188
    array-length v0, v0

    if-eqz v0, :cond_1

    .line 190
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/NCSSOpcode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " no arguments provided"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 194
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mArgs:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    array-length v4, v4

    if-eq v0, v4, :cond_2

    .line 196
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/NCSSOpcode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " different number of args got="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expected="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mArgs:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    const/4 v0, 0x0

    .line 200
    :goto_0
    iget-object v4, p0, Lcom/cisco/android/nchs/support/NCSSOpcode;->mArgs:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 202
    aget-object v4, v4, v0

    .line 203
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    .line 205
    invoke-virtual {v5}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getType()Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v6

    if-eq v4, v6, :cond_3

    .line 207
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/NCSSOpcode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " argument["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] got="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getType()Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", and expected="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public validateCode()Z
    .locals 1

    .line 223
    sget-object v0, Lcom/cisco/android/nchs/support/NCSSOpcode;->ERROR:Lcom/cisco/android/nchs/support/NCSSOpcode;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
