.class public Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "ConnectionSummaryActivity.java"


# static fields
.field private static ENTITY_NAME:Ljava/lang/String; = "ConnectionSummaryActivity"


# instance fields
.field private mDisconnectClickListener:Landroid/view/View$OnClickListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

.field private mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mStatsListener:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

.field private mcancelClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatsListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mStatsListener:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateStats(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->updateStats(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetENTITY_NAME()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->ENTITY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mStatsListener:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    .line 66
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    .line 93
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mDisconnectClickListener:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mcancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private loadEmptyValues()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f1102b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f1102a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f1102c7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f1100b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f11004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f11004e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateStats(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f1102a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->serverHostName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f1102c7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->timeConnected:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f1100b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->clientAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f11004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->bytesSent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const v1, 0x7f11004e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->bytesReceived:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 129
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->ENTITY_NAME:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003b

    .line 131
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->setContentView(I)V

    .line 133
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 209
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result p1

    if-nez p1, :cond_0

    .line 212
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->ENTITY_NAME:Ljava/lang/String;

    const-string v1, "ServiceConnMgr.Activate failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110139

    .line 213
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 217
    :cond_0
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d003c

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;-><init>(Ljava/util/LinkedHashMap;Landroid/view/LayoutInflater;IZ)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    const p1, 0x102000a

    .line 218
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 219
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->loadEmptyValues()V

    const p1, 0x7f0a00f5

    .line 224
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;

    const v0, 0x7f110122

    .line 225
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    const v0, 0x7f110050

    .line 226
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mDisconnectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mcancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 277
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    .line 278
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->ENTITY_NAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 269
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onPause()V

    .line 270
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->ENTITY_NAME:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 254
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onRestart()V

    .line 255
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->ENTITY_NAME:Ljava/lang/String;

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 261
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    .line 262
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->ENTITY_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 247
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onStop()V

    .line 248
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->ENTITY_NAME:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
