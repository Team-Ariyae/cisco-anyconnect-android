.class Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$5;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "ProfileManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Landroid/content/Context;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 2

    const-string v0, "ProfileManagmentActivity"

    const-string v1, "ServiceConnectionManager.OnServiceConnected"

    .line 309
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 312
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$mgetProfileContents(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 0

    const-string p1, "ProfileManagmentActivity"

    const-string p2, "OnServiceWillDisconnect"

    .line 318
    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
