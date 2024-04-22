.class public final Lcom/cisco/umbrella/restrictions/RestrictionsHandler;
.super Ljava/lang/Object;
.source "RestrictionsHandler.java"

# interfaces
.implements Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;,
        Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;,
        Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestrictionsHandler"

.field private static restrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private fqdnsDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

.field manager:Landroid/content/RestrictionsManager;

.field private registrationDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

.field private restrictionsChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->registrationDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    .line 28
    iput-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->fqdnsDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    .line 59
    new-instance v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$1;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$1;-><init>(Lcom/cisco/umbrella/restrictions/RestrictionsHandler;)V

    iput-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictionsChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->context:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->configureReceiver()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cisco/umbrella/restrictions/RestrictionsHandler;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->checkForRestrictionChanges()V

    return-void
.end method

.method private declared-synchronized checkForRestrictionChanges()V
    .locals 14

    monitor-enter p0

    .line 137
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->TAG:Ljava/lang/String;

    const-string v2, "checkForRestrictionChanges invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->manager:Landroid/content/RestrictionsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 140
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->getApplicationRestrictions()Landroid/os/Bundle;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 144
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v2, "umbrella_org_id"

    .line 146
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v2}, Lcom/cisco/umbrella/util/ValidationHelper;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move-object v6, v4

    goto :goto_0

    :cond_2
    move-object v6, v2

    :goto_0
    const-string v2, "umbrella_reg_token"

    .line 150
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v2}, Lcom/cisco/umbrella/util/ValidationHelper;->isRegTokenInvalid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v7, v4

    goto :goto_1

    :cond_3
    move-object v7, v2

    :goto_1
    const-string v2, "umbrella_va_fqdns"

    .line 154
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "umbrella_user_domains"

    .line 155
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "umbrella_gsuite_flag"

    .line 156
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    const-string v2, "umbrella_user_identity"

    .line 157
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "umbrella_serial_number"

    .line 158
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 160
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    invoke-static {v6}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    sget-object v13, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->ADDED:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->notifyRegistrationSubscriber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;)V

    goto/16 :goto_2

    .line 165
    :cond_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Restrictions is null, registration data is also null"

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->registrationDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    sget-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->EMPTY:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    const-string v2, "umbrella_org_id"

    invoke-interface {v0, v1, v2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;->restrictionsChanged(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 170
    :cond_5
    invoke-static {v6}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v7}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_4

    .line 173
    :cond_6
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    const-string v1, "umbrella_org_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    const-string v1, "umbrella_reg_token"

    .line 174
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->fqdnsDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    if-eqz v0, :cond_8

    const-string v1, "umbrella_va_fqdns"

    .line 181
    invoke-direct {p0, v8, v1, v0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;)V

    .line 183
    :cond_8
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isCros()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "umbrella_user_domains"

    .line 184
    iget-object v1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->registrationDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    invoke-direct {p0, v9, v0, v1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;)V

    const-string v0, "umbrella_gsuite_flag"

    .line 185
    invoke-direct {p0, v10, v0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v0, "umbrella_serial_number"

    .line 187
    invoke-direct {p0, v12, v0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    const-string v1, "umbrella_user_identity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-static {v11}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const-string v0, "umbrella_user_identity"

    .line 191
    iget-object v1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->registrationDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    invoke-direct {p0, v11, v0, v1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :cond_c
    :goto_2
    monitor-exit p0

    return-void

    .line 175
    :cond_d
    :goto_3
    :try_start_3
    sget-object v13, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->MODIFIED:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->notifyRegistrationSubscriber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 171
    :cond_e
    :goto_4
    :try_start_4
    invoke-direct {p0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->removeAllRestrictions()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private configureReceiver()V
    .locals 5

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictionsChangedReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private notifyRegistrationSubscriber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;)V
    .locals 5

    .line 105
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Registration data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct/range {p0 .. p7}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateAllProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->registrationDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    const-string p2, "umbrella_org_id"

    invoke-interface {p1, p8, p2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;->restrictionsChanged(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Ljava/lang/String;)V

    return-void
.end method

.method private removeAllRestrictions()V
    .locals 4

    .line 111
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->TAG:Ljava/lang/String;

    const-string v3, "Registration data removed"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 113
    iget-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->registrationDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    sget-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->REMOVED:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    const-string v2, "umbrella_org_id"

    invoke-interface {v0, v1, v2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;->restrictionsChanged(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Ljava/lang/String;)V

    return-void
.end method

.method private updateAllProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 84
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    const-string v1, "umbrella_org_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object p1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    const-string v0, "umbrella_reg_token"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "umbrella_va_fqdns"

    .line 87
    invoke-direct {p0, p3, p1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isCros()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "umbrella_user_domains"

    .line 90
    invoke-direct {p0, p4, p1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "umbrella_gsuite_flag"

    .line 91
    invoke-direct {p0, p5, p1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "umbrella_serial_number"

    .line 93
    invoke-direct {p0, p7, p1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "umbrella_user_identity"

    .line 94
    invoke-direct {p0, p6, p1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateAndNotify(Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;Ljava/lang/String;)V
    .locals 5

    .line 99
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1, p4}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {p3, p2, p4}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;->restrictionsChanged(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Ljava/lang/String;)V

    return-void
.end method

.method private updateProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 75
    invoke-static {p1}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object p1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " information also exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private validateProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;)V
    .locals 1

    .line 118
    invoke-static {p1}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->ADDED:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateAndNotify(Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->MODIFIED:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateAndNotify(Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->EMPTY:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateAndNotify(Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->REMOVED:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->updateAndNotify(Ljava/lang/String;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictionsChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->fqdnsDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    .line 225
    iput-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->registrationDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    .line 226
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->restrictions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public initialize()V
    .locals 3

    .line 48
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->TAG:Ljava/lang/String;

    const-string v2, "Initiating the restrictions handler"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->context:Landroid/content/Context;

    const-string v1, "restrictions"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->manager:Landroid/content/RestrictionsManager;

    .line 50
    invoke-direct {p0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->checkForRestrictionChanges()V

    return-void
.end method

.method public subscribe(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;)V
    .locals 4

    .line 199
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subscribing for :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->REGISTRATION:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    if-ne v0, p2, :cond_1

    .line 204
    iput-object p1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->registrationDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    goto :goto_0

    .line 206
    :cond_1
    iput-object p1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->fqdnsDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    :goto_0
    return-void
.end method

.method public unsubscribe(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;)V
    .locals 4

    .line 213
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnSubscribing for :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->REGISTRATION:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 215
    iput-object v1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->registrationDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    goto :goto_0

    .line 217
    :cond_0
    iput-object v1, p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->fqdnsDataSubscriber:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    :goto_0
    return-void
.end method
