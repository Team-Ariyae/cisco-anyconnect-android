.class Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;
.super Ljava/lang/Object;
.source "NativeComponentInstaller.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "onServiceConnected"

    const-string v0, "NativeComponentInstaller"

    .line 69
    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$fputmNCHService(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 71
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$fgetmNCHService(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p1

    if-nez p1, :cond_0

    .line 73
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Stub.asInterface() failed."

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    return-void

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$minstallNativeComponents(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    move-result-object p1

    .line 81
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ASYNC_COMPLETION:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    if-ne p2, p1, :cond_1

    .line 83
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Install completing asynchronously by InstallNativeComponentTask."

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->DEVICE_NOT_SUPPORTED:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    if-ne p2, p1, :cond_2

    .line 87
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Device not supported."

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {p2, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    return-void

    .line 91
    :cond_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->DEVICE_INFO_NOT_AVAILABLE:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    if-ne p2, p1, :cond_3

    .line 93
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "No device info available"

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {p2, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    return-void

    .line 97
    :cond_3
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR_ACCESS_DATA:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    if-ne p2, p1, :cond_4

    .line 99
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Cannot access app data."

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-static {p2, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    return-void

    .line 105
    :cond_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Failed to install native component."

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "NativeComponentInstaller"

    const-string v0, "onServiceDisconnected"

    .line 115
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$fputmNCHService(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 117
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->-$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    return-void
.end method
