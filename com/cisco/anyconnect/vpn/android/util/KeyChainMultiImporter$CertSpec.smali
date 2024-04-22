.class Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;
.super Ljava/lang/Object;
.source "KeyChainMultiImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertSpec"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field category:Ljava/lang/String;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->alias:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->category:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$CertSpec;->tag:Ljava/lang/String;

    return-void
.end method
