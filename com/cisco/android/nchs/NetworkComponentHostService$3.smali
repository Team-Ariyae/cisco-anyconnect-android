.class Lcom/cisco/android/nchs/NetworkComponentHostService$3;
.super Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;
.source "NetworkComponentHostService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {p0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public GetAllComponentInfo()[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mgetAllComponentInfo(Lcom/cisco/android/nchs/NetworkComponentHostService;Z)[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    move-result-object v0

    return-object v0
.end method

.method public GetNCHSState(Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    new-instance v0, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 432
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v3

    invoke-static {v2, v0, p1, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mgetNCHSState(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v1
.end method

.method public GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmNCSS(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;

    move-result-object v0

    return-object v0
.end method

.method public GetNativeServiceState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    new-instance v1, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 440
    new-instance v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mgetNativeServiceState(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v6
.end method

.method public GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    new-instance v1, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 353
    new-instance v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNetworkComponentProperty(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v6
.end method

.method public InstallNetworkComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/cisco/android/nchs/NetworkComponentHostService;->installNetworkComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v0
.end method

.method public IsDeviceInfoAvailable()Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misDeviceInfoAvailable(Lcom/cisco/android/nchs/NetworkComponentHostService;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_0
    invoke-direct {v0, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v0
.end method

.method public IsNativeServiceRunning(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    new-instance v0, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 367
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v3

    invoke-virtual {v2, v0, p1, p2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isNativeServiceRunning(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v1
.end method

.method public IsNetworkComponentInstalled(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    new-instance v0, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 374
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v3

    invoke-virtual {v2, v0, p1, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isNetworkComponentInstalled(Landroid/net/Credentials;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v1
.end method

.method public RegisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    new-instance v1, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 451
    new-instance v7, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    const-string v3, "shutdown"

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmShutdownListenerList(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v6

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mregisterListener(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v7
.end method

.method public SetDisplayNotifications(Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 7

    .line 414
    new-instance v1, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 415
    new-instance v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetDisplayNotifications(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v6
.end method

.method public SetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    new-instance v1, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 381
    new-instance v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->setNetworkComponentProperty(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v6
.end method

.method public SetUserPreference(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 2

    .line 420
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v1, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetUserPreference(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v0
.end method

.method public ShutdownService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    new-instance v0, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 463
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v3

    invoke-static {v2, v0, p1, p2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$minitiateShutdown(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v1
.end method

.method public StartNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    new-instance v0, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 388
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v3

    invoke-virtual {v2, v0, p1, p2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startNativeService(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v1
.end method

.method public StartVpnAgent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Starting VpnAgent"

    .line 473
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mbindVpnAgent(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to bind to VpnAgentService"

    .line 476
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmVpnAgentService(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;->startAgent()Z

    move-result v0

    return v0
.end method

.method public StopNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    new-instance v0, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 395
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v3

    invoke-virtual {v2, v0, p1, p2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopNativeService(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v1
.end method

.method public UninstallNetworkComponent(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    new-instance v0, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 402
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    const/4 v3, 0x1

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v4

    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->uninstallNetworkComponent(Landroid/net/Credentials;Ljava/lang/String;ZZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v1
.end method

.method public UnregisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    new-instance v1, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 457
    new-instance v7, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    const-string v3, "shutdown"

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmShutdownListenerList(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v6

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$munregisterListener(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v7
.end method

.method public UpdateComponentState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    new-instance v1, Landroid/net/Credentials;

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v2

    invoke-static {}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/net/Credentials;-><init>(III)V

    .line 409
    new-instance v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateComponentState(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v6
.end method
