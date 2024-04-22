.class Lcom/cisco/umbrella/service/UmbrellaService$1;
.super Landroid/content/BroadcastReceiver;
.source "UmbrellaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/service/UmbrellaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/service/UmbrellaService;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/service/UmbrellaService;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    if-eqz p2, :cond_a

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 86
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/service/UmbrellaService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received intent in registration receiver::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "com.cisco.umbrella.android.UMBRELLA_AGENT_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "com.cisco.umbrella.android.REGISTRATION_SUCCESSFUL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "com.cisco.umbrella.android.NO_REGISTRATION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "com.cisco.umbrella.android.UMBRELLA_AGENT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "com.cisco.umbrella.android.USER_DOMAINS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "com.cisco.umbrella.android.UNMANAGED_REGISTRATION_SUCCESSFUL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "com.cisco.umbrella.android.UNMANAGED_REGISTRATION_FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "com.cisco.umbrella.android.REGISTRATION_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 94
    :pswitch_0
    sget-object p2, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v0, Lcom/cisco/umbrella/ui/states/ProtectionState;->OPEN:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-static {p2, v0}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)V

    .line 95
    invoke-static {v3}, Lcom/cisco/umbrella/ui/UIUpdater;->updateAgentAvailability(Z)V

    const-string v5, "com.cisco.anyconnect.vpn.android.VPN_SERVICE_START_INTENT"

    const-wide/32 v6, 0x1d4c0

    const-wide/32 v8, 0x1d4c0

    move-object v4, p1

    .line 96
    invoke-static/range {v4 .. v9}, Lcom/cisco/umbrella/util/ServiceHelper;->scheduleJob(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 97
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-virtual {p1}, Lcom/cisco/umbrella/service/UmbrellaService;->stopSelf()V

    goto/16 :goto_1

    .line 100
    :pswitch_1
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-static {p1, p2}, Lcom/cisco/umbrella/service/UmbrellaService;->access$100(Lcom/cisco/umbrella/service/UmbrellaService;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 106
    :pswitch_2
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-static {p1, p2}, Lcom/cisco/umbrella/service/UmbrellaService;->access$300(Lcom/cisco/umbrella/service/UmbrellaService;Landroid/content/Intent;)V

    .line 107
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-static {p2}, Lcom/cisco/umbrella/service/UmbrellaService;->access$400(Lcom/cisco/umbrella/service/UmbrellaService;)Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cisco/umbrella/registration/RegistrationData;->getRegisteredTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-static {p2}, Lcom/cisco/umbrella/service/UmbrellaService;->access$400(Lcom/cisco/umbrella/service/UmbrellaService;)Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cisco/umbrella/registration/RegistrationData;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p1, p2}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :pswitch_3
    invoke-static {v2}, Lcom/cisco/umbrella/ui/UIUpdater;->updateAgentAvailability(Z)V

    .line 91
    sget-object p1, Lcom/cisco/umbrella/ui/states/EncryptionState;->UNKNOWN:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object p2, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-static {p1, p2}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)V

    goto :goto_1

    :pswitch_4
    const-string v4, "com.cisco.anyconnect.vpn.android.VPN_SERVICE_START_INTENT"

    const-wide/32 v5, 0x1d4c0

    const-wide/32 v7, 0x1d4c0

    move-object v3, p1

    .line 110
    invoke-static/range {v3 .. v8}, Lcom/cisco/umbrella/util/ServiceHelper;->scheduleJob(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 111
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-static {p1}, Lcom/cisco/umbrella/service/UmbrellaService;->access$500(Lcom/cisco/umbrella/service/UmbrellaService;)V

    .line 112
    invoke-static {v2}, Lcom/cisco/umbrella/ui/UIUpdater;->updateAgentAvailability(Z)V

    .line 113
    sget-object p1, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object p2, Lcom/cisco/umbrella/ui/states/ProtectionState;->MISSING_DOMAINS:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-static {p1, p2}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)V

    goto :goto_1

    .line 116
    :pswitch_5
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/service/UmbrellaService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Begin the Umbrella service "

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-static {p1, p2}, Lcom/cisco/umbrella/service/UmbrellaService;->access$600(Lcom/cisco/umbrella/service/UmbrellaService;Landroid/content/Intent;)I

    goto :goto_1

    .line 120
    :pswitch_6
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-static {p1}, Lcom/cisco/umbrella/service/UmbrellaService;->access$700(Lcom/cisco/umbrella/service/UmbrellaService;)V

    goto :goto_1

    .line 123
    :pswitch_7
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-static {p1}, Lcom/cisco/umbrella/service/UmbrellaService;->access$800(Lcom/cisco/umbrella/service/UmbrellaService;)V

    goto :goto_1

    .line 103
    :pswitch_8
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService$1;->this$0:Lcom/cisco/umbrella/service/UmbrellaService;

    invoke-static {p1}, Lcom/cisco/umbrella/service/UmbrellaService;->access$200(Lcom/cisco/umbrella/service/UmbrellaService;)V

    :cond_a
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58f0b3c4 -> :sswitch_8
        -0x125c4b9c -> :sswitch_7
        -0xc067aa0 -> :sswitch_6
        0x31af1c32 -> :sswitch_5
        0x33281b73 -> :sswitch_4
        0x3cd632bb -> :sswitch_3
        0x3d561e1f -> :sswitch_2
        0x6c854319 -> :sswitch_1
        0x6e6047c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
