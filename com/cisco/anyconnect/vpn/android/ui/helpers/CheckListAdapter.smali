.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CheckListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mActiveConnection:Ljava/lang/String;

.field private mConnectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mConnectionList:Ljava/util/ArrayList;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getTextView(IZ)Landroid/view/View;
    .locals 2

    .line 106
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0066

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02e9

    .line 107
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const-string/jumbo p2, "unable to find textview tv_check_list_item_text within list_item"

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private getTextViewFromConvert(Landroid/view/View;IZ)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a02e9

    .line 94
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-nez p3, :cond_0

    .line 97
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const-string/jumbo p2, "unable to find textview tv_check_list_item_text within list_item"

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method


# virtual methods
.method public clearCheckedConnections()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mActiveConnection:Ljava/lang/String;

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 58
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mActiveConnection:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 65
    invoke-direct {p0, p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->getTextView(IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 69
    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->getTextViewFromConvert(Landroid/view/View;IZ)Landroid/view/View;

    move-result-object p1

    :goto_1
    const p2, 0x7f0a01b0

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-nez p2, :cond_2

    .line 75
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const-string/jumbo p2, "unable to find imageview iv_list_checkmark within list_item"

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    if-eqz p3, :cond_3

    .line 81
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 p3, 0x4

    .line 85
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p1
.end method

.method public setConnectionToChecked(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->mActiveConnection:Ljava/lang/String;

    return-void
.end method
