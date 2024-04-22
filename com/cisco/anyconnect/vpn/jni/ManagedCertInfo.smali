.class public Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;
.super Ljava/lang/Object;
.source "ManagedCertInfo.java"


# static fields
.field public static final CERT_PROPERTY_INTERMEDIATE:I = 0x1

.field public static final CERT_PROPERTY_LEAF:I = 0x0

.field public static final CERT_PROPERTY_ROOT:I = 0x2

.field public static final CERT_TYPE_CLIENT:I = 0x0

.field public static final CERT_TYPE_SERVER:I = 0x2

.field public static final CERT_TYPE_SYSTEM_TRUSTED:I = 0x1


# instance fields
.field public certProperty:I

.field public certType:I

.field public derBlob:[B

.field public group:Ljava/lang/String;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
