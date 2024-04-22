.class Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;
.super Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;
.source "PromptEntryParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleAttributesParcel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final SSO_IS_EXTERNAL_BROWSER_KEY:Ljava/lang/String; = "sso_is_external_browser"

.field private static final SSO_TOKEN_KEY:Ljava/lang/String; = "sso_token"

.field private static final SSO_URL_FINAL_KEY:Ljava/lang/String; = "sso_url_final"

.field private static final SSO_URL_KEY:Ljava/lang/String; = "sso_url"

.field private static final SSO_USER_AGENT_KEY:Ljava/lang/String; = "sso_user_agent"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;-><init>()V

    .line 50
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;-><init>()V

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoUrl:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoFinalUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoFinalUrl:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoTokenCookieName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoTokenCookieName:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoUserAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoUserAgent:Ljava/lang/String;

    .line 44
    iget-boolean p1, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoIsExternalBrowser:Z

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoIsExternalBrowser:Z

    :cond_0
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "sso_url"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoUrl:Ljava/lang/String;

    const-string v0, "sso_url_final"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoFinalUrl:Ljava/lang/String;

    const-string v0, "sso_token"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoTokenCookieName:Ljava/lang/String;

    const-string v0, "sso_user_agent"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoUserAgent:Ljava/lang/String;

    const-string v0, "sso_is_external_browser"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoIsExternalBrowser:Z

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

    .line 68
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "sso_url"

    .line 69
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoUrl:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sso_url_final"

    .line 70
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoFinalUrl:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sso_token"

    .line 71
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoTokenCookieName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sso_user_agent"

    .line 72
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoUserAgent:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sso_is_external_browser"

    .line 73
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/PromptEntryParcel$SingleAttributesParcel;->ssoIsExternalBrowser:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
