.class Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$4;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "LocalizationManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Landroid/content/Context;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 3

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->-$$Nest$fgetmImportListener(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z

    .line 359
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->-$$Nest$mpopulateLocaleList(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)V

    .line 361
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->-$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "LocalizationManagmentActivity"

    const-string v2, "Unexpected RemoteException"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 1

    .line 374
    :try_start_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->-$$Nest$fgetmImportListener(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "LocalizationManagmentActivity"

    const-string v0, "Unexpected RemoteException"

    invoke-static {p2, p3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
