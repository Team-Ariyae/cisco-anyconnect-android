.class Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$3;
.super Ljava/lang/Object;
.source "YubikeyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->showDelayedTapDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$fgetmPivApplication(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)Lcom/yubico/yubikit/piv/PivApplication;

    move-result-object v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$mshowTapDialog(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V

    :cond_0
    return-void
.end method
