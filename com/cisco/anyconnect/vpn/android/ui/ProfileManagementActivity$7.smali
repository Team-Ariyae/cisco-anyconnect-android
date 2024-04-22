.class Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;
.super Ljava/lang/Object;
.source "ProfileManagementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;->val$message:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$mclearPopups(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V

    .line 577
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$mgetProfileContents(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V

    .line 579
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;->val$message:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 581
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;->val$success:Z

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 584
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$fgetmExpandableProfile(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    return-void

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
