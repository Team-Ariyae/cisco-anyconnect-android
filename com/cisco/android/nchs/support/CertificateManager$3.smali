.class Lcom/cisco/android/nchs/support/CertificateManager$3;
.super Ljava/util/ArrayList;
.source "CertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/support/CertificateManager;->mapCertAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/CertificateManager;

.field final synthetic val$certAlias:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/CertificateManager;Ljava/lang/String;)V
    .locals 0

    .line 2717
    iput-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager$3;->this$0:Lcom/cisco/android/nchs/support/CertificateManager;

    iput-object p2, p0, Lcom/cisco/android/nchs/support/CertificateManager$3;->val$certAlias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2718
    invoke-virtual {p0, p2}, Lcom/cisco/android/nchs/support/CertificateManager$3;->add(Ljava/lang/Object;)Z

    return-void
.end method
