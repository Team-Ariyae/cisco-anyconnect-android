.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToolsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ToolsAdapter"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mTools:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getToolByRequestId(I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->mTools:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    .line 155
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->getRequestId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->mTools:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->mTools:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getTools()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->mTools:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string p3, "ToolsAdapter"

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 189
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00d1

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    .line 193
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "could not inflate tool list item layout"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->mTools:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    const v1, 0x7f0a02d9

    .line 200
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 203
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "could not find title view"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 206
    :cond_1
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->-$$Nest$fgetmName(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a02d8

    .line 208
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 211
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "could not find summary view"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 214
    :cond_2
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->-$$Nest$fgetmDescription(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 219
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->isEnabled()Z

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 220
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->isEnabled()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-object p2
.end method

.method public setToolEnabled(IZ)Z
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->getToolByRequestId(I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 180
    :cond_0
    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->setEnabled(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public setTools(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;",
            ">;)V"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->mTools:Ljava/util/LinkedList;

    return-void
.end method
