.class public Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;
.super Ljava/lang/Object;
.source "TLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/filesignerlib/TLV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonBasicTLV"
.end annotation


# instance fields
.field public mType:S

.field public mValueBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-short v0, p0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mType:S

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    return-void
.end method

.method public constructor <init>(S[B)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-short p1, p0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mType:S

    .line 98
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    const/4 v0, 0x0

    .line 99
    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
