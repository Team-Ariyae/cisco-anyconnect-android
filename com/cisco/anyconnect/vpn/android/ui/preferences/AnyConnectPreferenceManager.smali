.class public Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;
.super Ljava/lang/Object;
.source "AnyConnectPreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "AnyConnectPreferenceManager"


# instance fields
.field private final mPersistenceManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;",
            "Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->mPreferenceList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->mPersistenceManagers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public InflatePreferencesFromXml(Landroid/content/Context;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->InflatePreferencesFromXml(Landroid/content/Context;ILcom/cisco/anyconnect/vpn/android/service/IVpnService;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public InflatePreferencesFromXml(Landroid/content/Context;ILcom/cisco/anyconnect/vpn/android/service/IVpnService;)Landroid/view/View;
    .locals 5

    const-string v0, "layout_inflater"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "AnyConnectPreferenceManager"

    if-nez p1, :cond_0

    .line 91
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "Inflated prefs returned null, passing the null back"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 95
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 97
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "Preferences were not encased in a viewgroup, returning null"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 101
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 104
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 108
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 109
    instance-of v2, v1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    if-eqz v2, :cond_7

    .line 111
    check-cast v1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    .line 112
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->mPersistenceManagers:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->getPersistenceType()Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    .line 113
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->SetAnyConnectPersistenceManager(Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;)V

    .line 114
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->UpdateFromPersistenceManager()V

    if-eqz p3, :cond_3

    .line 120
    :try_start_0
    invoke-interface {p3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->IsSettingUserControllable(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 124
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Error: unexpected remote exception when trying to querry setting from the service"

    invoke-static {v3, p2, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :cond_3
    :goto_1
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasMdm()Z

    move-result v2

    if-nez v2, :cond_6

    .line 130
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HideMdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HideVpn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_2
    const/16 v2, 0x8

    .line 132
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_6
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_7
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 146
    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 147
    :goto_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 149
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return-object p1
.end method

.method public SetPersistenceManager(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->mPersistenceManagers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    .line 166
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
