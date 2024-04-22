.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;
.super Ljava/lang/Object;
.source "KnoxJsonConnectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxJsonParser"
.end annotation


# instance fields
.field private mCcmCertAlias:Ljava/lang/String;

.field private mCertAlias:Ljava/lang/String;

.field private mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

.field private mIsAppTunnel:Z

.field private mKnoxMetaEnabled:Z

.field private mKnoxProfileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "uidpid_search_enabled"

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mIsAppTunnel:Z

    .line 110
    new-instance v2, Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    invoke-direct {v2}, Lcom/cisco/anyconnect/vpn/jni/HostEntry;-><init>()V

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    const/4 v2, 0x0

    .line 112
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "KNOX_VPN_PARAMETERS"

    .line 113
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "profile_attribute"

    .line 114
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "profileName"

    .line 115
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mKnoxProfileName:Ljava/lang/String;

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mKnoxProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (knox)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iput-object v4, v5, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->name:Ljava/lang/String;

    const-string/jumbo v4, "vpn_type"

    .line 119
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ipsec"

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v5, v4, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->protocol:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    goto :goto_0

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v5, v4, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->protocol:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    :goto_0
    const-string/jumbo v4, "vpn_route_type"

    .line 128
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 129
    :goto_1
    iput-boolean v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mIsAppTunnel:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string/jumbo v4, "vendor"

    .line 134
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "AnyConnectVPNConnection"

    .line 135
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 136
    invoke-virtual {p0, v4}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->parseVendorJson(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 141
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    const-string v5, "host"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->host:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string v3, "knox"

    .line 147
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 148
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 149
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mKnoxMetaEnabled:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    return-void

    :catch_2
    move-exception p1

    .line 157
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "KnoxJsonConnectionProfile"

    const-string v3, "Parsing JSON Profile failed"

    invoke-static {v0, v1, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "JSON Parsing failure "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public GetHostEntry()Lcom/cisco/anyconnect/vpn/jni/HostEntry;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    return-object v0
.end method

.method public GetKnoxProfileName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mKnoxProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public IsKnoxMetaEnabled()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mKnoxMetaEnabled:Z

    return v0
.end method

.method public getCcmCertAlias()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mCcmCertAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getCertAlias()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mCertAlias:Ljava/lang/String;

    return-object v0
.end method

.method public isAppTunnel()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mIsAppTunnel:Z

    return v0
.end method

.method parseVendorJson(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "authentication"

    const-string v1, "ccmcertalias"

    const-string v2, "certalias"

    const-string/jumbo v3, "usergroup"

    const-string v4, "KnoxJsonConnectionProfile"

    :try_start_0
    const-string v5, "host"

    .line 195
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iput-object v5, v6, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->host:Ljava/lang/String;

    .line 198
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iput-object v3, v5, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->userGroup:Ljava/lang/String;

    .line 204
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mCertAlias:Ljava/lang/String;

    .line 209
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mCcmCertAlias:Ljava/lang/String;

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->protocol:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    if-ne v1, v2, :cond_6

    .line 216
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->fromString(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v0

    .line 220
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_UNKNOWN:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-ne v1, v0, :cond_3

    .line 222
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "JSON Parsing failure unknown IPsec authentication type defaulting to Ssl"

    invoke-static {v0, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->protocol:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    goto :goto_0

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iput-object v0, v1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-ne v0, v1, :cond_6

    :cond_4
    const-string v0, "ike-identity"

    .line 233
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iput-object v0, v1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->ikeIdentity:Ljava/lang/String;

    goto :goto_1

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    :cond_6
    :goto_1
    const-string/jumbo v0, "usecert"

    .line 242
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 245
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "setting cert auth to automatic"

    invoke-static {p1, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->mEntry:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certificateAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p1

    .line 257
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "JSON parsing failure"

    invoke-static {v0, v4, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON parsing failure "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
