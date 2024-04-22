.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$2;
.super Ljava/lang/Object;
.source "CertificateManagementActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 196
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->-$$Nest$fputmNcss(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;)V

    .line 198
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->-$$Nest$mgetAdminCertsFromTag(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "CertificateManagementActivity"

    const-string v1, "Exception while calling getAdminCerts()"

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->-$$Nest$fputmNcss(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;)V

    return-void
.end method
