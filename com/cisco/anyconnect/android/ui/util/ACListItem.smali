.class public Lcom/cisco/anyconnect/android/ui/util/ACListItem;
.super Ljava/lang/Object;
.source "ACListItem.java"


# static fields
.field public static final NO_ICON:I = -0x1


# instance fields
.field private label:Landroid/widget/TextView;

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field protected mClickable:Z

.field protected mEnabled:Z

.field protected mIcon:I

.field protected mLayoutID:I

.field protected mPrimaryText:Ljava/lang/String;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mEnabled:Z

    .line 13
    iput-boolean v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mClickable:Z

    .line 28
    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mPrimaryText:Ljava/lang/String;

    .line 29
    sget p1, Lcom/cisco/anyconnect/android/ui/R$layout;->list_item_single:I

    iput p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mLayoutID:I

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mView:Landroid/view/View;

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mIcon:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;-><init>(Ljava/lang/String;)V

    .line 41
    iput p2, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mIcon:I

    return-void
.end method


# virtual methods
.method public getLayoutID()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mLayoutID:I

    return v0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mPrimaryText:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 120
    iput-boolean p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mEnabled:Z

    .line 121
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 3

    .line 99
    iput p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mIcon:I

    .line 100
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mView:Landroid/view/View;

    sget v1, Lcom/cisco/anyconnect/android/ui/R$id;->generic_list_item_label_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    const/16 v1, 0xa

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 106
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 137
    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 138
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 1

    .line 73
    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mPrimaryText:Ljava/lang/String;

    .line 74
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mView:Landroid/view/View;

    sget v0, Lcom/cisco/anyconnect/android/ui/R$id;->generic_list_item_label_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->label:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mPrimaryText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->label:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method protected setView(Landroid/view/View;)V
    .locals 1

    .line 126
    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mView:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-boolean v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mEnabled:Z

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setEnabled(Z)V

    .line 129
    iget-boolean v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mClickable:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 130
    iget-boolean v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mClickable:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 131
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mPrimaryText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setPrimaryText(Ljava/lang/String;)V

    .line 132
    iget p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->mIcon:I

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setIcon(I)V

    return-void
.end method
