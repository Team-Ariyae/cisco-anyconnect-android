.class public Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;
.super Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;
.source "ConnectPromptInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESPONSE_ERROR_KEY:Ljava/lang/String; = "response_error"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 87
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->message:Ljava/lang/String;

    .line 88
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->hasEnrollmentCA:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->hasEnrollmentCA:Z

    .line 89
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->useEnrollmentCA:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->useEnrollmentCA:Z

    .line 90
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    .line 91
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->submitButtonName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->submitButtonName:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->neutralButtonName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->neutralButtonName:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->cancelButtonLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->cancelButtonLabel:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->neutralButtonLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->neutralButtonLabel:Ljava/lang/String;

    .line 95
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->isCancelled:Z

    .line 96
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isAutoSubmit:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->isAutoSubmit:Z

    .line 97
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->allowSaveCredentials:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->allowSaveCredentials:Z

    .line 98
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->shouldSaveCredentials:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->shouldSaveCredentials:Z

    .line 99
    iget-boolean p1, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->hasAuthenticationError:Z

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->hasAuthenticationError:Z

    :cond_0
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 7

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->values()[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    move-result-object v1

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->CREDENTIALS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->message:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->submitButtonName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->cancelButtonLabel:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->neutralButtonName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->neutralButtonLabel:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->hasEnrollmentCA:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->useEnrollmentCA:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->isCancelled:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 49
    new-array v3, v0, [Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    iput-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    if-lez v0, :cond_3

    .line 52
    const-class v3, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v3

    .line 53
    new-array v4, v0, [Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    iput-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_3

    .line 56
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aget-object v6, v3, v4

    check-cast v6, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 60
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->isAutoSubmit:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->allowSaveCredentials:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->shouldSaveCredentials:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->hasAuthenticationError:Z

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_8

    return-void

    :cond_8
    :try_start_1
    const-string v0, "response_error"

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->responseError:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->responseError:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    :catch_1
    :goto_7
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 124
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->submitButtonName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->cancelButtonLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->neutralButtonName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->neutralButtonLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->hasEnrollmentCA:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->useEnrollmentCA:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->isCancelled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 135
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length p2, p2

    .line 136
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    new-array v1, p2, [Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    :goto_0
    if-ge v0, p2, :cond_0

    .line 140
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/PromptEntry;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    :goto_1
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->isAutoSubmit:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->allowSaveCredentials:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->shouldSaveCredentials:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->hasAuthenticationError:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 155
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->responseError:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->responseError:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response_error"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
