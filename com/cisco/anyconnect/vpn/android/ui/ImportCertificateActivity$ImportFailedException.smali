.class Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;
.super Ljava/lang/Exception;
.source "ImportCertificateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImportFailedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;->mErrorText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorText()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;->mErrorText:Ljava/lang/String;

    return-object v0
.end method
