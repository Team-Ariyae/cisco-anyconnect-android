.class public Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;
.super Lcom/cisco/anyconnect/android/ui/util/ACListItem;
.source "ACDoubleListItem.java"


# instance fields
.field private mSubText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mSubText:Ljava/lang/String;

    .line 29
    sget p1, Lcom/cisco/anyconnect/android/ui/R$layout;->list_item_double:I

    iput p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mLayoutID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput p3, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mIcon:I

    return-void
.end method


# virtual methods
.method public getPaddingByHeight()I
    .locals 2

    .line 51
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mSubText:Ljava/lang/String;

    return-object v0
.end method

.method public setSubText(Ljava/lang/String;)V
    .locals 1

    .line 43
    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mSubText:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mView:Landroid/view/View;

    sget v0, Lcom/cisco/anyconnect/android/ui/R$id;->generic_list_item_value_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mSubText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setView(Landroid/view/View;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setView(Landroid/view/View;)V

    .line 59
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mSubText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->setSubText(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->getPaddingByHeight()I

    move-result p1

    .line 63
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mView:Landroid/view/View;

    sget v1, Lcom/cisco/anyconnect/android/ui/R$id;->generic_list_item_label_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    div-int/lit8 p1, p1, 0x3f

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;->mView:Landroid/view/View;

    sget v2, Lcom/cisco/anyconnect/android/ui/R$id;->generic_list_item_value_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
