.class public Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;
.super Ljava/lang/Object;
.source "ConnectivityIPCBroadcastMessage.java"

# interfaces
.implements Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ConnectivityIPCBroadcastMessage"

.field private static final NETWORK_INFO_STRUCT_SIZE:I = 0x13


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mOpcode:Lcom/cisco/android/nchs/codes/BroadcastOpcode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mIntent:Landroid/content/Intent;

    .line 58
    sget-object p2, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->NETWORK_CONNECTIVITY_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    iput-object p2, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mOpcode:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    .line 59
    iput-object p1, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mContext:Landroid/content/Context;

    .line 61
    iget-object p1, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mIntent:Landroid/content/Intent;

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null or unexpected intent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private convertNetworkInfoToArgumentMapping(Landroid/net/NetworkInfo;)Lcom/cisco/android/nchs/ipc/ArgumentMapping;
    .locals 2

    const/16 v0, 0x13

    .line 159
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 168
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public getMessageBytes()[B
    .locals 6

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :try_start_0
    new-instance v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object v3, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mIntent:Landroid/content/Intent;

    const-string v4, "noConnectivity"

    const/4 v5, 0x0

    .line 105
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object v3, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mIntent:Landroid/content/Intent;

    const-string v4, "isFailover"

    .line 108
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mIntent:Landroid/content/Intent;

    const-string v2, "reason"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Not Available"

    if-nez v1, :cond_0

    move-object v1, v2

    .line 116
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mIntent:Landroid/content/Intent;

    const-string v4, "extraInfo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 122
    :goto_0
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {v3, v4, v1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {v1, v3, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 134
    new-instance v2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    array-length v2, v1

    :goto_1
    if-ge v5, v2, :cond_2

    aget-object v3, v1, v5

    .line 138
    invoke-direct {p0, v3}, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->convertNetworkInfoToArgumentMapping(Landroid/net/NetworkInfo;)Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 148
    :cond_2
    invoke-static {v0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->convertArgumentMappingListToByteArray(Ljava/util/List;)[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ConnectivityIPCBroadcastMessage"

    const-string v3, "Unexpected IllegalArgumentException"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpCode()Lcom/cisco/android/nchs/codes/BroadcastOpcode;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;->mOpcode:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    return-object v0
.end method
