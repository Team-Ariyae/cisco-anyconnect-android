.class Lcom/cisco/umbrella/ui/UmbrellaFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "UmbrellaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/ui/UmbrellaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$4;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 366
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received Intent in Umbrella Fragment"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 368
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 371
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.cisco.umbrella.android.USER_DOMAINS_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.cisco.umbrella.android.UNMANAGED_REGISTRATION_FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.cisco.umbrella.android.USER_IDENTITY_GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 373
    :pswitch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Domains received from Umbrella Service : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "domains"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$4;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-static {p1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$300(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    goto :goto_1

    .line 382
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 383
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNMANAGED_REGISTRATION_FAILURE - get extras ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "FailureReason"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UserCancelledRegistration"

    .line 385
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 386
    iget-object p2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$4;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-static {p2, p1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$600(Lcom/cisco/umbrella/ui/UmbrellaFragment;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    :cond_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UNMANAGED_REGISTRATION_FAILURE - get extras is null"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 377
    :pswitch_2
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$4;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-static {p1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$200(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    .line 378
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$4;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-static {p1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$400(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    .line 379
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$4;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    sget p1, Lcom/cisco/umbrella/R$string;->umbrella_notification_identity_mesg:I

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/cisco/umbrella/R$drawable;->notify_attention:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$500(Lcom/cisco/umbrella/ui/UmbrellaFragment;Ljava/lang/String;IZZZ)V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x44d65fde -> :sswitch_2
        -0x125c4b9c -> :sswitch_1
        0x6c313eac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
