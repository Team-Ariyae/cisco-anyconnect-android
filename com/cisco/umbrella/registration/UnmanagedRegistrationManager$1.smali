.class Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "UnmanagedRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager$1;->this$0:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.umbrella.android.USER_IDENTITY_UNMANAGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " Received intent in unmanaged User Id Receiver"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager$1;->this$0:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    const-string/jumbo v0, "unmanagedUserId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->access$102(Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager$1;->this$0:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    invoke-static {p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->access$100(Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager$1;->this$0:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    invoke-static {p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->access$200(Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager$1;->this$0:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    const-string p2, "UserCancelledRegistration"

    invoke-static {p1, p2}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->access$300(Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
