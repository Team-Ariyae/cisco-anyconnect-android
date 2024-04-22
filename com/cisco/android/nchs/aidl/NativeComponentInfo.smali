.class public Lcom/cisco/android/nchs/aidl/NativeComponentInfo;
.super Ljava/lang/Object;
.source "NativeComponentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/android/nchs/aidl/NativeComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_NAME:Ljava/lang/String; = "NativeComponentInfo"


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;

.field private mServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mStartIntent:Landroid/content/Intent;

.field private mState:Lcom/cisco/android/nchs/aidl/NCHSState;

.field private mStateString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    new-instance v0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo$1;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo$1;-><init>()V

    sput-object v0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSState;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/aidl/NCHSState;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 53
    iput-object p2, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mLabel:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mStateString:Ljava/lang/String;

    .line 55
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2, p5}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mServices:Ljava/util/TreeMap;

    .line 56
    iput-object p4, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mState:Lcom/cisco/android/nchs/aidl/NCHSState;

    .line 57
    iput-object p6, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mPackage:Ljava/lang/String;

    const/4 p2, 0x0

    .line 58
    iput-object p2, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mStartIntent:Landroid/content/Intent;

    .line 60
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->populatePackageStartIntent(Landroid/content/Context;)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass any null args to ComponentInfo constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/android/nchs/aidl/NativeComponentInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private populatePackageStartIntent(Landroid/content/Context;)V
    .locals 6

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.android.nchs.COMPONENT_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 77
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 81
    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mStartIntent:Landroid/content/Intent;

    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mStartIntent:Landroid/content/Intent;

    if-nez p1, :cond_2

    .line 93
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has no intent to launch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeComponentInfo"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageStartIntent()Landroid/content/Intent;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mStartIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getServices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mServices:Ljava/util/TreeMap;

    return-object v0
.end method

.method public getState()Lcom/cisco/android/nchs/aidl/NCHSState;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mState:Lcom/cisco/android/nchs/aidl/NCHSState;

    return-object v0
.end method

.method public getStateString()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mStateString:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mLabel:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mStateString:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mPackage:Ljava/lang/String;

    .line 180
    invoke-static {}, Lcom/cisco/android/nchs/aidl/NCHSState;->values()[Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mState:Lcom/cisco/android/nchs/aidl/NCHSState;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mServices:Ljava/util/TreeMap;

    .line 182
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mStartIntent:Landroid/content/Intent;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 161
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mStateString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mState:Lcom/cisco/android/nchs/aidl/NCHSState;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/NCHSState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mServices:Ljava/util/TreeMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 166
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->mStartIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
