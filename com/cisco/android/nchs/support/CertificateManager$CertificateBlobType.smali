.class public final enum Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;
.super Ljava/lang/Enum;
.source "CertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/CertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertificateBlobType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

.field public static final enum TYPE_CERTIFICATE:Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

.field public static final enum TYPE_PKCS12:Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 167
    new-instance v0, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    const-string v1, "TYPE_CERTIFICATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->TYPE_CERTIFICATE:Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    .line 168
    new-instance v1, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    const-string v3, "TYPE_PKCS12"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->TYPE_PKCS12:Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 165
    sput-object v3, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->$VALUES:[Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;
    .locals 1

    .line 165
    const-class v0, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;
    .locals 1

    .line 165
    sget-object v0, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->$VALUES:[Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    return-object v0
.end method
