.class public Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;
.super Ljava/lang/Exception;
.source "FileRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileRetrieverException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDetailMessage:Ljava/lang/String;

.field private mResult:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->mResult:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->mResult:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    .line 74
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->mDetailMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->mDetailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->mResult:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    return-object v0
.end method
