.class public Lcom/cisco/anyconnect/vpn/jni/VPNStats;
.super Ljava/lang/Object;
.source "VPNStats.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public blockedApps:[Ljava/lang/String;

.field public bytesReceived:Ljava/lang/String;

.field public bytesSent:Ljava/lang/String;

.field public clientAddress:Ljava/lang/String;

.field public clientAddressV6:Ljava/lang/String;

.field public compressedBytesReceived:Ljava/lang/String;

.field public compressedBytesSent:Ljava/lang/String;

.field public compressedPacketsReceived:Ljava/lang/String;

.field public compressedPacketsSent:Ljava/lang/String;

.field public controlBytesReceived:Ljava/lang/String;

.field public controlBytesSent:Ljava/lang/String;

.field public controlPacketsReceived:Ljava/lang/String;

.field public controlPacketsSent:Ljava/lang/String;

.field public disable:Ljava/lang/String;

.field public dynamicTunnelExclusion:Ljava/lang/String;

.field public dynamicTunnelInclusion:Ljava/lang/String;

.field public enable:Ljava/lang/String;

.field public encryptedBytesReceived:Ljava/lang/String;

.field public encryptedBytesSent:Ljava/lang/String;

.field public encryptedPacketsReceived:Ljava/lang/String;

.field public encryptedPacketsSent:Ljava/lang/String;

.field public fipsMode:Ljava/lang/String;

.field public inboundBypassed:Ljava/lang/String;

.field public inboundDiscarded:Ljava/lang/String;

.field public nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

.field public outboundBypassed:Ljava/lang/String;

.field public outboundDiscarded:Ljava/lang/String;

.field public packetsReceived:Ljava/lang/String;

.field public packetsSent:Ljava/lang/String;

.field public protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

.field public proxyAddress:Ljava/lang/String;

.field public proxyHostName:Ljava/lang/String;

.field public proxyPort:Ljava/lang/String;

.field public secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

.field public serverAddress:Ljava/lang/String;

.field public serverHostName:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public timeConnected:Ljava/lang/String;

.field public trustedNetworkDetectionMode:Ljava/lang/String;

.field public tunneledApps:[Ljava/lang/String;

.field public tunnelingMode:Ljava/lang/String;

.field public tunnelingModeV6:Ljava/lang/String;

.field public unconfirmed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasProtocolInfo()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
