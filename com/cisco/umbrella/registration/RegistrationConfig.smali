.class public final Lcom/cisco/umbrella/registration/RegistrationConfig;
.super Ljava/lang/Object;
.source "RegistrationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;
    }
.end annotation


# instance fields
.field private apiKey:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private deviceKey:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private organizationId:Ljava/lang/String;

.field private registrationToken:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->apiKey:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->deviceKey:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->label:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->organizationId:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->registrationToken:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->serialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 67
    instance-of v0, p1, Lcom/cisco/umbrella/registration/RegistrationConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    check-cast p1, Lcom/cisco/umbrella/registration/RegistrationConfig;

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationConfig;->getOrganizationId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->organizationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationConfig;->getRegistrationToken()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->registrationToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationConfig;->getDeviceKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->deviceKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationConfig;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationConfig;->getLabel()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->deviceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->organizationId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationToken()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->registrationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->organizationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->registrationToken:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->deviceKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationConfig;->label:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
