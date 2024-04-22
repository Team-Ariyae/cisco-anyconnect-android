.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;
.super Ljava/lang/Object;
.source "KnoxJsonConnectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;
    }
.end annotation


# static fields
.field public static final AnyConnectVPNConnection:Ljava/lang/String; = "AnyConnectVPNConnection"

.field public static final Authentication:Ljava/lang/String; = "authentication"

.field public static final CCMCERTALIAS:Ljava/lang/String; = "ccmcertalias"

.field public static final CERTALIAS:Ljava/lang/String; = "certalias"

.field public static final CertCommonName:Ljava/lang/String; = "certcommonname"

.field private static final ENTITY_NAME:Ljava/lang/String; = "KnoxJsonConnectionProfile"

.field public static final Host:Ljava/lang/String; = "host"

.field public static final Ike_Identity:Ljava/lang/String; = "ike-identity"

.field public static final KNOX_META_ATTRIBUTE:Ljava/lang/String; = "uidpid_search_enabled"

.field public static final KNOX_META_ENABLED:I = 0x1

.field public static final KNOX_SECTION:Ljava/lang/String; = "knox"

.field public static final KNOX_VPN_PARAMETERS:Ljava/lang/String; = "KNOX_VPN_PARAMETERS"

.field public static final KNOX_VPN_ROUTE_TYPE_APP_TUNNEL:I = 0x1

.field public static final KNOX_VPN_ROUTE_TYPE_SYSTEM:I = 0x0

.field public static final PROFILE_ATTRIBUTE:Ljava/lang/String; = "profile_attribute"

.field public static final PROFILE_NAME:Ljava/lang/String; = "profileName"

.field public static final UseCert:Ljava/lang/String; = "usecert"

.field public static final UserGroup:Ljava/lang/String; = "usergroup"

.field public static final VENDOR:Ljava/lang/String; = "vendor"

.field public static final VPN_ROUTE_TYPE:Ljava/lang/String; = "vpn_route_type"

.field public static final VPN_ROUTE_TYPE_PERAPP:I = 0x1

.field public static final VPN_ROUTE_TYPE_SYSTEM:I = 0x0

.field public static final VPN_TYPE:Ljava/lang/String; = "vpn_type"

.field public static final VPN_TYPE_IPSEC:Ljava/lang/String; = "ipsec"

.field public static final VPN_TYPE_SSL:Ljava/lang/String; = "ssl"


# instance fields
.field private mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

.field private mKnoxMetaEnabled:Z


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/HostEntry;Z)V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    .line 313
    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->mKnoxMetaEnabled:Z

    return-void
.end method


# virtual methods
.method public GetJsonProfile(I)Ljava/lang/String;
    .locals 7

    const-string v0, " (knox)"

    .line 268
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 269
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 270
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 273
    :try_start_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "profileName"

    if-eqz v4, :cond_0

    .line 275
    :try_start_1
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v6, v6, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string/jumbo v0, "vpn_type"

    .line 282
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->protocol:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    if-ne v4, v5, :cond_1

    const-string v4, "ipsec"

    goto :goto_1

    :cond_1
    const-string v4, "ssl"

    :goto_1
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "vpn_route_type"

    const/4 v4, 0x1

    .line 283
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "profile_attribute"

    .line 284
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0xb

    const-string v4, "knox"

    if-ne p1, v0, :cond_2

    :try_start_2
    const-string p1, "host"

    .line 288
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->host:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const-string/jumbo p1, "vendor"

    .line 295
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->getVendorJson(Lcom/cisco/anyconnect/vpn/jni/HostEntry;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->getKnoxJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    const-string p1, "KNOX_VPN_PARAMETERS"

    .line 299
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "Exception"

    .line 301
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getKnoxJson()Lorg/json/JSONObject;
    .locals 3

    .line 318
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "uidpid_search_enabled"

    .line 320
    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->mKnoxMetaEnabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Exception"

    .line 322
    invoke-static {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method getVendorJson(Lcom/cisco/anyconnect/vpn/jni/HostEntry;)Lorg/json/JSONObject;
    .locals 4

    .line 329
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 330
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "host"

    .line 333
    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->host:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->userGroup:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "usergroup"

    .line 336
    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->userGroup:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    :cond_0
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->protocol:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    if-ne v2, v3, :cond_7

    .line 340
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-ne v2, v3, :cond_1

    const-string v2, "EAP-AnyConnect"

    goto :goto_0

    .line 342
    :cond_1
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-ne v2, v3, :cond_2

    const-string v2, "EAP-GTC"

    goto :goto_0

    .line 344
    :cond_2
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-ne v2, v3, :cond_3

    const-string v2, "EAP-MD5"

    goto :goto_0

    .line 346
    :cond_3
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-ne v2, v3, :cond_4

    const-string v2, "EAP-MSCHAPv2"

    goto :goto_0

    .line 348
    :cond_4
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_RSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-ne v2, v3, :cond_5

    const-string v2, "IKE-RSA"

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    const-string v3, "authentication"

    .line 352
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-eq v2, v3, :cond_6

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-eq v2, v3, :cond_6

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-ne v2, v3, :cond_7

    .line 357
    :cond_6
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->ikeIdentity:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v2, "ike-identity"

    .line 358
    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->ikeIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    :cond_7
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certificateAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "usecert"

    const/4 v3, 0x1

    .line 364
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 365
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certCommonName:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, "certcommonname"

    .line 366
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certCommonName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const-string p1, "AnyConnectVPNConnection"

    .line 369
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "Exception"

    .line 371
    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method
