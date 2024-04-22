.class Lcom/cisco/android/nchs/support/CertificateManager$2;
.super Ljava/util/LinkedHashMap;
.source "CertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/CertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "[",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/CertificateManager;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/CertificateManager;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager$2;->this$0:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager$2;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
