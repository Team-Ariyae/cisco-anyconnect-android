.class final Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;
.super Ljava/lang/Object;
.source "PromptHandlerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$IPromptHandlerManagerCB;,
        Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "PromptHandlerManager"


# instance fields
.field private mBinderTracker:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker<",
            "Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$IPromptHandlerManagerCB;

.field private final mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mremoveFromStack(Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->removeFromStack(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$IPromptHandlerManagerCB;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mStack:Ljava/util/Stack;

    .line 40
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;-><init>(Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker-IA;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mBinderTracker:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;

    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$IPromptHandlerManagerCB;

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unexpected null callback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isActivePromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->isSamePromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result p1

    return p1
.end method

.method private isSamePromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p2}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private promptHandlerExists(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    .line 160
    invoke-direct {p0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->isSamePromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private removeFromStack(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    .line 191
    invoke-direct {p0, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->isSamePromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    return v1

    .line 203
    :cond_3
    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->isActivePromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result p1

    .line 205
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_4

    .line 209
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$IPromptHandlerManagerCB;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$IPromptHandlerManagerCB;->onActivePromptHandlerChange()V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getActivePromptHandler()Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    :goto_0
    return-object v0
.end method

.method public registerPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registering prompt handler: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->promptHandlerExists(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v0

    const-string v1, "PromptHandlerManager"

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Attempting to register a registered PromptHandler. Unregistering previous."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->unregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Failed to unregister previous instance of PromptHandler"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mBinderTracker:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "RemoteCallbackList register failed"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$IPromptHandlerManagerCB;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$IPromptHandlerManagerCB;->onActivePromptHandlerChange()V

    const/4 p1, 0x1

    return p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unexpected null promptHandler"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 4

    if-eqz p1, :cond_2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregistering prompt handler: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->mBinderTracker:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$BinderTracker;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PromptHandlerManager"

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "cannot RemoteCallbackList unregister failed"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->removeFromStack(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    return v1

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->removeFromStack(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 130
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "failed to unregister because PromptHandler could not be found."

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unexpected null promptHandler"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
