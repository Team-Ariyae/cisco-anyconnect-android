.class public Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;
.super Ljava/lang/Object;
.source "CertUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertValidity"
.end annotation


# instance fields
.field public final isExpired:Z

.field public final isNotYetValid:Z

.field public final notAfterColor:I

.field public final notBeforeColor:I


# direct methods
.method public constructor <init>(ZZII)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->isNotYetValid:Z

    .line 42
    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->isExpired:Z

    .line 43
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->notBeforeColor:I

    .line 44
    iput p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->notAfterColor:I

    return-void
.end method
