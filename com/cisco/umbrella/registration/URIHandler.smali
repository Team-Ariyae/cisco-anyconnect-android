.class public Lcom/cisco/umbrella/registration/URIHandler;
.super Ljava/lang/Object;
.source "URIHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "URIHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractURIData(Ljava/lang/String;)Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;
    .locals 5

    .line 48
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/URIHandler;->TAG:Ljava/lang/String;

    const-string v2, "ExtractURIData Invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2f

    const/4 v1, 0x0

    .line 50
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v0

    .line 53
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "[.]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    array-length v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    return-object v1

    .line 56
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    aget-object v0, v0, v2

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 59
    const-class v2, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

    .line 60
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/registration/URIHandler;->isValidRegistrationData(Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 61
    :cond_1
    invoke-virtual {v0, p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->setRegdToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private isValidRegistrationData(Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;)Z
    .locals 6

    .line 30
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getExp()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    return v4

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getOd()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getTtl()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getIat()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getIss()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getSe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getSub()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getRt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_0
    return v4
.end method

.method private isValidURI(Ljava/lang/String;)Z
    .locals 1

    .line 42
    invoke-static {p1}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "^anyconnect://umbrella/enroll/data/[\\w\\+/]+[=]{0,3}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public validateAndExtractURIData(Ljava/lang/String;)Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/URIHandler;->isValidURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/URIHandler;->extractURIData(Ljava/lang/String;)Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
