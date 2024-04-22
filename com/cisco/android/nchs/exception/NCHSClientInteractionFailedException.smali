.class public Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;
.super Ljava/lang/Exception;
.source "NCHSClientInteractionFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mSocketIPCMessage:Lcom/cisco/android/nchs/ipc/IPCReturnMessage;


# direct methods
.method public constructor <init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 1

    const-string v0, "NCHS Client Interaction did not complete successfully"

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;->mSocketIPCMessage:Lcom/cisco/android/nchs/ipc/IPCReturnMessage;

    return-void
.end method

.method public constructor <init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;->mSocketIPCMessage:Lcom/cisco/android/nchs/ipc/IPCReturnMessage;

    return-void
.end method


# virtual methods
.method public getSocketIPCMessage()Lcom/cisco/android/nchs/ipc/IPCReturnMessage;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;->mSocketIPCMessage:Lcom/cisco/android/nchs/ipc/IPCReturnMessage;

    return-object v0
.end method
