.class Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler$1;
.super Ljava/lang/Object;
.source "UACHttpBackOffUnsuccessfulResponseHandler.java"

# interfaces
.implements Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRequired(Lcom/google/api/client/http/HttpResponse;)Z
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result p1

    div-int/lit8 p1, p1, 0x64

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
