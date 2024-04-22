.class public Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;
.super Lcom/cisco/anyconnect/vpn/jni/VPNStats;
.source "VPNStatsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/VPNStats;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/VPNStats;-><init>()V

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->state:Ljava/lang/String;

    .line 148
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->timeConnected:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->timeConnected:Ljava/lang/String;

    .line 149
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->bytesSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->bytesSent:Ljava/lang/String;

    .line 150
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->bytesReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->bytesReceived:Ljava/lang/String;

    .line 151
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->packetsSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->packetsSent:Ljava/lang/String;

    .line 152
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->packetsReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->packetsReceived:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlBytesSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlBytesSent:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlBytesReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlBytesReceived:Ljava/lang/String;

    .line 155
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlPacketsSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlPacketsSent:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlPacketsReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlPacketsReceived:Ljava/lang/String;

    .line 157
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedBytesSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedBytesSent:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedBytesReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedBytesReceived:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedPacketsSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedPacketsSent:Ljava/lang/String;

    .line 160
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->encryptedPacketsReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedPacketsReceived:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedBytesSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedBytesSent:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedBytesReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedBytesReceived:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedPacketsSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedPacketsSent:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->compressedPacketsReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedPacketsReceived:Ljava/lang/String;

    .line 165
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->inboundDiscarded:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->inboundDiscarded:Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->outboundDiscarded:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->outboundDiscarded:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->inboundBypassed:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->inboundBypassed:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->outboundBypassed:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->outboundBypassed:Ljava/lang/String;

    .line 169
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->clientAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->clientAddress:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->serverAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->serverAddress:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->clientAddressV6:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->clientAddressV6:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->serverHostName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->serverHostName:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->proxyAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->proxyAddress:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->proxyHostName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->proxyHostName:Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->proxyPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->proxyPort:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunnelingMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->tunnelingMode:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunnelingModeV6:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->tunnelingModeV6:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->fipsMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->fipsMode:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->trustedNetworkDetectionMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->trustedNetworkDetectionMode:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 181
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 182
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    :cond_0
    return-void
.end method

.method private parcelProtocolInfoArray(Landroid/os/Parcel;[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 126
    array-length v1, p2

    if-eqz v1, :cond_1

    .line 128
    array-length v1, p2

    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    new-array v2, v1, [Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 133
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;

    aget-object v4, p2, v0

    invoke-direct {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method

.method private parcelRouteInfoArray(Landroid/os/Parcel;[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 107
    array-length v1, p2

    if-eqz v1, :cond_1

    .line 109
    array-length v1, p2

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    new-array v2, v1, [Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 114
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;

    aget-object v4, p2, v0

    invoke-direct {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->state:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->timeConnected:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->bytesSent:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->bytesReceived:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->packetsSent:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->packetsReceived:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlBytesSent:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlBytesReceived:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlPacketsSent:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlPacketsReceived:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedBytesSent:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedBytesReceived:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedPacketsSent:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedPacketsReceived:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedBytesSent:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedBytesReceived:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedPacketsSent:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedPacketsReceived:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->inboundDiscarded:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->outboundDiscarded:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->inboundBypassed:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->outboundBypassed:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->clientAddress:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->serverAddress:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->clientAddressV6:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->serverHostName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->proxyAddress:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->proxyHostName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->proxyPort:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->tunnelingMode:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->tunnelingModeV6:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->fipsMode:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->trustedNetworkDetectionMode:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->unparcelRouteInfoArray(Landroid/os/Parcel;)[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 69
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->unparcelRouteInfoArray(Landroid/os/Parcel;)[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 70
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->unparcelProtocolInfoArray(Landroid/os/Parcel;)[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    return-void
.end method

.method private unparcelProtocolInfoArray(Landroid/os/Parcel;)[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;
    .locals 3

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    new-array v1, v0, [Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    if-lez v0, :cond_0

    .line 95
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 96
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 98
    aget-object v2, p1, v0

    check-cast v2, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private unparcelRouteInfoArray(Landroid/os/Parcel;)[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;
    .locals 3

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    new-array v1, v0, [Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    if-lez v0, :cond_0

    .line 79
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 80
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 82
    aget-object v2, p1, v0

    check-cast v2, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 209
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->timeConnected:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->bytesSent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->bytesReceived:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->packetsSent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->packetsReceived:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlBytesSent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlBytesReceived:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlPacketsSent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->controlPacketsReceived:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedBytesSent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedBytesReceived:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedPacketsSent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->encryptedPacketsReceived:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedBytesSent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedBytesReceived:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedPacketsSent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->compressedPacketsReceived:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->inboundDiscarded:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->outboundDiscarded:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->inboundBypassed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->outboundBypassed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->clientAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->serverAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->clientAddressV6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->serverHostName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->proxyAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->proxyHostName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->proxyPort:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->tunnelingMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->tunnelingModeV6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->fipsMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->trustedNetworkDetectionMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->parcelRouteInfoArray(Landroid/os/Parcel;[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)V

    .line 244
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->parcelRouteInfoArray(Landroid/os/Parcel;[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)V

    .line 245
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->parcelProtocolInfoArray(Landroid/os/Parcel;[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;)V

    return-void
.end method
