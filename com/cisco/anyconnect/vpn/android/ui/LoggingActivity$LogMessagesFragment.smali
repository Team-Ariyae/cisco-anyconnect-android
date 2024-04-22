.class public Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;
.super Landroidx/fragment/app/Fragment;
.source "LoggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogMessagesFragment"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LogMessagesFragment"

.field private static callBack:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;


# instance fields
.field private mMessages:Ljava/lang/StringBuilder;

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1831
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mMessages:Ljava/lang/StringBuilder;

    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .line 1879
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setContent(Ljava/lang/String;Z)V
    .locals 2

    .line 1883
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1889
    :cond_0
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1884
    :cond_1
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "LogMessagesFragment"

    const-string v0, "could not find message log container or scroller "

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 1

    .line 1863
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1864
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->setContent(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1866
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->setContent(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 1875
    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->setContent(Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized getMessages()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1859
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$setContent$0$com-cisco-anyconnect-vpn-android-ui-LoggingActivity$LogMessagesFragment()V
    .locals 2

    .line 1903
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    return-void
.end method

.method synthetic lambda$setContent$1$com-cisco-anyconnect-vpn-android-ui-LoggingActivity$LogMessagesFragment(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1892
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1893
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mMessages:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    goto :goto_0

    .line 1895
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1896
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mMessages:Ljava/lang/StringBuilder;

    .line 1897
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 1902
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->invalidate()V

    .line 1903
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;)V

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "onCreateView"

    const-string v0, "LogMessagesFragment"

    .line 1841
    invoke-static {v0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0d006b

    const/4 v1, 0x0

    .line 1842
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01d7

    .line 1843
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mTextView:Landroid/widget/TextView;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1845
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "failed to get view"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    :cond_0
    const p2, 0x7f0a01d6

    .line 1849
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-nez p2, :cond_1

    .line 1851
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Could not find scroller view"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    :cond_1
    return-object p1
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1871
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->setContent(Ljava/lang/String;Z)V

    return-void
.end method
