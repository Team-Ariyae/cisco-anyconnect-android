.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$2;
.super Landroid/os/Handler;
.source "VpnFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x1

    .line 146
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_0

    .line 147
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnFragment"

    const-string v1, "abnormally long component setup time exceeded, showing popup"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$2$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$handleMessage$0$com-cisco-anyconnect-vpn-android-ui-VpnFragment$2()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mshowProgressIndicator(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    return-void
.end method
