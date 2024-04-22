.class Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IPCWriteTask;
.super Ljava/lang/Object;
.source "ThreadedDgramChannel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/ThreadedDgramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IPCWriteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWritable:Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IWritableContent;

.field final synthetic this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/common/ThreadedDgramChannel;Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IWritableContent;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IPCWriteTask;->this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IPCWriteTask;->mWritable:Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IWritableContent;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IPCWriteTask;->mWritable:Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IWritableContent;

    iget-object v1, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IPCWriteTask;->this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;

    iget-object v1, v1, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IPCWriteTask;->this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;

    iget-object v2, v2, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mWriteBuffer:[B

    invoke-interface {v0, v1, v2}, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IWritableContent;->writeTo(Ljava/io/OutputStream;[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IPCWriteTask;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
