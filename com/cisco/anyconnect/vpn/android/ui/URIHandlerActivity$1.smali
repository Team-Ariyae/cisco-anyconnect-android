.class Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;
.super Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;
.source "URIHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public DeleteL10nDataCB(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "URIHandlerActivity"

    const-string v1, "ignoring unexpected DeleteL10nDataCB"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ImportServerL10nDataCB(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;Z)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public RestoreDefaultL10nDataCB(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "URIHandlerActivity"

    const-string v1, "ignoring unexpected ImportDefaultL10nDataCB"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
