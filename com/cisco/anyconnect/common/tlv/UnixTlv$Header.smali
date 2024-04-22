.class Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;
.super Ljava/lang/Object;
.source "UnixTlv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/tlv/UnixTlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Header"
.end annotation


# instance fields
.field len:I

.field type:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;->type:I

    .line 32
    iput p2, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;->len:I

    return-void
.end method
