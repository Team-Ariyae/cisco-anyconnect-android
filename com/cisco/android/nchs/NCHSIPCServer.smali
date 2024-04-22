.class public Lcom/cisco/android/nchs/NCHSIPCServer;
.super Lcom/cisco/android/nchs/ipc/IPCServerBase;
.source "NCHSIPCServer.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NCHSIPCServer"


# instance fields
.field private final mService:Lcom/cisco/android/nchs/NetworkComponentHostService;


# direct methods
.method public constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V
    .locals 1

    const-string v0, "NCHS"

    .line 54
    invoke-direct {p0, v0, p2, p3}, Lcom/cisco/android/nchs/ipc/IPCServerBase;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V

    .line 55
    iput-object p1, p0, Lcom/cisco/android/nchs/NCHSIPCServer;->mService:Lcom/cisco/android/nchs/NetworkComponentHostService;

    return-void
.end method

.method private declared-synchronized getService()Lcom/cisco/android/nchs/NetworkComponentHostService;
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/NCHSIPCServer;->mService:Lcom/cisco/android/nchs/NetworkComponentHostService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected callServiceMethod(Lcom/cisco/android/nchs/codes/IOpcode;Ljava/util/ArrayList;Landroid/net/LocalSocket;Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/codes/IOpcode;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;",
            "Landroid/net/LocalSocket;",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSIPCServer;->getService()Lcom/cisco/android/nchs/NetworkComponentHostService;

    move-result-object v0

    .line 80
    invoke-interface {p1}, Lcom/cisco/android/nchs/codes/IOpcode;->getCode()B

    move-result p1

    invoke-static {p1}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->getOpCodeForCode(I)Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    move-result-object p1

    .line 81
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallServiceMethod(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " arguments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "NCHSIPCServer"

    invoke-static {v1, v6, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 85
    new-instance p4, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;

    invoke-direct {p4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;-><init>()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->clearArguments()V

    .line 93
    :goto_0
    invoke-virtual {p3}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    .line 95
    sget-object p3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 96
    sget-object p3, Lcom/cisco/android/nchs/NCHSIPCServer$1;->$SwitchMap$com$cisco$android$nchs$codes$NCHSOpcodeEnum:[I

    invoke-virtual {p1}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 282
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    .line 275
    :pswitch_0
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 276
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 277
    invoke-virtual {v0, p1, p2, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->onServiceReady(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    .line 249
    :pswitch_1
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 251
    iget-object p1, p0, Lcom/cisco/android/nchs/NCHSIPCServer;->mService:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 254
    :cond_1
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    .line 255
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    .line 256
    invoke-static {}, Lcom/cisco/android/nchs/aidl/NCHSState;->values()[Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object p3

    .line 257
    array-length v2, p3

    if-lt p2, v2, :cond_2

    .line 259
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "UPDATE_COMPONENT_STATE failed due to invalid state: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v6, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 264
    :cond_2
    aget-object p2, p3, p2

    .line 265
    new-instance v4, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;

    invoke-direct {v4, p2}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSState;)V

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateComponentState(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 271
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    :pswitch_2
    new-array p1, p3, [Ljava/lang/String;

    .line 210
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    aput-object p3, p1, v4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    aput-object p3, p1, v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    aput-object p2, p1, v2

    aget-object p2, p1, v4

    aget-object p3, p1, v3

    .line 213
    invoke-virtual {v0, v1, p2, p3, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->installApplicationAPK(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    .line 217
    sget-object p3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p3, p2, :cond_3

    .line 219
    invoke-virtual {p0, v4}, Lcom/cisco/android/nchs/NCHSIPCServer;->signalRequestedOperationCompleted(Z)V

    .line 222
    :cond_3
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSIPCServer;->waitForRequestedEvent()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    .line 225
    sget-object p3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p3, p2, :cond_4

    .line 227
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "Install operation failed, not continuing to firing intent"

    invoke-static {p1, v6, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p4, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    :cond_4
    aget-object p1, p1, v2

    const/4 p2, 0x0

    .line 233
    invoke-virtual {v0, p1, v4, p2, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startExternalActivity(Ljava/lang/String;ZLandroid/content/Intent;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 238
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p2, p1, :cond_5

    .line 240
    invoke-virtual {p0, v4}, Lcom/cisco/android/nchs/NCHSIPCServer;->signalRequestedOperationCompleted(Z)V

    .line 243
    :cond_5
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSIPCServer;->waitForRequestedEvent()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 245
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    .line 194
    :pswitch_3
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v1, p1, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->uninstallApplicationAPK(Landroid/net/Credentials;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 199
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p2, p1, :cond_6

    .line 201
    invoke-virtual {p0, v4}, Lcom/cisco/android/nchs/NCHSIPCServer;->signalRequestedOperationCompleted(Z)V

    .line 204
    :cond_6
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSIPCServer;->waitForRequestedEvent()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 206
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    :pswitch_4
    new-array p1, v2, [Ljava/lang/String;

    .line 177
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    aput-object p3, p1, v4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    aput-object p2, p1, v3

    aget-object p1, p1, v4

    .line 179
    invoke-virtual {v0, v1, p1, p2, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->installApplicationAPK(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 183
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p2, p1, :cond_7

    .line 185
    invoke-virtual {p0, v4}, Lcom/cisco/android/nchs/NCHSIPCServer;->signalRequestedOperationCompleted(Z)V

    .line 188
    :cond_7
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSIPCServer;->waitForRequestedEvent()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 190
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    .line 156
    :pswitch_5
    new-instance p1, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;

    invoke-direct {p1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;-><init>()V

    .line 158
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    .line 159
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p1

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNetworkComponentProperty(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    .line 162
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_8

    .line 164
    sget-object p3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 166
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Failed to add property to argument list.  failing"

    invoke-static {p1, v6, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->clearArguments()V

    .line 168
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    .line 173
    :cond_8
    invoke-virtual {p4, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    .line 148
    :pswitch_6
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 149
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    .line 150
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->setNetworkComponentProperty(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 152
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    .line 141
    :pswitch_7
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1, p1, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isNetworkComponentInstalled(Landroid/net/Credentials;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 143
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    .line 133
    :pswitch_8
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 134
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1, p1, p2, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isNativeServiceRunning(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 136
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_1

    .line 125
    :pswitch_9
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 126
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1, p1, p2, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopNativeService(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 128
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto :goto_1

    .line 117
    :pswitch_a
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 118
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1, p1, p2, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startNativeService(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 120
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto :goto_1

    .line 109
    :pswitch_b
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1, p1, v3, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->uninstallNetworkComponent(Landroid/net/Credentials;Ljava/lang/String;ZZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 112
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto :goto_1

    .line 99
    :pswitch_c
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 100
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 101
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 102
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    move-object v2, p1

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->installNetworkComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 104
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getNewOpCodeInterface(B)Lcom/cisco/android/nchs/codes/IOpcode;
    .locals 1

    .line 290
    new-instance v0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;

    invoke-direct {v0, p1}, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;-><init>(B)V

    return-object v0
.end method
