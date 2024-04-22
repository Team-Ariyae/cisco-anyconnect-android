.class public Lcom/cisco/android/nchs/ipc/IPCReturnMessage;
.super Ljava/lang/Object;
.source "IPCReturnMessage.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "IPCReturnMessage"


# instance fields
.field private mArgs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseFdsAfterSend:Z

.field private mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field private mFileDescriptors:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mArgs:Ljava/util/LinkedList;

    .line 43
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mCloseFdsAfterSend:Z

    return-void
.end method

.method public constructor <init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mArgs:Ljava/util/LinkedList;

    .line 56
    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mCloseFdsAfterSend:Z

    return-void
.end method

.method private getFDArray()[Ljava/io/FileDescriptor;
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    array-length v0, v0

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 125
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z
    .locals 2

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mArgs:Ljava/util/LinkedList;

    new-instance v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-direct {v1, p1, p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z
    .locals 1

    .line 174
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mArgs:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearArguments()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mArgs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mArgs:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object v0
.end method

.method public getFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->getFDArray()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasFileDescriptorsForSend()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSendComplete()V
    .locals 8

    .line 87
    iget-boolean v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mCloseFdsAfterSend:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->hasFileDescriptorsForSend()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 101
    :try_start_0
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 105
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ioexception closing fd: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "IPCReturnMessage"

    invoke-static {v5, v6, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public setCloseFdsAfterSend(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mCloseFdsAfterSend:Z

    return-void
.end method

.method public setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-void
.end method

.method public setFileDesciptorsForSend([Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->mFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method
