.class public Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;
.super Ljava/lang/Object;
.source "RegistrationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/registration/RegistrationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private apiKey:Ljava/lang/String;

.field private deviceKey:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private organizationId:Ljava/lang/String;

.field private registrationToken:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateConfig()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->organizationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->registrationToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->deviceKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->label:Ljava/lang/String;

    .line 127
    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->organizationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isUnManagedEnv()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->registrationToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isRegTokenInvalid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "regToken value is invalid."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 131
    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "orgId value is invalid."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Mandatory parameters are missing."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/cisco/umbrella/registration/RegistrationConfig;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->validateConfig()V

    .line 140
    new-instance v7, Lcom/cisco/umbrella/registration/RegistrationConfig;

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->apiKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->organizationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->registrationToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->deviceKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->label:Ljava/lang/String;

    iget-object v6, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->serialNumber:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/cisco/umbrella/registration/RegistrationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public setApiKey(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceKey(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->deviceKey:Ljava/lang/String;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public setOrganizationId(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->organizationId:Ljava/lang/String;

    return-object p0
.end method

.method public setRegistrationToken(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->registrationToken:Ljava/lang/String;

    return-object p0
.end method

.method public setSerialNumber(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->serialNumber:Ljava/lang/String;

    return-object p0
.end method
