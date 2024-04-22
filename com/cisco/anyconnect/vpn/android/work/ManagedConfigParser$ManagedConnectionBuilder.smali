.class Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;
.super Ljava/lang/Object;
.source "ManagedConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagedConnectionBuilder"
.end annotation


# instance fields
.field private mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

.field public mIsActive:Z

.field private mIsValid:Z

.field public mKeychainAlias:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mIsValid:Z

    .line 70
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-direct {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;-><init>()V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 71
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Android_Work:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetType(Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 76
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mIsValid:Z

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object p1, p2

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetName(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetHost(Ljava/lang/String;)V

    return-void
.end method

.method private generateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (Managed)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method build()Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mIsValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;-><init>()V

    .line 156
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mIsActive:Z

    iput-boolean v1, v0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;->isActive:Z

    .line 157
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mKeychainAlias:Ljava/lang/String;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;->keychainAlias:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;->vpnConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-object v0
.end method

.method setActive(Z)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mIsActive:Z

    return-object p0
.end method

.method setAllowBypass(Z)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setIsBypassAllowed(Z)V

    return-object p0
.end method

.method setCert(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mKeychainAlias:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method setPerApp(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->parsePerappRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setTunnelApplications(Ljava/util/List;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setTunnelApplications(Ljava/util/List;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->parsePerappRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setDisallowedApplications(Ljava/util/List;)V

    goto :goto_1

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setDisallowedApplications(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method setProtocol(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;
    .locals 1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetConnectProtocolType(Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->fromString(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetConnectProtocolType(Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;)V

    :goto_0
    if-nez p2, :cond_1

    .line 115
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    goto :goto_1

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->fromString(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    .line 120
    :goto_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIKEIdentity(Ljava/lang/String;)V

    return-object p0
.end method

.method setYubikeySlot(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->getEnum(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetYubikeySlot(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
