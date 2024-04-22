.class public Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "ConnectionSelectorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0039

    .line 31
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorActivity;->setContentView(I)V

    return-void
.end method
