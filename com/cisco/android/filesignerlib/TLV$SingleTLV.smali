.class Lcom/cisco/android/filesignerlib/TLV$SingleTLV;
.super Ljava/lang/Object;
.source "TLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/filesignerlib/TLV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTLV"
.end annotation


# static fields
.field private static final TLV_ATTRIBUTE_FORMAT_BIT:S = -0x8000s


# instance fields
.field private mBasicValue:S

.field private mIsBasicTlv:Z

.field private mType:S

.field private mValueBytes:[B

.field final synthetic this$0:Lcom/cisco/android/filesignerlib/TLV;


# direct methods
.method static bridge synthetic -$$Nest$mGetSize(Lcom/cisco/android/filesignerlib/TLV$SingleTLV;)I
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->GetSize()I

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/cisco/android/filesignerlib/TLV;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->this$0:Lcom/cisco/android/filesignerlib/TLV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 581
    iput-boolean p1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    const/4 p1, 0x0

    .line 582
    iput-short p1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    .line 583
    iput-short p1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mBasicValue:S

    const/4 p1, 0x0

    .line 584
    iput-object p1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/android/filesignerlib/TLV;Lcom/cisco/android/filesignerlib/TLV$SingleTLV-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;-><init>(Lcom/cisco/android/filesignerlib/TLV;)V

    return-void
.end method

.method private Clear()V
    .locals 1

    const/4 v0, 0x1

    .line 947
    iput-boolean v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    const/4 v0, 0x0

    .line 948
    iput-short v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    .line 949
    iput-short v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mBasicValue:S

    const/4 v0, 0x0

    .line 950
    iput-object v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    return-void
.end method

.method private GetSize()I
    .locals 2

    .line 972
    iget-boolean v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    array-length v0, v0

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public GetAttribute(Lcom/cisco/android/filesignerlib/TLV$BasicTLV;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 761
    iget-boolean v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    if-eqz v0, :cond_0

    .line 766
    iget-short v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    iput-short v0, p1, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;->mType:S

    .line 767
    iget-short v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mBasicValue:S

    iput-short v0, p1, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;->mValue:S

    return-void

    .line 763
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a basic TLV field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 758
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BasicTLV can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetAttribute(Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 795
    iget-boolean v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    if-nez v0, :cond_0

    .line 800
    iget-short v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    iput-short v0, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mType:S

    .line 801
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    .line 803
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    iget-object p1, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    iget-object v1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 797
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A basic TLV field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 792
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NonBasicTLV can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetBuffer()[B
    .locals 3

    .line 826
    invoke-direct {p0}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->GetSize()I

    move-result v0

    new-array v0, v0, [B

    .line 829
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 831
    iget-boolean v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    if-eqz v2, :cond_0

    .line 833
    iget-short v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    or-int/lit16 v2, v2, -0x8000

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 834
    iget-short v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mBasicValue:S

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 838
    :cond_0
    iget-short v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 839
    iget-object v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    array-length v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 841
    iget-object v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0
.end method

.method public GetType()S
    .locals 1

    .line 928
    iget-short v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    return v0
.end method

.method public IsBasicValue()Z
    .locals 1

    .line 642
    iget-boolean v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    return v0
.end method

.method public SetAttribute(Lcom/cisco/android/filesignerlib/TLV$BasicTLV;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 675
    iget-short v0, p1, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;->mType:S

    const/16 v1, -0x8000

    and-int/2addr v0, v1

    if-eq v1, v0, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->Clear()V

    const/4 v0, 0x1

    .line 683
    iput-boolean v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    .line 684
    iget-short v0, p1, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;->mType:S

    iput-short v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    .line 685
    iget-short p1, p1, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;->mValue:S

    iput-short p1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mBasicValue:S

    return-void

    .line 678
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TLV format bit set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 668
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BasicTLV must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public SetAttribute(Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 718
    iget-short v0, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mType:S

    const/16 v1, -0x8000

    and-int/2addr v0, v1

    if-eq v1, v0, :cond_0

    .line 724
    invoke-direct {p0}, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->Clear()V

    const/4 v0, 0x0

    .line 726
    iput-boolean v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    .line 727
    iget-short v1, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mType:S

    iput-short v1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    .line 729
    iget-object v1, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    .line 731
    iget-object v1, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    iget-object v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    iget-object p1, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    array-length p1, p1

    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 721
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TLV format bit set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 711
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NonBasicTLV must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public SetBuffer([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "byte[] does not contains a valid TLV stream"

    if-eqz p1, :cond_3

    .line 874
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 878
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/lit16 v2, v1, -0x8000

    const/16 v3, -0x8000

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 881
    :goto_0
    iput-boolean v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    if-eqz v2, :cond_1

    and-int/lit16 v1, v1, 0x7fff

    int-to-short v1, v1

    .line 887
    iput-short v1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    .line 889
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mBasicValue:S

    goto :goto_1

    .line 893
    :cond_1
    iput-short v1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    .line 895
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    if-ltz v1, :cond_2

    .line 900
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    .line 901
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    return-void

    .line 898
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 869
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byte[] must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 613
    iget-boolean v0, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mIsBasicTlv:Z

    const-string v1, "]"

    const-string v2, "Type["

    if-eqz v0, :cond_0

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Value["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mBasicValue:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mType:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Length["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Value["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/cisco/android/filesignerlib/TLV$SingleTLV;->mValueBytes:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
