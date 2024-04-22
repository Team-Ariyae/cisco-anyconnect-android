.class public Lcom/cisco/android/filesignerlib/TLV$TlvHandle;
.super Ljava/lang/Object;
.source "TLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/filesignerlib/TLV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvHandle"
.end annotation


# instance fields
.field public mTlvHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/cisco/android/filesignerlib/TLV$TlvHandle;->mTlvHandle:I

    return-void
.end method
