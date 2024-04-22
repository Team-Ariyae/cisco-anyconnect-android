.class Lcom/cisco/android/nchs/support/ics/ICSSupportService$3;
.super Ljava/lang/Object;
.source "ICSSupportService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/ics/ICSSupportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$3;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "ICSSupportService"

    const-string v0, "failed to register shutdown listener: "

    .line 518
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$3;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmNCHS(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 521
    :try_start_0
    iget-object p2, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$3;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {p2}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmNCHS(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$3;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$3;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v2}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmNchsShutdownListener(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->RegisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    .line 522
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, p2, :cond_0

    .line 524
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 529
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RegisterShutdownListener failed"

    invoke-static {v0, p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 535
    iget-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$3;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmNCHS(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    return-void
.end method
