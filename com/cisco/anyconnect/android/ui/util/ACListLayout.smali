.class public Lcom/cisco/anyconnect/android/ui/util/ACListLayout;
.super Ljava/lang/Object;
.source "ACListLayout.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ACListLayout"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cisco/anyconnect/android/ui/util/ACListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLLView:Landroid/widget/LinearLayout;

.field private final mSeparatorHeight:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mItems:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    iput-object p2, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mMainLLView:Landroid/widget/LinearLayout;

    .line 58
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 57
    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mSeparatorHeight:I

    return-void
.end method


# virtual methods
.method public clearList()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mMainLLView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 130
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getLAItem(I)Lcom/cisco/anyconnect/android/ui/util/ACListItem;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/cisco/anyconnect/android/ui/R$layout;->list_divider:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mMainLLView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mSeparatorHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->getLayoutID()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mMainLLView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public putItem(Ljava/lang/String;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;
    .locals 1

    .line 75
    new-instance v0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    move-result-object p1

    return-object p1
.end method

.method public putItem(Ljava/lang/String;I)Lcom/cisco/anyconnect/android/ui/util/ACListItem;
    .locals 1

    .line 93
    new-instance v0, Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    invoke-direct {v0, p1, p2}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    move-result-object p1

    return-object p1
.end method

.method public putItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;
    .locals 2

    .line 84
    new-instance v0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;

    const/4 v1, -0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    move-result-object p1

    return-object p1
.end method

.method public putItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/cisco/anyconnect/android/ui/util/ACListItem;
    .locals 1

    .line 103
    new-instance v0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    move-result-object p1

    return-object p1
.end method

.method public setVisibility(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->mMainLLView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
