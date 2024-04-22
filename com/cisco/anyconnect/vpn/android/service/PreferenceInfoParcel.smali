.class public Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
.super Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;
.source "PreferenceInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->heading:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->heading:Ljava/lang/String;

    .line 51
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    :cond_0
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->heading:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 37
    new-array v1, v0, [Lcom/cisco/anyconnect/vpn/jni/Preference;

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    .line 39
    const-class v1, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 42
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    aget-object v3, p1, v1

    check-cast v3, Lcom/cisco/anyconnect/vpn/jni/Preference;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

    .line 61
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->heading:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 64
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    array-length p2, p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    new-array v1, p2, [Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    :goto_0
    if-ge v0, p2, :cond_0

    .line 69
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/Preference;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
