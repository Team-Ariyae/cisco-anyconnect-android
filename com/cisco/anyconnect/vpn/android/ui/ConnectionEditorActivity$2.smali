.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "ConnectionEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Landroid/content/Context;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 7

    const-string v0, "OnServiceConnected"

    const-string v1, "ConnectionEditorActivity"

    .line 126
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f11013c

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnectionListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RegisterConnectionHandler failed"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fputmConnectionList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V

    .line 141
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnectionName(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnectionName(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x40

    if-ge v3, p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    const v3, 0x7f11016e

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fputmConnectionName(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnectionList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v3

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnectionName(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fputmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V

    .line 151
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    if-nez p1, :cond_3

    .line 152
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnectionList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v3

    invoke-interface {v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->CreateNew()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fputmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V

    .line 154
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V

    invoke-static {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fputmPreferences(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)V

    .line 159
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-direct {v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;-><init>()V

    invoke-static {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fputmPreferenceMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;)V

    .line 160
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmPreferenceMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    move-result-object p1

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;->LOCAL:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmPreferences(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->SetPersistenceManager(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;)V

    .line 162
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmPendingAdvancedSettings(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 163
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmPendingAdvancedSettings(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$mapplyAdvancedSettings(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Landroid/content/Intent;)V

    .line 164
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fputmPendingAdvancedSettings(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Landroid/content/Intent;)V

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    const v2, 0x7f0d0038

    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->setContentView(I)V

    .line 170
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    const v2, 0x7f0a00f0

    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 171
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 173
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmPreferenceMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    const v4, 0x7f140002

    invoke-virtual {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->InflatePreferencesFromXml(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    .line 176
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    const v2, 0x7f110251

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v3, 0x1

    .line 180
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 181
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    const v2, 0x7f0a00f2

    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 185
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "host"

    const-string v6, "name"

    if-eq v2, v4, :cond_7

    :try_start_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMImported()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_a

    const/16 v2, 0x8

    .line 203
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 188
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v2, v6}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$mdisablePreference(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v2, v5}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$mdisablePreference(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 192
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMImported()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f110051

    .line 193
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const v2, 0x7f110052

    .line 195
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v2, 0x0

    .line 197
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 199
    :cond_9
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Could not find profile header textview..."

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmPreferenceMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    if-eqz p1, :cond_b

    const/16 v2, 0x4001

    .line 210
    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setInputType(I)V

    .line 211
    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setFocusable(Z)V

    .line 215
    :cond_b
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmPreferenceMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    if-eqz p1, :cond_c

    const/16 v2, 0x11

    .line 217
    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setInputType(I)V

    .line 218
    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setFocusable(Z)V

    .line 222
    :cond_c
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmPreferenceMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    move-result-object p1

    const-string v2, "advanced_connection"

    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;

    if-eqz p1, :cond_d

    .line 224
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;->SetParentActivity(Landroid/app/Activity;)V

    .line 225
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;->SetConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V

    .line 226
    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;->setFocusable(Z)V

    .line 230
    :cond_d
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$msetUpButtons(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 235
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "exception occurred while registering callbacks and getting connections"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public OnServiceDisconnected()V
    .locals 2

    const-string v0, "ConnectionEditorActivity"

    const-string v1, "OnServiceDisconnected"

    .line 265
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "ConnectionEditorActivity"

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->-$$Nest$fgetmConnectionListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 246
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "UnregisterConnectionListener failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException occurred while unregistering callbacks"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 253
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 254
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-static {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method
