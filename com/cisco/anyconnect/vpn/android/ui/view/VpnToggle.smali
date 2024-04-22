.class public Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;
.super Landroid/widget/Switch;
.source "VpnToggle.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->mClickListener:Landroid/view/View$OnClickListener;

    .line 36
    invoke-super {p0, p1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
