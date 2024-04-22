.class synthetic Lcom/cisco/android/nchs/support/SystemCertificateManager$1;
.super Ljava/lang/Object;
.source "SystemCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/SystemCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cisco$android$nchs$support$CertificateManager$CertificateBlobType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    invoke-static {}, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->values()[Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/android/nchs/support/SystemCertificateManager$1;->$SwitchMap$com$cisco$android$nchs$support$CertificateManager$CertificateBlobType:[I

    :try_start_0
    sget-object v1, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->TYPE_CERTIFICATE:Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cisco/android/nchs/support/SystemCertificateManager$1;->$SwitchMap$com$cisco$android$nchs$support$CertificateManager$CertificateBlobType:[I

    sget-object v1, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->TYPE_PKCS12:Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
