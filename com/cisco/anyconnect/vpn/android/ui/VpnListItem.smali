.class public Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;
.super Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;
.source "VpnListItem.java"


# instance fields
.field private mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mToggle:Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0d0068

    .line 18
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mLayoutID:I

    return-void
.end method


# virtual methods
.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 55
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mToggle:Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setToggleState(ZZ)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->setToggleState(ZZZ)V

    return-void
.end method

.method public setToggleState(ZZZ)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mToggle:Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mToggle:Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mToggle:Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;

    invoke-virtual {v0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setChecked(Z)V

    .line 37
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mToggle:Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;

    invoke-virtual {p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setClickable(Z)V

    .line 38
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mToggle:Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mToggle:Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 48
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mToggle:Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setView(Landroid/view/View;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->setView(Landroid/view/View;)V

    const v0, 0x7f0a009f

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;

    if-eqz v1, :cond_0

    .line 66
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnListItem;->mToggle:Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setFocusable(Z)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setNextFocusLeftId(I)V

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/view/VpnToggle;->setNextFocusDownId(I)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    :cond_0
    return-void
.end method
