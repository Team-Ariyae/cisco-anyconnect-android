.class public final Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;
.super Ljava/lang/Object;
.source "UmbrellaStatisticsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final llStatisticsMainContainer:Landroid/widget/LinearLayout;

.field public final llUmbrellaStatisticsContentContainer:Landroid/widget/LinearLayout;

.field public final llUmbrellaStatisticsDnsIpInformationList:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final svUmbrellaStatisticsMainContainer:Landroid/widget/ScrollView;

.field public final tvUmbrellaStatisticsEmpty:Landroid/widget/TextView;

.field public final tvUmbrellaStatisticsUmbrellaSecurityInfoHeader:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->llStatisticsMainContainer:Landroid/widget/LinearLayout;

    .line 50
    iput-object p3, p0, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->llUmbrellaStatisticsContentContainer:Landroid/widget/LinearLayout;

    .line 51
    iput-object p4, p0, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->llUmbrellaStatisticsDnsIpInformationList:Landroid/widget/LinearLayout;

    .line 52
    iput-object p5, p0, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->svUmbrellaStatisticsMainContainer:Landroid/widget/ScrollView;

    .line 53
    iput-object p6, p0, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->tvUmbrellaStatisticsEmpty:Landroid/widget/TextView;

    .line 54
    iput-object p7, p0, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->tvUmbrellaStatisticsUmbrellaSecurityInfoHeader:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;
    .locals 8

    .line 84
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 86
    sget v0, Lcom/cisco/umbrella/R$id;->ll_umbrella_statistics_content_container:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 92
    sget v0, Lcom/cisco/umbrella/R$id;->ll_umbrella_statistics_dns_ip_information_list:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 98
    sget v0, Lcom/cisco/umbrella/R$id;->sv_umbrella_statistics_main_container:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ScrollView;

    if-eqz v5, :cond_0

    .line 104
    sget v0, Lcom/cisco/umbrella/R$id;->tv_umbrella_statistics_empty:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 110
    sget v0, Lcom/cisco/umbrella/R$id;->tv_umbrella_statistics_umbrella_security_info_header:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 116
    new-instance p0, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v7}, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-static {p0, v0, v1}, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;
    .locals 2

    .line 71
    sget v0, Lcom/cisco/umbrella/R$layout;->umbrella_statistics:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->bind(Landroid/view/View;)Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/cisco/umbrella/databinding/UmbrellaStatisticsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
