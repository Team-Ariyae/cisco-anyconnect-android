.class Lcom/cisco/umbrella/restrictions/RestrictionsHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/restrictions/RestrictionsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/restrictions/RestrictionsHandler;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/restrictions/RestrictionsHandler;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$1;->this$0:Lcom/cisco/umbrella/restrictions/RestrictionsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Restrictions changes received."

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$1;->this$0:Lcom/cisco/umbrella/restrictions/RestrictionsHandler;

    invoke-static {p1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->access$100(Lcom/cisco/umbrella/restrictions/RestrictionsHandler;)V

    :cond_1
    :goto_0
    return-void
.end method
