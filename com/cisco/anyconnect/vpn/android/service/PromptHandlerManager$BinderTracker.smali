.class Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;
.super Landroid/os/RemoteCallbackList;
.source "PromptHandlerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderTracker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;->this$0:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;-><init>(Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;)V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/os/IInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "PromptHandlerManager"

    const-string v2, "prompt handler died :-("

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    .line 35
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;->this$0:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->-$$Nest$mremoveFromStack(Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    return-void
.end method
