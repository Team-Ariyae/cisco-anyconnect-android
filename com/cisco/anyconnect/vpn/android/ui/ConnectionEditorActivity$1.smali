.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;
.super Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;
.source "ConnectionEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnectionUpdateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmSaveLock(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmSaveInProgress(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    monitor-exit p1

    return-void

    .line 108
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 108
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method synthetic lambda$ConnectionUpdateCB$0$com-cisco-anyconnect-vpn-android-ui-ConnectionEditorActivity$1()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->IsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ConnectionEditorActivity"

    const-string v2, "Connections were updated outside of our process, closing..."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->finish()V

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    const v1, 0x7f1100e3

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
