.class public abstract Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "BaseToolsActivity.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "BaseToolsActivity"


# instance fields
.field private mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;

.field private mLayoutResource:I

.field mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mTitle:Ljava/lang/String;

.field private mTools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    const v0, 0x7f0d0027

    .line 51
    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mLayoutResource:I

    .line 112
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;

    return-object v0
.end method

.method protected getDefaultOnClickHander(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;
    .locals 1

    .line 98
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-object v0
.end method

.method protected getTools()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mTools:Ljava/util/List;

    return-object v0
.end method

.method protected initializeActivityHeaders()V
    .locals 2

    const v0, 0x7f0d0027

    .line 191
    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mLayoutResource:I

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f1102e6

    .line 195
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mTitle:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected abstract initializeToolList()Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;",
            ">;"
        }
    .end annotation
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "onActivityResult"

    const-string v1, "BaseToolsActivity"

    .line 135
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->onVisibilityChange(Z)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 139
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mTools:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    .line 141
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->getRequestId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->hasCallback()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->getResultCB()Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;->onResult(ILandroid/content/Intent;)Z

    :cond_1
    return-void

    .line 151
    :cond_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "no tool found for result of code: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onCreate()"

    const-string v1, "BaseToolsActivity"

    .line 158
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    iget p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mLayoutResource:I

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->setContentView(I)V

    .line 163
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->initializeActivityHeaders()V

    .line 166
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->initializeToolList()Ljava/util/LinkedList;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mTools:Ljava/util/List;

    if-nez p1, :cond_0

    .line 169
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "no tools were returned from the child class initializeToolList()"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110206

    .line 170
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;

    .line 175
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mTools:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->setTools(Ljava/util/List;)V

    const p1, 0x102000a

    .line 176
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 177
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method protected setLayoutResource(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->mLayoutResource:I

    return-void
.end method
