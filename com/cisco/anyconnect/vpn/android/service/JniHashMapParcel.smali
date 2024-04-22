.class public Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;
.super Lcom/cisco/anyconnect/vpn/jni/JniHashMap;
.source "JniHashMapParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    array-length v0, v0

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    .line 55
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    array-length p1, p1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "JniHashMapParcel copy constructor called with null object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 31
    new-array v1, v0, [Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    new-instance v5, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    invoke-direct {v5, v2, v3}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v1

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

    .line 79
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 88
    iget-object v3, v2, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;->value:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
