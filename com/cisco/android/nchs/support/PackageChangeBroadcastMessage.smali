.class public Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage;
.super Ljava/lang/Object;
.source "PackageChangeBroadcastMessage.java"

# interfaces
.implements Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;
    }
.end annotation


# instance fields
.field private final mAddedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReplacedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage;->mAddedApps:Ljava/util/Set;

    .line 40
    iput-object p2, p0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage;->mRemovedApps:Ljava/util/Set;

    .line 41
    iput-object p3, p0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage;->mReplacedApps:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getMessageBytes()[B
    .locals 6

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage;->mAddedApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    .line 50
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v5, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->Add:Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    invoke-virtual {v5}, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object v5, v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget v2, v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage;->mRemovedApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    .line 57
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v5, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->Remove:Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    invoke-virtual {v5}, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object v5, v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget v2, v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage;->mReplacedApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    .line 64
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v5, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->Replace:Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    invoke-virtual {v5}, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object v5, v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget v2, v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 69
    :cond_2
    invoke-static {v0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->convertArgumentMappingListToByteArray(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public getOpCode()Lcom/cisco/android/nchs/codes/BroadcastOpcode;
    .locals 1

    .line 74
    sget-object v0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->PACKAGE_CHANGE_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    return-object v0
.end method
