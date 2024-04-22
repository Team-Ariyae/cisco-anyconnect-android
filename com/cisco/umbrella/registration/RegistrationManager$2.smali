.class Lcom/cisco/umbrella/registration/RegistrationManager$2;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/registration/RegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/registration/RegistrationManager;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/registration/RegistrationManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 75
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received intent in userIDReceiver::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-static {p1}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$700(Lcom/cisco/umbrella/registration/RegistrationManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;

    invoke-direct {v0, p0, p2}, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;-><init>(Lcom/cisco/umbrella/registration/RegistrationManager$2;Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
