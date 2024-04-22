.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;
.super Ljava/lang/Object;
.source "ConnectionSelectorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

.field final synthetic val$connectionForDelete:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

.field final synthetic val$selectedConnection:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->val$connectionForDelete:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->val$selectedConnection:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string p2, "ConnectionSelectorFragment"

    const v0, 0x7f11031d

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmConnList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->val$connectionForDelete:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Delete(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "error deleting connection"

    invoke-static {v1, p2, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->val$selectedConnection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 384
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmConnectionNames(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->val$selectedConnection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 385
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmConnectionNamesAdapter(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->notifyDataSetChanged()V

    .line 386
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1100d7

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->val$selectedConnection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 388
    :try_start_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "exception deleting connection"

    invoke-static {v2, p2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;->val$selectedConnection:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 393
    throw p2
.end method
