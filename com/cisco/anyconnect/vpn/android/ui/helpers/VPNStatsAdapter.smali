.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;
.super Landroid/widget/BaseAdapter;
.source "VPNStatsAdapter.java"


# instance fields
.field private allItemsClickable:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemXML:I


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Landroid/view/LayoutInflater;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "IZ)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->mItems:Ljava/util/LinkedHashMap;

    .line 38
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->mListItemXML:I

    .line 40
    iput-boolean p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->allItemsClickable:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->mListItemXML:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a029e

    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 94
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p3, 0x7f0a02a0

    .line 97
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 100
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->allItemsClickable:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public putItem(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
