.class public Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;
.super Ljava/lang/Object;
.source "NativeComponentInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;,
        Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NativeComponentInstaller"


# instance fields
.field private mCB:Lcom/cisco/anyconnect/vpn/android/service/helpers/IInstallNativeComponentsCB;

.field private mContext:Landroid/content/Context;

.field private mInstallerTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;",
            ">;"
        }
    .end annotation
.end field

.field private mNCHSConnection:Landroid/content/ServiceConnection;

.field private mNCHService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field private mNativeComponentArchivePath:Ljava/lang/String;

.field private mNativeComponentSignaturePath:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNCHService(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNCHService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNCHService(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNCHService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method

.method static bridge synthetic -$$Nest$minstallNativeComponents(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->installNativeComponents()Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreturnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->returnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/helpers/IInstallNativeComponentsCB;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentArchivePath:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentSignaturePath:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNCHSConnection:Landroid/content/ServiceConnection;

    .line 123
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mCB:Lcom/cisco/anyconnect/vpn/android/service/helpers/IInstallNativeComponentsCB;

    return-void
.end method

.method public static UpdateNeeded(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "NativeComponentInstaller"

    if-nez p2, :cond_0

    .line 553
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p1, "unexpected null availableVersion string"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 558
    :cond_0
    new-instance v2, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;

    invoke-direct {v2}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;-><init>()V

    :try_start_0
    const-string/jumbo v3, "vpnagentver"

    .line 562
    invoke-interface {p0, p1, v3, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    invoke-virtual {v2}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 573
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AnyConnect native component available version: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " installed version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 568
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Remote Exception occurred in NCHS aidl call."

    invoke-static {p1, v1, p2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private cleanup()V
    .locals 4

    const-string v0, "NativeComponentInstaller"

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentArchivePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 514
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentArchivePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentSignaturePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 518
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentSignaturePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 523
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Delete not allowed."

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNCHService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v1, :cond_2

    .line 531
    :try_start_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNCHSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 535
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Not bound to NCHS."

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private copyAssetToFilesDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "/"

    .line 305
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Copying "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NativeComponentInstaller"

    invoke-static {v3, v5, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :try_start_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 312
    :try_start_1
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 321
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 326
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 327
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 333
    :goto_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v5, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_2
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object p1, v0

    move-object v2, p1

    :goto_3
    if-eqz p1, :cond_3

    .line 321
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    .line 326
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 327
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 336
    :cond_4
    throw v1
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 354
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 358
    :try_start_0
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 362
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "NativeComponentInstaller"

    const-string v1, "OutputStream.write failed."

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static final getAvailableBuildVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 589
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f11010d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 593
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NativeComponentInstaller"

    const-string v2, "Invalid string id."

    invoke-static {v0, v1, v2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private installBinaries([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetBinDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 396
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->getNativeAssetsBinPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3}, Lcom/cisco/android/nchs/io/FileUtils;->CopyFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 401
    invoke-static {v3, v4}, Lcom/cisco/android/nchs/io/FileUtils;->SetExecutable(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private installNativeComponents()Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;
    .locals 8

    const-string v0, "Failed to copy native component file."

    const-string v1, "Remote Exception occurred in NCHS aidl call."

    const-string v2, "Uninstall of native component failed."

    const-string v3, "NativeComponentInstaller"

    .line 167
    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 168
    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 172
    :try_start_0
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNCHService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-interface {v5}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->IsDeviceInfoAvailable()Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v5

    .line 173
    sget-object v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v6, v5, :cond_0

    .line 175
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->DEVICE_INFO_NOT_AVAILABLE:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v0

    .line 187
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNCHService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->IsNetworkComponentInstalled(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 192
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v7, v3, v1, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :goto_0
    sget-object v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v5, v6}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 201
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "Uninstalling AnyConnect native components"

    invoke-static {v6, v3, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :try_start_2
    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNCHService:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->UninstallNetworkComponent(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v5, v4}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 216
    invoke-virtual {v1, v4}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 218
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ACCESS_APP_DATA:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v0, v5, :cond_2

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ACCESS_APP_DATA:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0

    .line 223
    :cond_2
    :goto_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR_ACCESS_DATA:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v6

    .line 208
    :try_start_3
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v7, v3, v1, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v5, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 216
    invoke-virtual {v4, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 218
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ACCESS_APP_DATA:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v0, v5, :cond_4

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ACCESS_APP_DATA:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-ne v0, v4, :cond_3

    goto :goto_2

    .line 226
    :cond_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0

    .line 223
    :cond_4
    :goto_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR_ACCESS_DATA:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0

    .line 215
    :goto_3
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v5, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 216
    invoke-virtual {v4, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 218
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ACCESS_APP_DATA:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v0, v5, :cond_6

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ACCESS_APP_DATA:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-ne v0, v4, :cond_5

    goto :goto_4

    .line 226
    :cond_5
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0

    .line 223
    :cond_6
    :goto_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR_ACCESS_DATA:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0

    .line 228
    :cond_7
    throw v0

    .line 234
    :cond_8
    :try_start_4
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cisco/android/nchs/permissions/Prerequisites;->usePieDynamicExecutable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 236
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "installing pie Agent"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->getNativeAssetsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NativeComponentArchives/vpnagentd/anyconnect_native_component_pie.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->copyAssetToFilesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentArchivePath:Ljava/lang/String;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->getNativeAssetsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NativeComponentArchives/vpnagentd/anyconnect_native_component_pie.sign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->copyAssetToFilesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentSignaturePath:Ljava/lang/String;

    goto :goto_5

    .line 242
    :cond_9
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "installing non-pie Agent"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->getNativeAssetsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NativeComponentArchives/vpnagentd/anyconnect_native_component.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->copyAssetToFilesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentArchivePath:Ljava/lang/String;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->getNativeAssetsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NativeComponentArchives/vpnagentd/anyconnect_native_component.sign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->copyAssetToFilesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentSignaturePath:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 252
    :goto_5
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentArchivePath:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentSignaturePath:Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_6

    .line 260
    :cond_a
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mInstallerTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_c

    .line 261
    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mInstallerTask:Landroid/os/AsyncTask;

    .line 262
    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-eq v0, v1, :cond_b

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mInstallerTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_c

    .line 264
    :cond_b
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ASYNC_COMPLETION:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0

    .line 267
    :cond_c
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask-IA;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentArchivePath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNativeComponentSignaturePath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$InstallNativeComponentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mInstallerTask:Landroid/os/AsyncTask;

    .line 269
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ASYNC_COMPLETION:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0

    .line 254
    :cond_d
    :goto_6
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0

    :catch_2
    move-exception v1

    .line 249
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v2, v3, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0

    :catch_3
    move-exception v0

    .line 180
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "got exception trying to determine device info presence"

    invoke-static {v1, v3, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->DEVICE_INFO_NOT_AVAILABLE:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0
.end method

.method private returnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V
    .locals 3

    .line 377
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->cleanup()V

    .line 379
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    if-ne v0, p1, :cond_0

    .line 381
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NativeComponentInstaller"

    const-string v2, "Succesfully installed necessary components"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.ACTION_APP_INSTALL_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mCB:Lcom/cisco/anyconnect/vpn/android/service/helpers/IInstallNativeComponentsCB;

    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/IInstallNativeComponentsCB;->InstallEndCB(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    return-void
.end method

.method private startAndBindNCHS()V
    .locals 4

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mNCHSConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NativeComponentInstaller"

    const-string v2, "Failed to bind to NCHS service"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->returnResult(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public InstallNativeComponents()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mCB:Lcom/cisco/anyconnect/vpn/android/service/helpers/IInstallNativeComponentsCB;

    const v1, 0x7f110187

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/IInstallNativeComponentsCB;->InstallStartCB(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->startAndBindNCHS()V

    return-void
.end method

.method public cancelInstall()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->mInstallerTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 279
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NativeComponentInstaller"

    const-string v2, "Cancelled Native Component Install."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
