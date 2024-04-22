.class public Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;
.super Ljava/lang/Object;
.source "UACHttpBackOffUnsuccessfulResponseHandler.java"

# interfaces
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# static fields
.field private static final ALL_400_BACKOFF_REQUIRED:Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;

.field private static final BASE_HTTP_BACKOFF_REQUIRED:Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;

.field private static final STATUS_CODE_TOO_MANY_REQUESTS:I = 0x1ad

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private backOff429And5xx:Lcom/google/api/client/util/BackOff;

.field private backOff4xx:Lcom/google/api/client/util/BackOff;

.field private scheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;->ON_SERVER_ERROR:Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;

    sput-object v0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->BASE_HTTP_BACKOFF_REQUIRED:Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;

    .line 20
    new-instance v0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler$1;

    invoke-direct {v0}, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler$1;-><init>()V

    sput-object v0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->ALL_400_BACKOFF_REQUIRED:Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;

    const-string v0, "UACHttpBackOffUnsuccessfulResponseHandler"

    .line 31
    sput-object v0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UACHttpBackOffUnsuccessfulResponseHandler ::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    .line 55
    :cond_0
    sget-object p3, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->BASE_HTTP_BACKOFF_REQUIRED:Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;

    invoke-interface {p3, p2}, Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;->isRequired(Lcom/google/api/client/http/HttpResponse;)Z

    move-result p3

    if-nez p3, :cond_4

    const/16 p3, 0x1ad

    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    sget-object p3, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->ALL_400_BACKOFF_REQUIRED:Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;

    invoke-interface {p3, p2}, Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;->isRequired(Lcom/google/api/client/http/HttpResponse;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 60
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "All 400 Backoff "

    invoke-static {p2, v1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->backOff429And5xx:Lcom/google/api/client/util/BackOff;

    if-eqz p2, :cond_2

    .line 62
    invoke-interface {p2}, Lcom/google/api/client/util/BackOff;->reset()V

    .line 63
    :cond_2
    iget-object p2, p0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->backOff4xx:Lcom/google/api/client/util/BackOff;

    if-eqz p2, :cond_5

    .line 64
    invoke-interface {p2}, Lcom/google/api/client/util/BackOff;->nextBackOffMillis()J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long v0, v2, p2

    if-nez v0, :cond_3

    .line 66
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "Maximum retries reached. Stopping."

    invoke-static {p2, v1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->scheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    invoke-virtual {v0, p2, p3}, Lcom/cisco/umbrella/registration/RegistrationScheduler;->schedule(J)V

    goto :goto_1

    .line 56
    :cond_4
    :goto_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "429 and All 5xx "

    invoke-static {p2, v1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->backOff429And5xx:Lcom/google/api/client/util/BackOff;

    if-eqz p2, :cond_5

    .line 58
    iget-object p3, p0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->scheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    invoke-interface {p2}, Lcom/google/api/client/util/BackOff;->nextBackOffMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/cisco/umbrella/registration/RegistrationScheduler;->schedule(J)V

    :cond_5
    :goto_1
    return p1
.end method

.method public setBackOff429And5xx(Lcom/google/api/client/util/BackOff;)Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->backOff429And5xx:Lcom/google/api/client/util/BackOff;

    return-object p0
.end method

.method public setBackOff4xx(Lcom/google/api/client/util/BackOff;)Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->backOff4xx:Lcom/google/api/client/util/BackOff;

    return-object p0
.end method

.method public setScheduler(Lcom/cisco/umbrella/registration/RegistrationScheduler;)Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/umbrella/registration/RegistrationScheduler;

    iput-object p1, p0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->scheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    return-object p0
.end method
