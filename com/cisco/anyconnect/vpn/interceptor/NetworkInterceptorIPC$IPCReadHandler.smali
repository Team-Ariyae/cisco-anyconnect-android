.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;
.super Ljava/lang/Object;
.source "NetworkInterceptorIPC.java"

# interfaces
.implements Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IPCReadHandler"
.end annotation


# instance fields
.field mFlowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->mFlowMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)V

    return-void
.end method

.method private getFlowFromIPC(Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/interceptor/ANIException;,
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readShort()S

    move-result v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->from(I)Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;I)V

    .line 148
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->mFlowMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;

    if-eqz p1, :cond_0

    return-object p1

    .line 151
    :cond_0
    new-instance p1, Lcom/cisco/anyconnect/vpn/interceptor/ANIException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "missing NetworkFlow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/interceptor/ANIException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onDatagramRead(Ljava/nio/ByteBuffer;)V
    .locals 10

    const-string/jumbo v0, "unexpected msg type: "

    .line 175
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 177
    new-instance v1, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-direct {v1, p1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 178
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->getMessageType()I

    move-result p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->from(I)Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    move-result-object p1

    .line 180
    sget-object v2, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->Configure:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    if-ne p1, v2, :cond_0

    .line 182
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readBoolean()Z

    move-result p1

    .line 183
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->-$$Nest$fgetmInterceptor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onConfigureResult(Z)V

    goto/16 :goto_0

    .line 185
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->FlowOpened:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    if-ne p1, v2, :cond_1

    .line 187
    new-instance p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;

    .line 188
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->from(I)Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    move-result-object v4

    .line 189
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readIPAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 190
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readInt()I

    move-result v6

    .line 191
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readIPAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 192
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readInt()I

    move-result v8

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->-$$Nest$fgetmInterceptor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    move-result-object v9

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$INetworkFlowCB;)V

    .line 196
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->mFlowMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->getID()Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->getRemainingLength()I

    move-result v0

    if-lez v0, :cond_4

    .line 200
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readBytesSlice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->-$$Nest$fgetmInterceptorCB(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;->handleFlowData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 204
    :cond_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->FlowData:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    if-ne p1, v2, :cond_2

    .line 206
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->getFlowFromIPC(Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;

    move-result-object p1

    .line 207
    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readBytesSlice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->-$$Nest$fgetmInterceptorCB(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;->handleFlowData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 210
    :cond_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->FlowClosed:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    if-ne p1, v2, :cond_3

    .line 212
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->getFlowFromIPC(Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->-$$Nest$fgetmInterceptorCB(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;->handleFlowClosed(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;)V

    .line 214
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->setClosed()V

    .line 215
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->mFlowMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->getID()Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "unexpected read exc"

    .line 225
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onReadException(Ljava/lang/Exception;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->-$$Nest$fgetmInterceptor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onIPCException(Ljava/lang/Exception;)V

    return-void
.end method

.method public onReadShutdown()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->-$$Nest$fgetmInterceptor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onIPCReadShutdown()V

    return-void
.end method
