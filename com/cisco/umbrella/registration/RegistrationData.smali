.class public Lcom/cisco/umbrella/registration/RegistrationData;
.super Ljava/lang/Object;
.source "RegistrationData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/umbrella/registration/RegistrationData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RegistrationData"


# instance fields
.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private deviceKey:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private organizationId:I
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private originId:J
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private registeredTime:J

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "label"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/cisco/umbrella/registration/RegistrationData$1;

    invoke-direct {v0}, Lcom/cisco/umbrella/registration/RegistrationData$1;-><init>()V

    sput-object v0, Lcom/cisco/umbrella/registration/RegistrationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->registeredTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->deviceId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->originId:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->organizationId:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->deviceKey:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->userId:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->registeredTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 67
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/cisco/umbrella/registration/RegistrationData;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationData;->deviceId:Ljava/lang/String;

    .line 72
    iput-wide p2, p0, Lcom/cisco/umbrella/registration/RegistrationData;->originId:J

    .line 73
    iput p4, p0, Lcom/cisco/umbrella/registration/RegistrationData;->organizationId:I

    .line 74
    iput-object p5, p0, Lcom/cisco/umbrella/registration/RegistrationData;->deviceKey:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lcom/cisco/umbrella/registration/RegistrationData;->userId:Ljava/lang/String;

    .line 77
    iput-wide p7, p0, Lcom/cisco/umbrella/registration/RegistrationData;->registeredTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 124
    instance-of v0, p1, Lcom/cisco/umbrella/registration/RegistrationData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    check-cast p1, Lcom/cisco/umbrella/registration/RegistrationData;

    if-eqz p1, :cond_1

    .line 128
    iget-object v0, p1, Lcom/cisco/umbrella/registration/RegistrationData;->deviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationData;->deviceId:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lcom/cisco/umbrella/registration/RegistrationData;->originId:J

    iget-wide v4, p0, Lcom/cisco/umbrella/registration/RegistrationData;->originId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget v0, p1, Lcom/cisco/umbrella/registration/RegistrationData;->organizationId:I

    iget v2, p0, Lcom/cisco/umbrella/registration/RegistrationData;->organizationId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/cisco/umbrella/registration/RegistrationData;->deviceKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationData;->deviceKey:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lcom/cisco/umbrella/registration/RegistrationData;->registeredTime:J

    iget-wide v4, p0, Lcom/cisco/umbrella/registration/RegistrationData;->registeredTime:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->deviceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->organizationId:I

    return v0
.end method

.method public getOriginId()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->originId:J

    return-wide v0
.end method

.method public getRegisteredTime()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->registeredTime:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 138
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 4

    .line 54
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting user id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationData;->userId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 98
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "writeToParcel invoked"

    invoke-static {p2, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/cisco/umbrella/registration/RegistrationData;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->originId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget p2, p0, Lcom/cisco/umbrella/registration/RegistrationData;->organizationId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object p2, p0, Lcom/cisco/umbrella/registration/RegistrationData;->deviceKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/cisco/umbrella/registration/RegistrationData;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/RegistrationData;->registeredTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
