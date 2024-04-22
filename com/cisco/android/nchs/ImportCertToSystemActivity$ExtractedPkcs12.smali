.class public Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;
.super Ljava/lang/Object;
.source "ImportCertToSystemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/ImportCertToSystemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractedPkcs12"
.end annotation


# instance fields
.field public mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public mUserCert:Ljava/security/cert/X509Certificate;

.field public mUserKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mCaCerts:Ljava/util/List;

    return-void
.end method
