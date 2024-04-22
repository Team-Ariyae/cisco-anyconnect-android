.class public Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;
.super Lcom/cisco/anyconnect/android/util/ACLogEntry;
.source "ACLogEntryParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/cisco/anyconnect/android/util/ACLogEntry;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/android/util/ACLogEntry;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/cisco/anyconnect/android/util/ACLogEntry;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->module:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->module:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->processInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->processInfo:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->tag:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->severity:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->severity:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    .line 47
    iget-wide v0, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->timeMs:J

    iput-wide v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->timeMs:J

    .line 48
    iget-object p1, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->message:Ljava/lang/String;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->message:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->module:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->processInfo:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->tag:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->values()[Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    move-result-object v1

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->severity:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->timeMs:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 58
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->module:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->processInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->severity:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->timeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ACLogEntryParcel;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
