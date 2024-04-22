.class public Lcom/cisco/android/nchs/support/VpnRevokedIPCBroadcastMessage;
.super Ljava/lang/Object;
.source "VpnRevokedIPCBroadcastMessage.java"

# interfaces
.implements Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageBytes()[B
    .locals 1

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 39
    invoke-static {v0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->convertArgumentMappingListToByteArray(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public getOpCode()Lcom/cisco/android/nchs/codes/BroadcastOpcode;
    .locals 1

    .line 44
    sget-object v0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->VPN_REVOKED_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    return-object v0
.end method
