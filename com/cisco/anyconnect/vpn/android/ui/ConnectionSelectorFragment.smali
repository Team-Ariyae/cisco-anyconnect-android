.class public Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;
.super Landroidx/fragment/app/Fragment;
.source "ConnectionSelectorFragment.java"


# static fields
.field private static final ADD_CONNECTION_REQUEST_CODE:I = 0x3419

.field private static final CONTEXT_MENU_DELETE_CONNECTION_ID:I = 0x4

.field private static final CONTEXT_MENU_EDIT_CONNECTION_ID:I = 0x3

.field private static final ENTITY_NAME:Ljava/lang/String; = "ConnectionSelectorFragment"


# instance fields
.field private mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

.field private mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

.field private mConnectionNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionNamesAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;

.field private final mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

.field mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

.field private rl:Landroid/widget/RelativeLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionNames(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionNamesAdapter(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNamesAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$misInteractiveState(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->isInteractiveState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpopulateConnections(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->populateConnections(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 76
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    .line 91
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    .line 243
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private isInteractiveState()Z
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 432
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    .line 433
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    .line 434
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    .line 435
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private populateConnections(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 7

    const-string v0, "ConnectionSelectorFragment"

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 213
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    .line 215
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetAllNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " "

    const/16 v4, 0x40

    if-eqz v2, :cond_0

    .line 217
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 218
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f11016e

    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 220
    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 221
    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 222
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "host address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f11016d

    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNamesAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetActive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->setConnectionToChecked(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNamesAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 231
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Error, unable to populate connections"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 236
    :goto_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 237
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->rl:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 239
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->rl:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-cisco-anyconnect-vpn-android-ui-ConnectionSelectorFragment(Landroid/view/View;)V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1100f5

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-cisco-anyconnect-vpn-android-ui-ConnectionSelectorFragment(Landroid/view/View;)V
    .locals 1

    .line 202
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.CONNECTION_EDITOR_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3419

    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 282
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    if-nez p1, :cond_1

    const-string p1, "onActivityResult when VpnService is not bound"

    .line 289
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "com.cisco.anyconnect.vpn.android.CONNECTION_EDITOR_SHOW_KEY_CONNECTION_NAME"

    .line 293
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 295
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->isInteractiveState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    invoke-interface {v0, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->SetActive(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 299
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unable to set active connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "ConnectionSelectorFragment"

    invoke-static {v1, v2, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNamesAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->setConnectionToChecked(Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNamesAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const-string v0, "ConnectionSelectorFragment"

    const/4 v1, 0x0

    .line 353
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNames:Ljava/util/ArrayList;

    iget v2, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x4

    .line 366
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 368
    :try_start_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 370
    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v6, 0x7f120131

    invoke-direct {v3, v4, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f1100c7

    .line 371
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 372
    invoke-virtual {v3, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f1100c8

    .line 373
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f110343

    .line 374
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;

    invoke-direct {v4, p0, p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p1, 0x7f1101fc

    .line 396
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$6;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)V

    invoke-virtual {v3, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 402
    invoke-virtual {v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 404
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Error: Unable to find connection that needs to be deleted"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 407
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "error: delete connection failed"

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 409
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne v0, p1, :cond_3

    .line 410
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.CONNECTION_EDITOR_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.cisco.anyconnect.vpn.android.CONNECTION_EDITOR_SHOW_KEY_CONNECTION_NAME"

    .line 411
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v5

    :cond_3
    return v1

    :catch_1
    move-exception p1

    .line 355
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "bad menuInfo"

    invoke-static {v2, v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNames:Ljava/util/ArrayList;

    .line 103
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0066

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNames:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNamesAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;->setNotifyOnChange(Z)V

    .line 106
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 169
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ConnectionSelectorFragment"

    const-string v1, "ServiceConnMgr.Activate failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110139

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0d003a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 178
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 179
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNamesAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CheckListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 184
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a0225

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->rl:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const-string v0, "ConnectionSelectorFragment"

    .line 318
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 321
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    const p2, 0x7f11029f

    .line 327
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 329
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnectionNames:Ljava/util/ArrayList;

    iget p3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x0

    const/4 v1, 0x1

    .line 332
    :try_start_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    invoke-interface {v2, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 336
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v3

    if-eq v2, v3, :cond_1

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMImported()Z

    move-result p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 340
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Unexpected RemoteException occurred when trying to get the connection list"

    invoke-static {v2, v0, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    const p2, 0x7f110125

    .line 344
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const p2, 0x7f110112

    .line 345
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :catch_1
    move-exception p1

    .line 323
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "bad menuInfo"

    invoke-static {p2, v0, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d003a

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const p2, 0x7f0a0165

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 193
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->get(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 194
    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->blockUserCreateVpnConnection()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Managed config does not allow users to create new VPN connections, disabling floating action button"

    .line 195
    invoke-static {p0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    new-instance p3, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 201
    :cond_0
    new-instance p3, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ConnectionSelectorFragment"

    const-string v1, "onDestroy"

    .line 309
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 313
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method
