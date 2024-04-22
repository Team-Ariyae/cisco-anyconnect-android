.class Lcom/cisco/umbrella/ui/UmbrellaFragment$6;
.super Ljava/lang/Object;
.source "UmbrellaFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/ui/UmbrellaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$6;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 482
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancel listener"

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object p2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$6;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-static {p2}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$700(Lcom/cisco/umbrella/ui/UmbrellaFragment;)Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->cancelPop()V

    .line 484
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 485
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$6;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    sget p1, Lcom/cisco/umbrella/R$string;->umbrella_identity_popup_cancelled:I

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/cisco/umbrella/R$drawable;->notify_attention:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$500(Lcom/cisco/umbrella/ui/UmbrellaFragment;Ljava/lang/String;IZZZ)V

    return-void
.end method
