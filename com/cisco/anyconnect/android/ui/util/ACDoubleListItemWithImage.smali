.class public Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;
.super Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;
.source "ACDoubleListItemWithImage.java"


# instance fields
.field private mCardView:Lcom/google/android/material/card/MaterialCardView;

.field private mImgResource:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mClickable:Z

    .line 24
    iput p3, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mImgResource:I

    .line 25
    sget p1, Lcom/cisco/anyconnect/android/ui/R$layout;->list_item_double_with_image:I

    iput p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mLayoutID:I

    return-void
.end method


# virtual methods
.method public getImageResource()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mImgResource:I

    return v0
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->setEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mView:Landroid/view/View;

    sget v1, Lcom/cisco/anyconnect/android/ui/R$id;->double_with_image_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    iput-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mCardView:Lcom/google/android/material/card/MaterialCardView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 47
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 48
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setFocusable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 50
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 51
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    .line 32
    iput p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mImgResource:I

    .line 33
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mView:Landroid/view/View;

    sget v0, Lcom/cisco/anyconnect/android/ui/R$id;->generic_list_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mImgResource:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mCardView:Lcom/google/android/material/card/MaterialCardView;

    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->setView(Landroid/view/View;)V

    .line 59
    iget p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->mImgResource:I

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->setImageResource(I)V

    return-void
.end method
