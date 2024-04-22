.class public Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;
.super Ljava/lang/Object;
.source "NVMSettingsInfoInterface.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMSettingsInfoInterface"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;->mContext:Landroid/content/Context;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context is required for NVMSettingsInfoInterface"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clean()I
    .locals 4

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;->unregisterNVMSettingsInfoInterface()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "NVMSettingsInfoInterface"

    const-string v3, " Error while unregistering NVMSettingsInfoInterface"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public init()I
    .locals 4

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;->registerNVMSettingsInfoInterface()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "NVMSettingsInfoInterface"

    const-string v3, " Error while registering NVMSettingsInfoInterface"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isExportAllowed()Z
    .locals 1

    .line 77
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->getInstance()Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->isExportAllowed()Z

    move-result v0

    return v0
.end method

.method public native registerNVMSettingsInfoInterface()I
.end method

.method public native unregisterNVMSettingsInfoInterface()I
.end method
