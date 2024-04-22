.class public Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;
.super Landroid/os/AsyncTask;
.source "KeyChainMultiImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;,
        Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCb:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$Callback;

.field private final mCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mImportListener:Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;

.field private final mImportLock:Ljava/lang/Object;

.field private mImportedAlias:Ljava/lang/String;

.field private mImportedHash:[Ljava/lang/Byte;

.field private final mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

.field private final mResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmImportLock(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImportedHash(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;)[Ljava/lang/Byte;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedHash:[Ljava/lang/Byte;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmImportedAlias(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedAlias:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImportedHash(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;[Ljava/lang/Byte;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedHash:[Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$Callback;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mCerts:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mResultMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedAlias:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedHash:[Ljava/lang/Byte;

    .line 83
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$1;-><init>(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportListener:Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;

    .line 69
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    .line 70
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mCb:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$Callback;

    return-void
.end method


# virtual methods
.method public addCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mCerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mCerts:Ljava/util/List;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;

    invoke-direct {v1, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Starting keychain import with "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " certs"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mCerts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;

    .line 109
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportLock:Ljava/lang/Object;

    monitor-enter v2

    .line 110
    :try_start_0
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedAlias:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedHash:[Ljava/lang/Byte;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting import for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    iget-object v4, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    iget-object v5, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->category:Ljava/lang/String;

    iget-object v6, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->tag:Ljava/lang/String;

    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportListener:Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->RequestClientCertFromSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v4

    sget-object v5, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v4, v5, :cond_0

    .line 118
    invoke-virtual {v3}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v4

    sget-object v5, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v4, v5, :cond_0

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to request keychain cert import: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mResultMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 124
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3840

    add-long/2addr v3, v5

    .line 125
    :goto_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedAlias:Ljava/lang/String;

    if-nez v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-gez v7, :cond_1

    .line 126
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->isCancelled()Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 130
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 133
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedHash:[Ljava/lang/Byte;

    if-nez v3, :cond_3

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timedout waiting to import "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mResultMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 137
    :cond_3
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedAlias:Ljava/lang/String;

    iget-object v4, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Imported alias does not match requested alias:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mResultMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mResultMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedAlias:Ljava/lang/String;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedHash:[Ljava/lang/Byte;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 142
    :cond_4
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mResultMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mImportedHash:[Ljava/lang/Byte;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 150
    :catch_0
    :try_start_4
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    monitor-exit v2

    goto :goto_3

    :catch_1
    move-exception v3

    const-string v4, "Unexpected Exception"

    .line 147
    invoke-static {p0, v4, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mResultMap:Ljava/util/Map;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_5
    :goto_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_6
    :goto_3
    return-object v1
.end method

.method public hasCertsToImport()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mCb:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$Callback;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->mResultMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$Callback;->onImportResult(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
