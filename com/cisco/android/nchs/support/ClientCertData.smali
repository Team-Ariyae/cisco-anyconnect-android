.class public Lcom/cisco/android/nchs/support/ClientCertData;
.super Ljava/lang/Object;
.source "ClientCertData.java"


# instance fields
.field private name:Ljava/lang/String;

.field private x509bytes:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/cisco/android/nchs/support/ClientCertData;->x509bytes:[B

    .line 9
    iput-object p2, p0, Lcom/cisco/android/nchs/support/ClientCertData;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ClientCertData;->x509bytes:[B

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ClientCertData;->name:Ljava/lang/String;

    return-object v0
.end method
