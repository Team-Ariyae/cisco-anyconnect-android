.class public Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;
.super Ljava/lang/Object;
.source "ManagedConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;,
        Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;
    }
.end annotation


# static fields
.field public static final ACCEPT_SEULA_FOR_USER:Ljava/lang/String; = "accept_seula_for_user"

.field public static final BLOCK_USER_CREATE_VPN_CONNECTION:Ljava/lang/String; = "block_user_create_vpn_connection"

.field public static final VPN_ALWAYS_ON_UMBRELLA_ONLY:Ljava/lang/String; = "vpn_always_on_umbrella_only"

.field public static final VPN_CONFIG_LIST_KEY:Ljava/lang/String; = "vpn_configuration_list"

.field public static final VPN_CONNECTION_PROFILE:Ljava/lang/String; = "vpn_connection_profile"

.field public static final VPN_SETTING_ALLOW_SAVED_CREDENTIALS:Ljava/lang/String; = "vpn_setting_allow_saved_credentials"

.field public static final VPN_SETTING_APPLY_PERAPP_TO_PROFILE:Ljava/lang/String; = "vpn_setting_apply_perapp_to_profile"

.field public static final VPN_SETTING_BLOCK_UNTRUSTED_SERVERS:Ljava/lang/String; = "vpn_setting_block_untrusted_servers"

.field public static final VPN_SETTING_CERTIFICATE_REVOCATION:Ljava/lang/String; = "vpn_setting_certificate_revocation"

.field public static final VPN_SETTING_EXTERNAL_CONTROL:Ljava/lang/String; = "vpn_setting_uri_external_control"

.field public static final VPN_SETTING_FIPS_MODE:Ljava/lang/String; = "vpn_setting_fips_mode"

.field public static final VPN_SETTING_REPLACE_EXISTING_PROFILE:Ljava/lang/String; = "vpn_setting_replace_existing_profile"

.field public static final VPN_SETTING_STRICT_MODE:Ljava/lang/String; = "vpn_setting_strict_mode"


# instance fields
.field private mAllowedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBundle:Landroid/os/Bundle;

.field private mConns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeychainAliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mConns:Ljava/util/List;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mAllowedApps:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mDisallowedApps:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mKeychainAliases:Ljava/util/Set;

    .line 194
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;
    .locals 2

    .line 175
    const-class v0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    const-string v1, "Applying managed configuration."

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Class;Ljava/lang/String;)V

    .line 176
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 177
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;-><init>(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->parse()V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4

    :try_start_0
    const-string v0, "restrictions"

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getApplicationRestrictions"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 167
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 169
    const-class v0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    const-string v1, "Failed to retrieve restrictions"

    invoke-static {v0, v1, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private parseGlobalPerAppRules()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_connection_allowed_apps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_connection_perapp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_connection_disallowed_apps"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->parsePerappRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mAllowedApps:Ljava/util/List;

    .line 297
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->parsePerappRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mDisallowedApps:Ljava/util/List;

    return-void
.end method

.method private parseLegacyVpnConfig()Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;
    .locals 5

    .line 301
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_connection_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "vpn_connection_host"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_connection_protocol"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "vpn_connection_ipsec_auth_mode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "vpn_connection_ipsec_ike_identity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setProtocol(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    .line 304
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_connection_allowed_apps"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_connection_perapp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "vpn_connection_disallowed_apps"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setPerApp(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    .line 311
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_connection_allow_bypass"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setAllowBypass(Z)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    .line 313
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_connection_keychain_cert_alias"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 315
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setCert(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    .line 316
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mKeychainAliases:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_connection_set_active"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setActive(Z)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    .line 320
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_connection_yubikey_cert_slot"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setYubikeySlot(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    .line 321
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->build()Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;

    move-result-object v0

    return-object v0
.end method

.method static parsePerappRules(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\s*,\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseVpnConfig(Landroid/os/Bundle;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;
    .locals 4

    .line 325
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    const-string/jumbo v1, "vpn_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vpn_host"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "vpn_protocol"

    .line 326
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vpn_ipsec_auth_mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "vpn_ipsec_ike_identity"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setProtocol(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    const-string/jumbo v1, "vpn_allowed_apps"

    .line 327
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "vpn_disallowed_apps"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setPerApp(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    const-string/jumbo v1, "vpn_allow_bypass"

    .line 328
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setAllowBypass(Z)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    const-string/jumbo v1, "vpn_keychain_cert_alias"

    .line 330
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 332
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setCert(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    .line 333
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mKeychainAliases:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v1, "vpn_set_active"

    const/4 v2, 0x0

    .line 336
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setActive(Z)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    const-string/jumbo v1, "vpn_yubikey_cert_slot"

    .line 337
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->setYubikeySlot(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;

    .line 338
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnectionBuilder;->build()Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;

    move-result-object p1

    return-object p1
.end method

.method public static shouldSkipShowingEula(Landroid/content/Context;)Z
    .locals 2

    .line 217
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasAndroidForWork()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "restrictions"

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/RestrictionsManager;

    if-eqz p0, :cond_1

    .line 225
    invoke-virtual {p0}, Landroid/content/RestrictionsManager;->getApplicationRestrictions()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "accept_seula_for_user"

    .line 226
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public blockUserCreateVpnConnection()Z
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string v1, "block_user_create_vpn_connection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowedApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mAllowedApps:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mAllowedApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBlockUntrustedServers()Z
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_block_untrusted_servers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCertRevocation()Z
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_certificate_revocation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mConns:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 5

    .line 451
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isBlockUntrustedServersSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MANAGED CONFIGURATION\n--------------------------------------------\nblockUntrustedServers = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getBlockUntrustedServers()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "MANAGED CONFIGURATION\n--------------------------------------------\nblockUntrustedServers is not set"

    .line 457
    :goto_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isFipsSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nfips = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getFips()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 460
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nfips is not set"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    :goto_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isStrictCertSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nstrictCert = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getStrictCert()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 466
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nstrictCert is not set"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_2
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isCertRevocationSet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ncertRevocation = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getCertRevocation()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 472
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ncertRevocation is not set"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    :goto_3
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isSavePasswordSet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nsavePass = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getSavePassword()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 478
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nsavePass is not set"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nremote control mode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\napply per-app to profile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->shouldApplyPerappToProfile()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nhas profile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->hasProfile()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nreplace existing profile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->shouldReplaceExistingProfile()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nblock user create VPN connection="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->blockUserCreateVpnConnection()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n--------------------------------------------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mConns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    return-object v1
.end method

.method public getDisallowedApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mDisallowedApps:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mDisallowedApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFips()Z
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_fips_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getKeychainAliases()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mKeychainAliases:Ljava/util/Set;

    return-object v0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_connection_profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "AnyConnectProfile"

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    const-string v1, "Failed to decode profile"

    .line 374
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getRemoteControlMode()Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    return-object v0
.end method

.method public getSavePassword()Z
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_allow_saved_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStrictCert()Z
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_strict_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasProfile()Z
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_connection_profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    .line 356
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlwaysOnUmbrellaOnly()Z
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_always_on_umbrella_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBlockUntrustedServersSet()Z
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_block_untrusted_servers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCertRevocationSet()Z
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_certificate_revocation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFipsSet()Z
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_fips_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRemoteControlModeSet()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSavePasswordSet()Z
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_allow_saved_credentials"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStrictCertSet()Z
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_strict_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse()V
    .locals 6

    .line 236
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->ANDROID_MANAGED_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->shouldLog(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$1;-><init>(Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;)V

    .line 243
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->ANDROID_MANAGED_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-class v4, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    const-string v5, "Managed Configurations:"

    invoke-static {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    invoke-static {v2, v1, v0}, Lcom/cisco/anyconnect/android/util/AppLogUtility;->logBundle(Landroid/os/Bundle;ILjava/util/Set;)V

    .line 249
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mConns:Ljava/util/List;

    .line 251
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->parseLegacyVpnConfig()Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mConns:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_configuration_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 258
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 259
    check-cast v3, Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->parseVpnConfig(Landroid/os/Bundle;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 261
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mConns:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_3
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->parseGlobalPerAppRules()V

    .line 268
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_uri_external_control"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 273
    :try_start_0
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse remote control mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public shouldApplyPerappToProfile()Z
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_apply_perapp_to_profile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldReplaceExistingProfile()Z
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "vpn_setting_replace_existing_profile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
