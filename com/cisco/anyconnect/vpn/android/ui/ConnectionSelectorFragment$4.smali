.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$4;
.super Ljava/lang/Object;
.source "ConnectionSelectorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const p1, 0x7f0a02e9

    .line 247
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "error: null view for R.id.tv_check_list_item_text"

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    :try_start_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$misInteractiveState(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Z

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x1

    const-string p4, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_IS_ERROR_KEY"

    const-string p5, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_KEY"

    const-string v0, "com.cisco.anyconnect.vpn.android.ACTION_SHOW_POPUP"

    if-eqz p2, :cond_1

    .line 255
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x7f1101f7

    .line 256
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 261
    :cond_1
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmConnList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->SetActive(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 263
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const v0, 0x7f110202

    .line 264
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f1101cb

    .line 265
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    invoke-virtual {p2, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 272
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo p5, "unable to set active connection: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "ConnectionSelectorFragment"

    invoke-static {p3, p4, p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
