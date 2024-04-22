.class public Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;
.super Ljava/lang/Object;
.source "ObjectUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashCodeMaker"
.end annotation


# static fields
.field private static final PRIME:I = 0x1f


# instance fields
.field private mHash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 9
    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->mHash:I

    return-void
.end method


# virtual methods
.method public add(I)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;
    .locals 2

    .line 21
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->mHash:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->mHash:I

    return-object p0
.end method

.method public add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->mHash:I

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->mHash:I

    :cond_0
    return-object p0
.end method

.method public add(Z)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;
    .locals 2

    .line 26
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->mHash:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->mHash:I

    return-object p0
.end method

.method public get()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->mHash:I

    return v0
.end method
