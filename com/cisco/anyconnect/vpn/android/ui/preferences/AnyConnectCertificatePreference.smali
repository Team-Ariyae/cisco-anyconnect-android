.class public Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;
.super Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;
.source "AnyConnectCertificatePreference.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;


# static fields
.field private static final CERT_AUTH_MODE_STRINGS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_NAME:Ljava/lang/String; = "AnyConnectCertificatePreference"

.field private static final REQUEST_CODE_CERT_PREFERENCE:I = 0x1


# instance fields
.field private mParent:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->CERT_AUTH_MODE_STRINGS_MAP:Ljava/util/HashMap;

    .line 46
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const v2, 0x7f110053

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const v2, 0x7f110055

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Disabled:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const v2, 0x7f110054

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-virtual {p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->SetAnyConnectPreferenceOnClickListener(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;)V

    return-void
.end method

.method private PersistCertificateValues(Lcom/cisco/anyconnect/common/X509NameParser;Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;)Z
    .locals 1

    .line 150
    invoke-virtual {p1}, Lcom/cisco/anyconnect/common/X509NameParser;->getShortName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->persistCertificateName(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110070

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->persistCertificateName(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 168
    :cond_1
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetHash()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->persistCertificateHash([B)Z

    move-result p1

    return p1
.end method

.method private persistCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)Z
    .locals 1

    .line 118
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->CERT_AUTH_MODE_STRINGS_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 121
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->persistCertificateSummary(Ljava/lang/String;)Z

    const-string v0, "cert_auth_mode"

    .line 123
    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->persistStringForKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 125
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->translateSummary()V

    return p1
.end method

.method private persistCertificateHash([B)Z
    .locals 1

    const-string v0, "cert_hash"

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->persistBytesForKey(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method private persistCertificateName(Ljava/lang/String;)Z
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->persistCertificateSummary(Ljava/lang/String;)Z

    const-string v0, "cert_name"

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->persistStringForKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private persistCertificateSummary(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cert_summary"

    .line 137
    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->persistStringForKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private translateSummary()V
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->GetSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->CERT_AUTH_MODE_STRINGS_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 82
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->GetSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->SetSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public SetParentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->mParent:Landroid/app/Activity;

    return-void
.end method

.method public UpdateFromPersistenceManager()V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->UpdateSummary()V

    .line 66
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->translateSummary()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "onActivityResult"

    const-string v1, "AnyConnectCertificatePreference"

    .line 206
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 209
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "onActivityResult cannot complete without parent activity"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 217
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "CertAuthMode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const p2, 0x7f11032f

    if-eqz p1, :cond_3

    .line 220
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->persistCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)Z

    .line 229
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-ne v0, p1, :cond_4

    const-string p1, "SelectedCertificate"

    .line 231
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    if-eqz p1, :cond_2

    .line 234
    new-instance p3, Lcom/cisco/anyconnect/common/X509NameParser;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetX509()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/cisco/anyconnect/common/X509NameParser;-><init>(Ljava/security/Principal;)V

    invoke-direct {p0, p3, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->PersistCertificateValues(Lcom/cisco/anyconnect/common/X509NameParser;Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 237
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "Commit of changes to connection failed"

    invoke-static {p1, v1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->mParent:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "CertEditorActivity returned non-cancel code, but didn\'t pass back a certHash"

    invoke-static {p1, v1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->mParent:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_3
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "CertEditorActivity returned non-cancel code, but didn\'t pass back a certAuthMode"

    invoke-static {p1, v1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->mParent:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAnyConnectPreferenceClick(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;)V
    .locals 4

    .line 178
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->mParent:Landroid/app/Activity;

    if-nez p1, :cond_0

    .line 180
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "AnyConnectCertificatePreference"

    const-string v1, "cannot start cert editor activity because we don\'t have an activity to start it from"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.CERTIFICATE_EDITOR_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "cert_hash"

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->getBytesProperty(Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "cert_auth_mode"

    .line 185
    invoke-virtual {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_1

    const-string v3, "CertHash"

    .line 190
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    if-eqz v1, :cond_2

    const-string v3, "CertAuthMode"

    .line 194
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 198
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->mParent:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
