.class public Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "LoggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemInfoFragment"
.end annotation


# instance fields
.field private mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;

.field private mList:Landroid/widget/ExpandableListView;


# direct methods
.method static bridge synthetic -$$Nest$mupdate(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;->update(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1911
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private update(Ljava/util/Map;)V
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

    const-string v0, "LoggingActivity"

    const-string/jumbo v1, "update"

    .line 1936
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->update(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "onCreateView"

    const-string v0, "LoggingActivity"

    .line 1918
    invoke-static {v0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0d0055

    const/4 v1, 0x0

    .line 1919
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0156

    .line 1922
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;->mList:Landroid/widget/ExpandableListView;

    if-nez p2, :cond_0

    .line 1924
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "failed to get expandable list view"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 1928
    :cond_0
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;

    .line 1929
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1930
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p2, v1}, Landroid/widget/ExpandableListView;->setScrollingCacheEnabled(Z)V

    return-object p1
.end method
