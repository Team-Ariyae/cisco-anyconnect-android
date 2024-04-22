.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BasicExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter$ExpandableListItem;
    }
.end annotation


# static fields
.field private static final CHILDREN_PER_GROUP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BasicExpandableListAdapter"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter$ExpandableListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->children:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->groups:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->children:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p4, :cond_0

    .line 116
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->context:Landroid/content/Context;

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0d005f

    const/4 p4, 0x0

    .line 117
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    const/4 p2, 0x0

    .line 118
    invoke-virtual {p4, p2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_0
    const p2, 0x7f0a00d0

    .line 121
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter$ExpandableListItem;

    if-nez p3, :cond_0

    .line 158
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->context:Landroid/content/Context;

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0d0056

    const/4 p4, 0x0

    .line 159
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p2, 0x7f0a0193

    .line 162
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 163
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter$ExpandableListItem;->getStringResource()I

    move-result p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public update(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter$ExpandableListItem;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BasicExpandableListAdapter"

    const-string/jumbo v1, "update"

    .line 87
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->groups:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
