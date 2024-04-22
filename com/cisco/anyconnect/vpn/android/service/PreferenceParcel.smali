.class public Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;
.super Lcom/cisco/anyconnect/vpn/jni/Preference;
.source "PreferenceParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/Preference;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/Preference;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/Preference;-><init>()V

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/Preference;->id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 53
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/Preference;->promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    .line 54
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/Preference;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    :cond_0
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 34
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->values()[Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    .line 35
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    .line 36
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 39
    new-array v1, v0, [Lcom/cisco/anyconnect/vpn/jni/Preference;

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    .line 41
    const-class v1, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 44
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    aget-object v3, p1, v1

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

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

    .line 78
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    invoke-direct {p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/PromptEntry;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 82
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    array-length p2, p2

    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    new-array v1, p2, [Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    :goto_0
    if-ge v0, p2, :cond_0

    .line 87
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;->children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/Preference;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
