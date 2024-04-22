.class Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;
.super Ljava/lang/Object;
.source "ProfileManagementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->exitActivity(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->val$msg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$fgetmExitInProgress(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$fputmExitInProgress(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Z)V

    .line 457
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->val$msg:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 459
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->val$result:Z

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 462
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->finish()V

    goto :goto_0

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
