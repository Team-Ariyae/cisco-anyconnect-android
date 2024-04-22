.class public final Lcom/cisco/umbrella/registration/RegistrationHandler;
.super Ljava/lang/Object;
.source "RegistrationHandler.java"

# interfaces
.implements Lcom/cisco/umbrella/registration/IRegistrationHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegistrationHandler"

.field private static registrationHandlerInstance:Lcom/cisco/umbrella/registration/RegistrationHandler;


# instance fields
.field private errorHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

.field private jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/cisco/umbrella/registration/RegistrationHandler;

    invoke-direct {v0}, Lcom/cisco/umbrella/registration/RegistrationHandler;-><init>()V

    sput-object v0, Lcom/cisco/umbrella/registration/RegistrationHandler;->registrationHandlerInstance:Lcom/cisco/umbrella/registration/RegistrationHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationHandler;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 38
    new-instance v0, Lcom/google/api/client/json/JsonObjectParser;

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationHandler;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v0, v1}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationHandler;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    return-void
.end method

.method private getHttpResponse(Lcom/cisco/umbrella/registration/RegistrationConfig;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/umbrella/registration/RegistrationConfig;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/api/client/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationHandler;->TAG:Ljava/lang/String;

    const-string v2, " getHttpResponse invoked : "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/net/URL;

    const-string v2, "registrationUrl"

    invoke-static {v2}, Lcom/cisco/umbrella/util/ConfigHelper;->getRegistrationConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationConfig;->getOrganizationId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v2, Lcom/google/api/client/util/ExponentialBackOff$Builder;

    invoke-direct {v2}, Lcom/google/api/client/util/ExponentialBackOff$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->build()Lcom/google/api/client/util/ExponentialBackOff;

    move-result-object v2

    .line 60
    new-instance v4, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v4}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    const-string v5, "X-UMBRELLA-ORGANIZATION-TOKEN"

    .line 61
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationConfig;->getRegistrationToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 63
    new-instance v5, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v5}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    invoke-virtual {v5}, Lcom/google/api/client/http/javanet/NetHttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v5

    .line 64
    new-instance v6, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v6, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/net/URL;)V

    new-instance v0, Lcom/google/api/client/http/json/JsonHttpContent;

    iget-object v7, p0, Lcom/cisco/umbrella/registration/RegistrationHandler;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v0, v7, p1}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v5, v6, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v4}, Lcom/google/api/client/http/HttpRequest;->setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v3}, Lcom/google/api/client/http/HttpRequest;->setLoggingEnabled(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationHandler;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    .line 68
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    move-result-object p1

    new-instance v0, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;

    invoke-direct {v0, v2}, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;-><init>(Lcom/google/api/client/util/BackOff;)V

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setIOExceptionHandler(Lcom/google/api/client/http/HttpIOExceptionHandler;)Lcom/google/api/client/http/HttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationHandler;->errorHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v3}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object p1

    .line 73
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Starting exponential backoff"

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->executeAsync()Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/cisco/umbrella/registration/RegistrationHandler;
    .locals 1

    .line 46
    sget-object v0, Lcom/cisco/umbrella/registration/RegistrationHandler;->registrationHandlerInstance:Lcom/cisco/umbrella/registration/RegistrationHandler;

    return-object v0
.end method

.method private registerWithCloud(Lcom/cisco/umbrella/registration/RegistrationConfig;)Lcom/cisco/umbrella/registration/RegistrationData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/RegistrationHandler;->getHttpResponse(Lcom/cisco/umbrella/registration/RegistrationConfig;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/HttpResponse;

    .line 84
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationHandler;->TAG:Ljava/lang/String;

    const-string v2, "getHttpResponse : "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-class v0, Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/umbrella/registration/RegistrationData;

    .line 86
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 87
    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationHandler;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v2, v0}, Lcom/google/api/client/json/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    .line 88
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RegistrationData is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public register(Lcom/cisco/umbrella/registration/RegistrationConfig;)Lcom/cisco/umbrella/registration/RegistrationData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationHandler;->TAG:Ljava/lang/String;

    const-string v2, "Register invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/RegistrationHandler;->registerWithCloud(Lcom/cisco/umbrella/registration/RegistrationConfig;)Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object p1

    return-object p1
.end method

.method public setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationHandler;->errorHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    return-void
.end method
