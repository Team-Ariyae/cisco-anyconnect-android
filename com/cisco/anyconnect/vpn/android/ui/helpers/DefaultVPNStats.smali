.class public final Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;
.super Lcom/cisco/anyconnect/vpn/jni/VPNStats;
.source "DefaultVPNStats.java"


# static fields
.field private static final TIME:Ljava/lang/String; = "00:00:00"

.field private static final ZERO:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/VPNStats;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->state:Ljava/lang/String;

    const-string v0, "00:00:00"

    .line 47
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->timeConnected:Ljava/lang/String;

    const-string v0, "0"

    .line 48
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->bytesSent:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->bytesReceived:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->packetsSent:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->packetsReceived:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->controlBytesSent:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->controlBytesReceived:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->controlPacketsSent:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->controlPacketsReceived:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->encryptedBytesSent:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->encryptedBytesReceived:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->encryptedPacketsSent:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->encryptedPacketsReceived:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->compressedBytesSent:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->compressedBytesReceived:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->compressedPacketsSent:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->compressedPacketsReceived:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->inboundDiscarded:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->outboundDiscarded:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->inboundBypassed:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->outboundBypassed:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->clientAddress:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->serverAddress:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->clientAddressV6:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->serverHostName:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->proxyAddress:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->proxyHostName:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->proxyPort:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->tunnelingMode:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->tunnelingModeV6:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->fipsMode:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;->trustedNetworkDetectionMode:Ljava/lang/String;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null value provided for empty string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
