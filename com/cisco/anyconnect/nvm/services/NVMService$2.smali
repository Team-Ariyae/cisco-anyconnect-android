.class Lcom/cisco/anyconnect/nvm/services/NVMService$2;
.super Ljava/lang/Object;
.source "NVMService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/services/NVMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/nvm/services/NVMService;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$2;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 363
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$2;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$502(Lcom/cisco/anyconnect/nvm/services/NVMService;Z)Z

    .line 364
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p2, "NVMService"

    const-string v0, "Connected to NCHS service"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 357
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$2;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$502(Lcom/cisco/anyconnect/nvm/services/NVMService;Z)Z

    .line 358
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "NVMService"

    const-string v1, "NCHS disconnected"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
