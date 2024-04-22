.class public Lcom/cisco/anyconnect/vpn/jni/CertConfirmReason;
.super Ljava/lang/Object;
.source "CertConfirmReason.java"


# static fields
.field public static EXPIRED:I = 0x2

.field public static INVALID_DATE:I = 0x9

.field public static INVALID_USE:I = 0x5

.field public static KEY_SIZE:I = 0xb

.field public static MALFORMED:I = 0x7

.field public static NAME_MISMATCH:I = 0x1

.field public static NOT_FIPS_COMPLIANT:I = 0x8

.field public static NOT_YET_VALID:I = 0x3

.field public static REVOKED:I = 0x6

.field public static SIGNATURE_ALGORITHM:I = 0xa

.field public static UNSPECIFIED:I = 0x0

.field public static UNTRUSTED_SOURCE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
