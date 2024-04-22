.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;
.super Ljava/lang/Object;
.source "ConnectionPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;
.implements Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ConnectionPreferences"


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

.field private mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValues(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateConnectionFields(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->updateConnectionFields()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->listeners:Ljava/util/List;

    .line 59
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->SetConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V

    return-void
.end method

.method private setConnectionField(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "cert_auth_mode"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConnectionPreferences"

    if-eqz v0, :cond_2

    .line 109
    :try_start_0
    instance-of p1, p2, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    check-cast p2, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V

    goto/16 :goto_7

    .line 113
    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V

    goto/16 :goto_7

    .line 119
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Invalid type passed with certAuthMode type"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 125
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Could not convert CertAuthMode paramter"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v0, "name"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_4

    if-nez p2, :cond_3

    goto :goto_0

    .line 137
    :cond_3
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Invalid type passed for connection name"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 133
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetName(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    const-string v0, "host"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_7

    if-nez p2, :cond_6

    goto :goto_1

    .line 149
    :cond_6
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Invalid type passed for connection host"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 145
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetHost(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    const-string v0, "cert_name"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_a

    if-nez p2, :cond_9

    goto :goto_2

    .line 161
    :cond_9
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Invalid type passed for connection cert name"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 157
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertCommonName(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    const-string v0, "cert_hash"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 167
    instance-of p1, p2, [B

    if-nez p1, :cond_d

    if-nez p2, :cond_c

    goto :goto_3

    .line 173
    :cond_c
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Invalid type passed for connection cert hash"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 169
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    check-cast p2, [B

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertHash([B)V

    goto/16 :goto_7

    :cond_e
    const-string v0, "ipsec_active"

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 179
    instance-of p1, p2, Ljava/lang/Boolean;

    if-nez p1, :cond_10

    if-nez p2, :cond_f

    goto :goto_4

    .line 185
    :cond_f
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Invalid type passed for IsIPsecUsed"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 181
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIsIPsecUsed(Z)V

    goto/16 :goto_7

    :cond_11
    const-string v0, "ipsec_auth_mode"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 191
    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_13

    if-nez p2, :cond_12

    goto :goto_5

    .line 220
    :cond_12
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Invalid type passed for ipsec auth mode"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 193
    :cond_13
    :goto_5
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 195
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    .line 197
    :cond_14
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 199
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    .line 201
    :cond_15
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 203
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    .line 205
    :cond_16
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 207
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    .line 209
    :cond_17
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_RSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 211
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_RSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    .line 213
    :cond_18
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_ECDSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 215
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_ECDSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    goto :goto_7

    :cond_19
    const-string v0, "ike_identity"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 226
    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_1b

    if-nez p2, :cond_1a

    goto :goto_6

    .line 232
    :cond_1a
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Invalid type passed for ike identity"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 228
    :cond_1b
    :goto_6
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIKEIdentity(Ljava/lang/String;)V

    :cond_1c
    :goto_7
    const/4 p1, 0x1

    return p1
.end method

.method private updateConnectionFields()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->setConnectionField(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public GetBooleanProperty(Ljava/lang/String;Z)Z
    .locals 0

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public GetBytesProperty(Ljava/lang/String;[B)[B
    .locals 0

    .line 514
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->getBytes(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public GetStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 494
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetBooleanProperty(Ljava/lang/String;Z)Z
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->edit()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public SetBytesProperty(Ljava/lang/String;[B)Z
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->edit()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->putBytes(Ljava/lang/String;[B)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public SetConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V
    .locals 2

    .line 64
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    .line 67
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v0

    const-string v1, "cert_auth_mode"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "host"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertHash()[B

    move-result-object v0

    const-string v1, "cert_hash"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertCommonName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cert_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIsIPsecUsed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ipsec_active"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ipsec_auth_mode"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIKEIdentity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ike_identity"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v0

    const-string v1, "cert_summary"

    if-ne p1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertCommonName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public SetStringProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->edit()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->edit()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;
    .locals 1

    .line 339
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 356
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 358
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    return p2
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 436
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 438
    check-cast p1, [B

    return-object p1

    :cond_1
    return-object p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 376
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 378
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_1
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 396
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 398
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p2

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 416
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 418
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_1
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 456
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 458
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 464
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
