.class public Lcom/cisco/anyconnect/nvm/receivers/ApplicationUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationUpdateReceiver.java"


# instance fields
.field private final ENTITY_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ApplicationUpdateReceiver"

    .line 30
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/receivers/ApplicationUpdateReceiver;->ENTITY_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 34
    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isNPAEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received BROADCAST :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplicationUpdateReceiver"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->migrateNVMFiles(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 39
    sget-object p2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "Migrate Failed"

    invoke-static {p2, v2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->startNVMService(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
