.class Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "YubikeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;
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

    .line 152
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.cisco.anyconnect.vpn.android.YUIBKEY_ACTIVITY_CLOSE_INTENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->finish()V

    :cond_0
    return-void
.end method
