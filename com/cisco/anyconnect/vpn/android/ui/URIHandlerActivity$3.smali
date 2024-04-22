.class Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;
.super Ljava/lang/Object;
.source "URIHandlerActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->completeCreate()V
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

    .line 380
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 383
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 385
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmNCHS(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p1

    if-nez p1, :cond_0

    .line 387
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "URIHandlerActivity"

    const-string v0, "failed to get NCHS interface."

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-virtual {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->isEulaAccepted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$mstartParseUri(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$mpromptEula(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 406
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "URIHandlerActivity"

    const-string v1, "lost NCHS service"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-virtual {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
