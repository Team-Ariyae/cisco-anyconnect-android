.class public Lcom/cisco/umbrella/EDNSData;
.super Ljava/lang/Object;
.source "EDNSData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EDNSData"


# instance fields
.field private final EDATA:Ljava/lang/String;

.field private data:[B

.field private final deviceIdType:[B

.field private gsuiteData:[B

.field private final gsuiteType:[B

.field private final ipV4Type:[B

.field private final openDNS:[B

.field private final orgIdType:[B

.field private final registrationData:Lcom/cisco/umbrella/registration/RegistrationData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/cisco/umbrella/registration/RegistrationData;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OpenDNS"

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/EDNSData;->openDNS:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 38
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/cisco/umbrella/EDNSData;->orgIdType:[B

    new-array v1, v0, [B

    .line 39
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/cisco/umbrella/EDNSData;->ipV4Type:[B

    new-array v1, v0, [B

    .line 40
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/cisco/umbrella/EDNSData;->deviceIdType:[B

    new-array v0, v0, [B

    .line 41
    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/cisco/umbrella/EDNSData;->gsuiteType:[B

    const-string v0, "000029100000000000"

    .line 44
    iput-object v0, p0, Lcom/cisco/umbrella/EDNSData;->EDATA:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/cisco/umbrella/EDNSData;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    .line 52
    invoke-direct {p0}, Lcom/cisco/umbrella/EDNSData;->init()V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x10t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x40t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method private createEDNS()V
    .locals 11

    .line 107
    iget-object v0, p0, Lcom/cisco/umbrella/EDNSData;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationData;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/umbrella/util/Helper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [[B

    const/4 v3, 0x4

    new-array v4, v3, [B

    .line 108
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/cisco/umbrella/EDNSData;->openDNS:[B

    const/4 v6, 0x1

    aput-object v4, v2, v6

    const/4 v4, 0x2

    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/cisco/umbrella/util/Helper;->mergeArrays([[B)[B

    move-result-object v2

    .line 113
    invoke-static {v6}, Lcom/cisco/umbrella/network/NetworkUtils;->getIPAddressArray(Z)[B

    move-result-object v7

    .line 114
    array-length v8, v7

    if-ne v8, v3, :cond_0

    .line 115
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v9, Lcom/cisco/umbrella/EDNSData;->TAG:Ljava/lang/String;

    const-string v10, "Appending IPv4 Addr to EDNS"

    invoke-static {v8, v9, v10}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x9

    new-array v8, v8, [[B

    aput-object v2, v8, v5

    new-array v2, v3, [B

    .line 116
    fill-array-data v2, :array_1

    aput-object v2, v8, v6

    const/4 v2, 0x6

    new-array v9, v2, [B

    fill-array-data v9, :array_2

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/cisco/umbrella/EDNSData;->orgIdType:[B

    aput-object v9, v8, v1

    .line 119
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v9, p0, Lcom/cisco/umbrella/EDNSData;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v9}, Lcom/cisco/umbrella/registration/RegistrationData;->getOrganizationId()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    aput-object v1, v8, v3

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/cisco/umbrella/EDNSData;->ipV4Type:[B

    aput-object v3, v8, v1

    aput-object v7, v8, v2

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/cisco/umbrella/EDNSData;->deviceIdType:[B

    aput-object v2, v8, v1

    const/16 v1, 0x8

    aput-object v0, v8, v1

    .line 116
    invoke-static {v8}, Lcom/cisco/umbrella/util/Helper;->mergeArrays([[B)[B

    move-result-object v2

    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    .line 124
    array-length v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "%4s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/umbrella/EDNSData;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dlength  length ::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v3, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v4, [[B

    .line 126
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "000029100000000000"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v0

    aput-object v0, v1, v5

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/cisco/umbrella/util/Helper;->mergeArrays([[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/EDNSData;->data:[B

    return-void

    :array_0
    .array-data 1
        0x69t
        0x42t
        0x0t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x44t
        0x0t
        0x1ct
    .end array-data

    :array_2
    .array-data 1
        0x4ft
        0x44t
        0x4et
        0x53t
        0x1t
        0x0t
    .end array-data
.end method

.method private createEDNSGSuite()V
    .locals 11

    .line 131
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/EDNSData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "User id is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/umbrella/EDNSData;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v3}, Lcom/cisco/umbrella/registration/RegistrationData;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/cisco/umbrella/EDNSData;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationData;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/umbrella/util/Helper;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/umbrella/util/Helper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [[B

    const/4 v3, 0x2

    new-array v4, v3, [B

    .line 133
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [B

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    const/4 v4, 0x6

    new-array v7, v4, [B

    fill-array-data v7, :array_2

    aput-object v7, v2, v3

    iget-object v7, p0, Lcom/cisco/umbrella/EDNSData;->orgIdType:[B

    const/4 v8, 0x3

    aput-object v7, v2, v8

    const/4 v7, 0x4

    .line 137
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v10, p0, Lcom/cisco/umbrella/EDNSData;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v10}, Lcom/cisco/umbrella/registration/RegistrationData;->getOrganizationId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    aput-object v9, v2, v7

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/cisco/umbrella/EDNSData;->gsuiteType:[B

    aput-object v10, v2, v9

    aput-object v0, v2, v4

    .line 133
    invoke-static {v2}, Lcom/cisco/umbrella/util/Helper;->mergeArrays([[B)[B

    move-result-object v0

    .line 140
    invoke-static {v6}, Lcom/cisco/umbrella/network/NetworkUtils;->getIPAddressArray(Z)[B

    move-result-object v2

    .line 141
    array-length v4, v2

    if-ne v4, v7, :cond_0

    .line 142
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "Appending IPv4 Addr to G-Suite EDNS"

    invoke-static {v4, v1, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v8, [[B

    aput-object v0, v4, v5

    .line 143
    iget-object v0, p0, Lcom/cisco/umbrella/EDNSData;->ipV4Type:[B

    aput-object v0, v4, v6

    aput-object v2, v4, v3

    invoke-static {v4}, Lcom/cisco/umbrella/util/Helper;->mergeArrays([[B)[B

    move-result-object v0

    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    .line 147
    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "%4s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x20

    const/16 v7, 0x30

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 148
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dlength  length ::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v1, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [[B

    .line 149
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "000029100000000000"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/cisco/umbrella/util/Helper;->mergeArrays([[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/EDNSData;->gsuiteData:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x24t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4ft
        0x44t
        0x4et
        0x53t
        0x1t
        0x0t
    .end array-data
.end method

.method private init()V
    .locals 3

    .line 56
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/EDNSData;->TAG:Ljava/lang/String;

    const-string v2, "EDNSData init "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/cisco/umbrella/EDNSData;->createEDNSGSuite()V

    .line 102
    invoke-direct {p0}, Lcom/cisco/umbrella/EDNSData;->createEDNS()V

    return-void
.end method


# virtual methods
.method public appendEDNS(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 153
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/EDNSData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Raw DNS data :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cisco/umbrella/util/Helper;->byteBuffertoHex(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/cisco/umbrella/EDNSData;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 155
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/16 p1, 0xb

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 160
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isCros()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "umbrella_gsuite_flag"

    invoke-static {p1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/cisco/umbrella/EDNSData;->gsuiteData:[B

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object v0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/cisco/umbrella/EDNSData;->data:[B

    array-length v3, p1

    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 165
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EDNS data :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cisco/umbrella/util/Helper;->byteBuffertoHex(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
