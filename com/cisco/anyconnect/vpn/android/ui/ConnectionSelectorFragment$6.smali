.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$6;
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


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 398
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
