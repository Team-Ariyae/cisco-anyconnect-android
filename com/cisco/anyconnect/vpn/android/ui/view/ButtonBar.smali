.class public Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;
.super Landroid/widget/LinearLayout;
.source "ButtonBar.java"


# static fields
.field private static final NEGATIVE_BUTTON_ID_STRING:Ljava/lang/String; = "negative_button_label"

.field private static final NEUTRAL_BUTTON_ID_STRING:Ljava/lang/String; = "neutral_button_label"

.field private static final POSITIVE_BUTTON_ID_STRING:Ljava/lang/String; = "positive_button_label"


# instance fields
.field private final mNegativeButton:Landroid/widget/Button;

.field private final mNeutralButton:Landroid/widget/Button;

.field private final mPositiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "layout_inflater"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00d6

    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0096

    .line 46
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    const v0, 0x7f0a0094

    .line 47
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    const v0, 0x7f0a0095

    .line 48
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mNeutralButton:Landroid/widget/Button;

    const-string v1, "neutral_button_visible"

    const/4 v2, 0x0

    const-string v3, "http://\u200bschemas.\u200bcisco.com/\u200banyconnect/\u200bandroid"

    .line 51
    invoke-interface {p2, v3, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const-string v0, "positive_button_label"

    .line 59
    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "negative_button_label"

    .line 60
    invoke-interface {p2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "neutral_button_label"

    .line 61
    invoke-interface {p2, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_1

    .line 65
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/view/CustomAttributeValue;

    invoke-direct {v2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/view/CustomAttributeValue;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/view/CustomAttributeValue;->getStringValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 71
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/view/CustomAttributeValue;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/CustomAttributeValue;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/view/CustomAttributeValue;->getStringValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 77
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/view/CustomAttributeValue;

    invoke-direct {v0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/view/CustomAttributeValue;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/view/CustomAttributeValue;->getStringValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNeutralButtonText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonVisibility(Z)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setNeutralButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNeutralButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNeutralButtonVisibility(Z)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mNeutralButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setPositiveButtonEnable(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 125
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
