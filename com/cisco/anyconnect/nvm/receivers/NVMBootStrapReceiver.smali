.class public Lcom/cisco/anyconnect/nvm/receivers/NVMBootStrapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NVMBootStrapReceiver.java"


# instance fields
.field private final ENTITY_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "NVMBootStrapReceiver"

    .line 26
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/receivers/NVMBootStrapReceiver;->ENTITY_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 31
    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isNPAEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0xea60

    const/16 v0, 0x3eb

    .line 32
    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->schedulePeriodicJob(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x3ea

    .line 34
    invoke-static {p1, p2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cancelJob(Landroid/content/Context;I)V

    .line 35
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p2, "NVMBootStrapReceiver"

    const-string v0, "Samsung NPA is not available. NVM service will not start"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
