.class public Lcom/cisco/android/filesignerlib/TLV$BasicTLV;
.super Ljava/lang/Object;
.source "TLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/filesignerlib/TLV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicTLV"
.end annotation


# instance fields
.field public mType:S

.field public mValue:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-short v0, p0, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;->mType:S

    .line 77
    iput-short v0, p0, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;->mValue:S

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-short p1, p0, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;->mType:S

    .line 71
    iput-short p2, p0, Lcom/cisco/android/filesignerlib/TLV$BasicTLV;->mValue:S

    return-void
.end method
