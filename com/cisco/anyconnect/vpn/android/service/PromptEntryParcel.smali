.class public Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;
.super Lcom/cisco/anyconnect/vpn/jni/PromptEntry;
.source "PromptEntryParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/jni/PromptEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final SINGLE_ATTRIBUTES_KEY:Ljava/lang/String; = "single_attributes"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;-><init>()V

    .line 97
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/PromptEntry;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;-><init>()V

    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->label:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->name:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->value:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 147
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEntryGroup:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->isEntryGroup:Z

    .line 148
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEnabled:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->isEnabled:Z

    .line 149
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->isVisible:Z

    .line 150
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboValues:[Ljava/lang/String;

    .line 151
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboKeys:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboKeys:[Ljava/lang/String;

    .line 152
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->singleAttributes:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->singleAttributes:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;

    :cond_0
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->label:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->name:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->value:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->values()[Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    move-result-object v1

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Input:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    .line 106
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
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->isEntryGroup:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->isEnabled:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->isVisible:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_3

    .line 112
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboValues:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    .line 115
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_4

    .line 122
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboKeys:[Ljava/lang/String;

    :goto_4
    if-ge v1, v0, :cond_4

    .line 125
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 129
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 135
    :cond_5
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "single_attributes"

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->singleAttributes:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;

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

    .line 162
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->isEntryGroup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->isEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->isVisible:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboValues:[Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 175
    :cond_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboValues:[Ljava/lang/String;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboValues:[Ljava/lang/String;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 178
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboKeys:[Ljava/lang/String;

    if-nez p2, :cond_2

    .line 184
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 188
    :cond_2
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboKeys:[Ljava/lang/String;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->comboKeys:[Ljava/lang/String;

    array-length v1, p2

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v2, p2, v0

    .line 191
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 195
    :cond_3
    :goto_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 196
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->singleAttributes:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;

    if-eqz v0, :cond_4

    .line 197
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;->singleAttributes:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;)V

    const-string v1, "single_attributes"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 200
    :cond_4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
