.class public Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;
.super Ljava/lang/Object;
.source "NchsPersistenceManager.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NchsPersistenceManager"

.field private static final STRING_FALSE:Ljava/lang/String;

.field private static final STRING_TRUE:Ljava/lang/String;


# instance fields
.field private final mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field private final mPackageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->STRING_TRUE:Ljava/lang/String;

    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->STRING_FALSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mPackageId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method


# virtual methods
.method public GetBooleanProperty(Ljava/lang/String;Z)Z
    .locals 7

    const-string v0, "GetBooleanProperty: unknown value ("

    const-string v1, "GetBooleanProperty: failed to get key=\'"

    .line 116
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    const-string v3, "\'"

    const-string v4, "NchsPersistenceManager"

    if-nez v2, :cond_0

    .line 118
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetBooleanProperty: no persistence manager for key=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 124
    :cond_0
    :try_start_0
    new-instance v2, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;

    invoke-direct {v2}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;-><init>()V

    .line 125
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mPackageId:Ljava/lang/String;

    invoke-interface {v5, v6, p1, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v5

    .line 127
    sget-object v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v6, v5, :cond_1

    .line 129
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 133
    :cond_1
    invoke-virtual {v2}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->STRING_TRUE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 139
    :cond_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->STRING_FALSE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_3
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for key=\'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetBooleanProperty: got RemoteException getting key=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\':"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v4, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return p2
.end method

.method public GetBytesProperty(Ljava/lang/String;[B)[B
    .locals 6

    const-string v0, "GetBytesProperty: null value for key="

    const-string v1, "GetBytesProperty: failed to get key=\'"

    .line 186
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    const-string v3, "NchsPersistenceManager"

    if-nez v2, :cond_0

    .line 188
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "GetBytesProperty: no persistence manager"

    invoke-static {p1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 194
    :cond_0
    :try_start_0
    new-instance v2, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;

    invoke-direct {v2}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;-><init>()V

    .line 195
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mPackageId:Ljava/lang/String;

    invoke-interface {v4, v5, p1, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v4

    .line 197
    sget-object v5, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v5, v4, :cond_1

    .line 199
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 203
    :cond_1
    invoke-virtual {v2}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 206
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 210
    :cond_2
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/util/ByteUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 214
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "GetBytesProperty: got RemoteException getting key=\'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\':"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public GetStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "GetStringProperty: failed to get key=\'"

    .line 59
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    const-string v2, "NchsPersistenceManager"

    if-nez v1, :cond_0

    .line 61
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "GetStringProperty: no persistence manager for key=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 67
    :cond_0
    :try_start_0
    new-instance v1, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;

    invoke-direct {v1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;-><init>()V

    .line 68
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mPackageId:Ljava/lang/String;

    invoke-interface {v3, v4, p1, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v3

    .line 70
    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v4, v3, :cond_1

    .line 72
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 76
    :cond_1
    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetStringProperty: got RemoteException getting key=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\':"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public SetBooleanProperty(Ljava/lang/String;Z)Z
    .locals 5

    const-string v0, "SetBooleanProperty: failed to get key=\'"

    .line 156
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    const/4 v2, 0x0

    const-string v3, "NchsPersistenceManager"

    if-nez v1, :cond_0

    .line 158
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetBooleanProperty: no persistence manager for key=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    if-eqz p2, :cond_1

    .line 164
    :try_start_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->STRING_TRUE:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->STRING_FALSE:Ljava/lang/String;

    .line 165
    :goto_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mPackageId:Ljava/lang/String;

    invoke-interface {v1, v4, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    .line 167
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, p2, :cond_2

    .line 169
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 177
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SetBooleanProperty: got RemoteException getting key=\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\':"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public SetBytesProperty(Ljava/lang/String;[B)Z
    .locals 5

    const-string v0, "SetBytesProperty: failed to get key=\'"

    .line 223
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    const/4 v2, 0x0

    const-string v3, "NchsPersistenceManager"

    if-nez v1, :cond_0

    .line 225
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "SetBytesProperty: no persistence manager"

    invoke-static {p1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 231
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/util/ByteUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    .line 232
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mPackageId:Ljava/lang/String;

    invoke-interface {v1, v4, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    .line 234
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, p2, :cond_1

    .line 236
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 244
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SetBytesProperty: got RemoteException getting key=\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\':"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public SetStringProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "SetStringProperty: failed to get key=\'"

    .line 88
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    const/4 v2, 0x0

    const-string v3, "NchsPersistenceManager"

    if-nez v1, :cond_0

    .line 90
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetStringProperty: no persistence manager for key=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 96
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/NchsPersistenceManager;->mPackageId:Ljava/lang/String;

    invoke-interface {v1, v4, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    .line 98
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, p2, :cond_1

    .line 100
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 108
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SetStringProperty: got RemoteException getting key=\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\':"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method
