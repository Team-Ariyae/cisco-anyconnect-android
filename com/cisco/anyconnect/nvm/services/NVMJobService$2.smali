.class Lcom/cisco/anyconnect/nvm/services/NVMJobService$2;
.super Ljava/lang/Object;
.source "NVMJobService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/services/NVMJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/nvm/services/NVMJobService;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$2;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 148
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p2, "NVMJobService"

    const-string v0, "Service connected"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$2;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->access$002(Lcom/cisco/anyconnect/nvm/services/NVMJobService;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 142
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "NVMJobService"

    const-string v1, "Service disconnected"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$2;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->access$002(Lcom/cisco/anyconnect/nvm/services/NVMJobService;Z)Z

    return-void
.end method
