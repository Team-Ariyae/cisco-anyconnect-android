.class Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;
.super Landroid/os/AsyncTask;
.source "NativeComponentInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallNativeComponentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;
    .locals 7

    const-string v0, "Remote Exception occurred in NCHS aidl call."

    const-string v1, "Set native component version: "

    .line 415
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Installing AnyConnect native components"

    const-string v4, "NativeComponentInstaller"

    invoke-static {v2, v4, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 416
    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 418
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Invalid number of arguments"

    invoke-static {p1, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 423
    aget-object v2, p1, v2

    const/4 v3, 0x1

    .line 424
    aget-object p1, p1, v3

    .line 427
    :try_start_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$fgetmNCHService(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v3

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 430
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 427
    invoke-interface {v3, v5, v2, p1, v6}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->InstallNetworkComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 430
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 438
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Device not supported."

    invoke-static {p1, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->DEVICE_NOT_SUPPORTED:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object p1

    .line 444
    :cond_1
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_TIMED_OUT:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "InstallNetworkComponent timed out."

    invoke-static {p1, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR_TIMED_OUT:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object p1

    .line 449
    :cond_2
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 451
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InstallNetworkComponent failed. NCHSReturnCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object p1

    .line 459
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11010d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 460
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$fgetmNCHService(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v1

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "vpnagentver"

    invoke-interface {v1, v3, v5, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 472
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Invalid string id."

    invoke-static {v1, v4, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    :goto_0
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 476
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object p1

    .line 479
    :cond_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object p1

    :catch_1
    move-exception p1

    .line 467
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v4, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object p1

    :catch_2
    move-exception p1

    .line 434
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v4, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 411
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->doInBackground([Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V
    .locals 3

    .line 484
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$2;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$NativeComponentInstaller$ReturnCode:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "NativeComponentInstaller"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 500
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Failed to install native component."

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    goto :goto_0

    .line 495
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Operation timed out"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    goto :goto_0

    .line 491
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Device not supported."

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    goto :goto_0

    .line 487
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Successfully installed native components."

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 411
    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->onPostExecute(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    return-void
.end method
