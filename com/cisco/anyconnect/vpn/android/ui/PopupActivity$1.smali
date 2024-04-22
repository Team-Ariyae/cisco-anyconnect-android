.class Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity$1;
.super Ljava/lang/Object;
.source "PopupActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$IPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopupFinished()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->-$$Nest$fgetmPopupMgr(Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->hasPopupToShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->-$$Nest$fgetmPopupMgr(Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->showNextPopup()V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->finish()V

    :goto_0
    return-void
.end method
