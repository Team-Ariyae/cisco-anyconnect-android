.class public Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;
.super Ljava/lang/Object;
.source "UnmanagedRegistrationData.java"


# instance fields
.field private exp:J

.field private iat:J

.field private iss:Ljava/lang/String;

.field private od:I

.field private regdToken:Ljava/lang/String;

.field private rt:Ljava/lang/String;

.field private se:Ljava/lang/String;

.field private sub:Ljava/lang/String;

.field private ttl:I

.field private ur:Z

.field private us:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExp()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->exp:J

    return-wide v0
.end method

.method public getIat()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->iat:J

    return-wide v0
.end method

.method public getIss()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->iss:Ljava/lang/String;

    return-object v0
.end method

.method public getOd()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->od:I

    return v0
.end method

.method public getRegdToken()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->regdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRt()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->rt:Ljava/lang/String;

    return-object v0
.end method

.method public getSe()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->se:Ljava/lang/String;

    return-object v0
.end method

.method public getSub()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->sub:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->ttl:I

    return v0
.end method

.method public getUr()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->ur:Z

    return v0
.end method

.method public getUs()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->us:Ljava/lang/String;

    return-object v0
.end method

.method public setExp(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->exp:J

    return-void
.end method

.method public setIat(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->iat:J

    return-void
.end method

.method public setIss(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->iss:Ljava/lang/String;

    return-void
.end method

.method public setOd(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->od:I

    return-void
.end method

.method public setRegdToken(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->regdToken:Ljava/lang/String;

    return-void
.end method

.method public setRt(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->rt:Ljava/lang/String;

    return-void
.end method

.method public setSe(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->se:Ljava/lang/String;

    return-void
.end method

.method public setSub(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->sub:Ljava/lang/String;

    return-void
.end method

.method public setTtl(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->ttl:I

    return-void
.end method

.method public setUr(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->ur:Z

    return-void
.end method

.method public setUs(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->us:Ljava/lang/String;

    return-void
.end method
