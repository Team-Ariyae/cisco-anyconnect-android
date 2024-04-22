.class public Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;
.super Ljava/lang/Object;
.source "StatsItemHelper.java"


# static fields
.field private static final CONTEXT_MENU_COPY_TEXT_ID:I = 0x0

.field private static final ENTITY_NAME:Ljava/lang/String; = "StatsItemHelper"


# instance fields
.field private mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

.field private mDetailPopupListener:Landroid/view/View$OnClickListener;

.field private mTextToCopy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper$1;-><init>(Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mDetailPopupListener:Landroid/view/View$OnClickListener;

    .line 54
    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;)Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    return-object p0
.end method

.method private findLayoutItemForLabel(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 152
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 154
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 155
    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 157
    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout;

    .line 158
    sget v4, Lcom/cisco/anyconnect/android/ui/R$id;->stat_list_label_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private updateItem(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    sget p2, Lcom/cisco/anyconnect/android/ui/R$string;->error_view_not_found:I

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    sget v0, Lcom/cisco/anyconnect/android/ui/R$id;->stat_list_label_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    sget v1, Lcom/cisco/anyconnect/android/ui/R$id;->stat_list_value_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p2, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mDetailPopupListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object p2, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void

    .line 135
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    sget p2, Lcom/cisco/anyconnect/android/ui/R$string;->error_view_not_found:I

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public HandleContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    const-string v1, "clipboard"

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 207
    iget-object v1, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mTextToCopy:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return v0

    .line 212
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "StatsItemHelper"

    const-string/jumbo v2, "unknown context menu ID"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public HandleCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 179
    sget p3, Lcom/cisco/anyconnect/android/ui/R$string;->select_action:I

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 180
    sget p3, Lcom/cisco/anyconnect/android/ui/R$string;->copy_text:I

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 182
    sget p1, Lcom/cisco/anyconnect/android/ui/R$id;->stat_list_label_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 183
    sget p3, Lcom/cisco/anyconnect/android/ui/R$id;->stat_list_value_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mTextToCopy:Ljava/lang/String;

    return-void

    .line 192
    :cond_0
    sget p1, Lcom/cisco/anyconnect/android/ui/R$id;->secure_route_tv_info_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mTextToCopy:Ljava/lang/String;

    return-void

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    sget p2, Lcom/cisco/anyconnect/android/ui/R$string;->error_view_not_found:I

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public Update(ILjava/util/LinkedHashMap;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 81
    iget-object p4, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    invoke-virtual {p4, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    if-nez p4, :cond_0

    .line 84
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "failed to get container id="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "StatsItemHelper"

    invoke-static {p2, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 90
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 94
    :cond_1
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 101
    iget-object v3, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/cisco/anyconnect/android/ui/R$layout;->stat_list_item:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4, v3}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->findLayoutItemForLabel(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4

    .line 109
    iget-object v3, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->mActivity:Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/cisco/anyconnect/android/ui/R$layout;->stat_list_item:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    move-object v2, v3

    .line 114
    :goto_1
    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->updateItem(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    return-void
.end method
