.class public Lcom/cisco/android/nchs/support/PublicNetworkChangeMessage;
.super Ljava/lang/Object;
.source "PublicNetworkChangeMessage.java"

# interfaces
.implements Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;


# instance fields
.field private mTransition:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/cisco/android/nchs/support/PublicNetworkChangeMessage;->mTransition:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    return-void
.end method


# virtual methods
.method public getMessageBytes()[B
    .locals 4

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object v3, p0, Lcom/cisco/android/nchs/support/PublicNetworkChangeMessage;->mTransition:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {v0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->convertArgumentMappingListToByteArray(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public getOpCode()Lcom/cisco/android/nchs/codes/BroadcastOpcode;
    .locals 1

    .line 27
    sget-object v0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->PUBLIC_NETWORK_CHANGE_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    return-object v0
.end method
