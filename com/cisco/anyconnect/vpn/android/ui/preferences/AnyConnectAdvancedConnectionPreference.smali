.class public Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;
.super Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;
.source "AnyConnectAdvancedConnectionPreference.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "AnyConnectAdvancedConnectionPreference"

.field public static final REQUEST_CODE_ADVANCED_PREFERENCES:I = 0x539


# instance fields
.field private mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;->SetAnyConnectPreferenceOnClickListener(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;)V

    return-void
.end method


# virtual methods
.method public SetConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-void
.end method

.method public SetParentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;->mParent:Landroid/app/Activity;

    return-void
.end method

.method public UpdateFromPersistenceManager()V
    .locals 0

    return-void
.end method

.method public onAnyConnectPreferenceClick(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;->mParent:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 45
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.CONNECTION_EDITOR_ADVANCED_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "VpnConnection"

    .line 46
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectAdvancedConnectionPreference;->mParent:Landroid/app/Activity;

    const/16 v1, 0x539

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 51
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "AnyConnectAdvancedConnectionPreference"

    const-string v1, "error: null mConnection or mParent"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
