.class Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1$1;
.super Ljava/lang/Object;
.source "ProfileManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p2, "ProfileManagmentActivity"

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$fgetmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->DeleteCurrentProfile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 129
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "could not delete the profile"

    invoke-static {v0, p2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    const v1, 0x7f1100eb

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 142
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 144
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    const p2, 0x7f110113

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 145
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$mgetProfileContents(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V

    .line 146
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$fgetmExpandableProfile(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)Landroid/widget/ExpandableListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    return-void

    .line 136
    :catch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 137
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "remote exception thrown trying to get profile contents"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    const p2, 0x7f1100ed

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
