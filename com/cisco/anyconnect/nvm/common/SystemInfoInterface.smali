.class public Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;
.super Ljava/lang/Object;
.source "SystemInfoInterface.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "SystemInfoInterface"

.field private static OS_VERSION_NAMES:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BASE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BASE_1_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Cupcake"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Donut"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Eclair"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Froyo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Gingerbread"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Honeycomb"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Ice Cream Sandwich"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Jelly Bean"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "KitKat"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Lollipop"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Marshmallow"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Nougat"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Oreo"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Pie"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Android10"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Android11"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Android12"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Android12L"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Android13"

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->OS_VERSION_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->mContext:Landroid/content/Context;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context is required for SystemInfoInterface"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAndroidID()Ljava/lang/String;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getArchitectureType()Ljava/lang/String;
    .locals 1

    const-string v0, "os.arch"

    .line 141
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOSName()Ljava/lang/String;
    .locals 4

    .line 125
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->OS_VERSION_NAMES:[Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "SystemInfoInterface"

    const-string v3, " Failed to fetch version name "

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Unknown"

    :goto_0
    return-object v0
.end method

.method private getSystemManufacturer()Ljava/lang/String;
    .locals 1

    .line 137
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 1

    .line 133
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init()I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "SYS_MANU"

    .line 93
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->getSystemManufacturer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "OS_NAME"

    .line 94
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->getOSName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ANDROID_ID"

    .line 95
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->getAndroidID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "VER_RELEASE"

    .line 96
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "OS_ARCH"

    .line 97
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->getArchitectureType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->getNVMDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "NVM_FILES_DIR"

    .line 100
    invoke-static {v2, v1, v3}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 105
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v3, "SystemInfoInterface"

    const-string v4, " Error while setting environment variable "

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method
