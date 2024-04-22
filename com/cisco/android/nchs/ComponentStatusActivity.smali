.class public Lcom/cisco/android/nchs/ComponentStatusActivity;
.super Landroid/app/ListActivity;
.source "ComponentStatusActivity.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ComponentStatusActivity"


# instance fields
.field private mAdapter:Lcom/cisco/android/nchs/NativeComponentInfoAdapter;

.field private mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$fgetmService(Lcom/cisco/android/nchs/ComponentStatusActivity;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/cisco/android/nchs/ComponentStatusActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitGUI(Lcom/cisco/android/nchs/ComponentStatusActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->initGUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/cisco/android/nchs/ComponentStatusActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/ComponentStatusActivity$1;-><init>(Lcom/cisco/android/nchs/ComponentStatusActivity;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    new-instance v0, Lcom/cisco/android/nchs/ComponentStatusActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/ComponentStatusActivity$2;-><init>(Lcom/cisco/android/nchs/ComponentStatusActivity;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private getComponentInfoFromService()[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;
    .locals 4

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetAllComponentInfo()[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 167
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ComponentStatusActivity"

    const-string v3, "Could not get componentinfo due to remote exception"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->finish()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private initGUI()V
    .locals 5

    .line 101
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->getComponentInfoFromService()[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->finish()V

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d009d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->finish()V

    return-void

    :cond_1
    const v2, 0x7f0a00d9

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 119
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    const/16 v3, 0x8

    .line 121
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 125
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :cond_3
    :goto_0
    :try_start_0
    new-instance v2, Lcom/cisco/android/nchs/NativeComponentInfoAdapter;

    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/cisco/android/nchs/NativeComponentInfoAdapter;-><init>([Lcom/cisco/android/nchs/aidl/NativeComponentInfo;Landroid/view/LayoutInflater;)V

    iput-object v2, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mAdapter:Lcom/cisco/android/nchs/NativeComponentInfoAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {p0, v2}, Lcom/cisco/android/nchs/ComponentStatusActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/cisco/android/nchs/ComponentStatusActivity;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v0

    .line 135
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ComponentStatusActivity"

    const-string v3, "IllegalArgumentException thrown when creation the list adapter"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "onCreate()"

    const-string v1, "ComponentStatusActivity"

    .line 177
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    .line 179
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 184
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Could not bind to NCHS"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->finish()V

    .line 189
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "NCHS_COMPONENT_STATE_UPDATED_INTNET"

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 197
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->Destroy()V

    .line 199
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 200
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mAdapter:Lcom/cisco/android/nchs/NativeComponentInfoAdapter;

    invoke-virtual {p1, p3}, Lcom/cisco/android/nchs/NativeComponentInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    .line 148
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getPackageStartIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/ComponentStatusActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1101fe

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 206
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 214
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->initGUI()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->ApplyChanges()V

    :cond_0
    return-void
.end method
