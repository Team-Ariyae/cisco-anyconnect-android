.class Lcom/cisco/android/nchs/NetworkComponentHostService$1;
.super Landroid/os/Handler;
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

    .line 182
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$1;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 188
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Certificate operation timed out."

    const-string v1, "NetworkComponentHostService"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$1;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 194
    :try_start_0
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$1;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    move-result-object p1

    new-instance v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    sget-object v3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_TIMED_OUT:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-direct {v2, v3}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-interface {p1, v2, v3, v0}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB;->OnImportCompleted(Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "OnImportCompleted failed."

    invoke-static {v2, v1, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$1;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p1, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fputmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 204
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_2

    .line 207
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$1;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mshouldDisplayIcon(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "starting foreground for NCHS"

    .line 209
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$1;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    const/16 v0, 0x115b

    invoke-static {p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmStateNotification(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startForeground(ILandroid/app/Notification;)V

    .line 211
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$1;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p1, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fputmNotificationVisible(Lcom/cisco/android/nchs/NetworkComponentHostService;Z)V

    :cond_2
    :goto_1
    return-void
.end method
