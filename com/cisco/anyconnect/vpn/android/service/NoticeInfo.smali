.class public Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;
.super Ljava/lang/Object;
.source "NoticeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_NAME:Ljava/lang/String; = "NoticeInfo"


# instance fields
.field private mMessageType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field private mNotice:Ljava/lang/String;

.field private mTime:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mNotice:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mMessageType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 69
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo p2, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mTime:Ljava/lang/String;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mNotice:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/MessageType;->values()[Lcom/cisco/anyconnect/vpn/jni/MessageType;

    move-result-object v1

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Info:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mMessageType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mTime:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    .line 123
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "NoticeInfo"

    const-string v3, "Error: unable to parse date"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageType()Lcom/cisco/anyconnect/vpn/jni/MessageType;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mMessageType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    return-object v0
.end method

.method public getNotice()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mNotice:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setNotice(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mNotice:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mMessageType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/MessageType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 145
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mNotice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mMessageType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/jni/MessageType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
