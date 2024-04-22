.class public Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;
.super Ljava/lang/Object;
.source "LocalPersistenceManager.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "LocalPersistenceManager"


# instance fields
.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public GetBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 82
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "LocalPersistenceManager"

    const-string v1, "GetBooleanProperty: no persistence manager"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 86
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public GetBytesProperty(Ljava/lang/String;[B)[B
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "LocalPersistenceManager"

    if-nez v0, :cond_0

    .line 109
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "GetBytesProperty: no persistence manager"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 114
    :cond_0
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetBytesProperty: no value for key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 120
    :cond_1
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 123
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GetBytesProperty: null value for key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 127
    :cond_2
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/util/ByteUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public GetStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 55
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "LocalPersistenceManager"

    const-string v1, "GetStringProperty: no persistence manager"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 59
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetBooleanProperty(Ljava/lang/String;Z)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 94
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "LocalPersistenceManager"

    const-string v0, "SetBooleanProperty: no persistence manager"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 98
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public SetBytesProperty(Ljava/lang/String;[B)Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 135
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "LocalPersistenceManager"

    const-string v0, "SetBytesProperty: no persistence manager"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 139
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/util/ByteUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public SetStringProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 67
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "LocalPersistenceManager"

    const-string v0, "SetStringProperty: no persistence manager"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 71
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
