.class public Lcom/cisco/android/filesignerlib/TLV;
.super Ljava/lang/Object;
.source "TLV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/filesignerlib/TLV$SingleTLV;,
        Lcom/cisco/android/filesignerlib/TLV$TlvHandle;,
        Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;,
        Lcom/cisco/android/filesignerlib/TLV$BasicTLV;
    }
.end annotation


# static fields
.field private static final TLV_BASIC_SIZE:I = 0x2


# instance fields
.field private mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

.field private mTlvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/android/filesignerlib/TLV$SingleTLV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    return-void
.end method

.method private GetSize()I
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;

    .line 563
    invoke-static {v2}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->-$$Nest$mGetSize(Lcom/cisco/android/filesignerlib/TLV$SingleTLV;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public AddAttribute(Lcom/cisco/android/filesignerlib/TLV$BasicTLV;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 279
    new-instance v0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;-><init>(Lcom/cisco/android/filesignerlib/TLV;Lcom/cisco/android/filesignerlib/TLV$SingleTLV-IA;)V

    .line 281
    invoke-virtual {v0, p1}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->SetAttribute(Lcom/cisco/android/filesignerlib/TLV$BasicTLV;)V

    .line 283
    iget-object p1, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BasicTLV must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public AddAttribute(Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 311
    new-instance v0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;-><init>(Lcom/cisco/android/filesignerlib/TLV;Lcom/cisco/android/filesignerlib/TLV$SingleTLV-IA;)V

    .line 313
    invoke-virtual {v0, p1}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->SetAttribute(Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V

    .line 315
    iget-object p1, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 308
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NonBasicTLV must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetAttribute(Lcom/cisco/android/filesignerlib/TLV$TlvHandle;Lcom/cisco/android/filesignerlib/TLV$BasicTLV;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    iget p1, p1, Lcom/cisco/android/filesignerlib/TLV$TlvHandle;->mTlvHandle:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;

    .line 221
    invoke-virtual {p1, p2}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->GetAttribute(Lcom/cisco/android/filesignerlib/TLV$BasicTLV;)V

    return-void
.end method

.method public GetAttribute(Lcom/cisco/android/filesignerlib/TLV$TlvHandle;Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    iget p1, p1, Lcom/cisco/android/filesignerlib/TLV$TlvHandle;->mTlvHandle:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;

    .line 250
    invoke-virtual {p1, p2}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->GetAttribute(Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V

    return-void
.end method

.method public GetInfoByType(S)[B
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;

    .line 513
    invoke-virtual {v1}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->GetType()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 515
    invoke-virtual {v1}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->IsBasicValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 517
    new-instance p1, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;

    invoke-direct {p1}, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;-><init>()V

    .line 518
    invoke-virtual {v1, p1}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->GetAttribute(Lcom/cisco/android/filesignerlib/TLV$BasicTLV;)V

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 522
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 523
    iget-short p1, p1, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;->mValue:S

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object v0

    .line 529
    :cond_1
    new-instance p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;

    invoke-direct {p1}, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;-><init>()V

    .line 530
    invoke-virtual {v1, p1}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->GetAttribute(Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V

    .line 532
    iget-object p1, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public GetTlv()[B
    .locals 6

    .line 397
    invoke-direct {p0}, Lcom/cisco/android/filesignerlib/TLV;->GetSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 404
    :cond_0
    new-array v0, v0, [B

    .line 407
    iget-object v1, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 409
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;

    .line 411
    invoke-virtual {v4}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->GetBuffer()[B

    move-result-object v4

    if-eqz v4, :cond_2

    .line 415
    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 423
    :cond_2
    iget-object v4, p0, Lcom/cisco/android/filesignerlib/TLV;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz v4, :cond_1

    const-string v5, "GetTlv singleTlv.GetBuffer return null"

    .line 425
    invoke-interface {v4, v5}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public HasNextTlv(Lcom/cisco/android/filesignerlib/TLV$TlvHandle;)Z
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p1, p1, Lcom/cisco/android/filesignerlib/TLV$TlvHandle;->mTlvHandle:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    if-le v0, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public IsBasicValue(Lcom/cisco/android/filesignerlib/TLV$TlvHandle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    iget p1, p1, Lcom/cisco/android/filesignerlib/TLV$TlvHandle;->mTlvHandle:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;

    .line 193
    invoke-virtual {p1}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->IsBasicValue()Z

    move-result p1

    return p1
.end method

.method public NextTlv(Lcom/cisco/android/filesignerlib/TLV$TlvHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 339
    iget v1, p1, Lcom/cisco/android/filesignerlib/TLV$TlvHandle;->mTlvHandle:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 341
    iget v0, p1, Lcom/cisco/android/filesignerlib/TLV$TlvHandle;->mTlvHandle:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/cisco/android/filesignerlib/TLV$TlvHandle;->mTlvHandle:I

    return-void

    .line 345
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public SetTlv([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 459
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 467
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 469
    new-instance v3, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;-><init>(Lcom/cisco/android/filesignerlib/TLV;Lcom/cisco/android/filesignerlib/TLV$SingleTLV-IA;)V

    .line 471
    array-length v4, p1

    sub-int/2addr v4, v2

    new-array v5, v4, [B

    .line 473
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 474
    invoke-virtual {v0, v5, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 477
    invoke-virtual {v3, v5}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->SetBuffer([B)V

    .line 479
    iget-object v4, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-static {v3}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->-$$Nest$mGetSize(Lcom/cisco/android/filesignerlib/TLV$SingleTLV;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void

    .line 456
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must not pass byte[] equal to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setLogger(Lcom/cisco/android/filesignerlib/LogInterface;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/cisco/android/filesignerlib/TLV;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "TLV [\n"

    const/4 v1, 0x0

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/cisco/android/filesignerlib/TLV;->mTlvList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
