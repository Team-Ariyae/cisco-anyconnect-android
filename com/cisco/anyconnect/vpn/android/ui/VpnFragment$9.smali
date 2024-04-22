.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$9;
.super Ljava/lang/Object;
.source "VpnFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$9;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 546
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$9;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1101cb

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
