.class Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$1;
.super Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;
.source "KeyChainMultiImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$1;->this$0:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    invoke-direct {p0}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnImportCompleted(Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Import cert alias failed: "

    const-string v1, "OnImportCompleted: "

    .line 86
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$1;->this$0:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->-$$Nest$fgetmImportLock(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 87
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v1

    sget-object v3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-ne v1, v3, :cond_0

    .line 89
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$1;->this$0:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    invoke-static {p1, p3}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->-$$Nest$fputmImportedAlias(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$1;->this$0:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    array-length p3, p2

    new-array p3, p3, [Ljava/lang/Byte;

    invoke-static {p1, p3}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->-$$Nest$fputmImportedHash(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;[Ljava/lang/Byte;)V

    const/4 p1, 0x0

    .line 92
    :goto_0
    array-length p3, p2

    if-ge p1, p3, :cond_1

    .line 94
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$1;->this$0:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->-$$Nest$fgetmImportedHash(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;)[Ljava/lang/Byte;

    move-result-object p3

    aget-byte v0, p2, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    sget-object p3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p2, p3, :cond_1

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$1;->this$0:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->-$$Nest$fgetmImportLock(Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 101
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
