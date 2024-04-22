.class public Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;
.super Ljava/lang/Object;
.source "VpnApiImpl.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/jni/IVpnApi;


# instance fields
.field private m_vpnHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "c++_shared"

    .line 50
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "acciscocrypto"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "acciscossl"

    .line 52
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpncommon"

    .line 53
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpncommoncrypt"

    .line 54
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpnapi"

    .line 55
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpnagentutilities"

    .line 57
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "acjni"

    .line 58
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native vpnAttach(J)Z
.end method

.method private native vpnConnect(JLcom/cisco/anyconnect/vpn/jni/HostEntry;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)Z
.end method

.method private native vpnCreate(Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;Z)J
.end method

.method private native vpnCreateImporter(JLcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;
.end method

.method private native vpnDelete(J)V
.end method

.method private native vpnDeleteCertificates(JI[Ljava/lang/String;)Z
.end method

.method private native vpnDeleteProfileByName(JLjava/lang/String;)Z
.end method

.method private native vpnDetach(J)V
.end method

.method private native vpnDisconnect(J)V
.end method

.method private native vpnEnumerateCertificates(JI)[Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;
.end method

.method private native vpnGetActiveLocale(J)Ljava/lang/String;
.end method

.method private native vpnGetAvailableLocales(J)[Ljava/lang/String;
.end method

.method private native vpnGetClientCertificates(J)Z
.end method

.method private native vpnGetDefaultHostname(J)Ljava/lang/String;
.end method

.method private native vpnGetHostnames(J)[Ljava/lang/String;
.end method

.method private native vpnGetHosts(J)[Lcom/cisco/anyconnect/vpn/jni/HostEntry;
.end method

.method private native vpnGetPreferences(J)Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;
.end method

.method private native vpnGetProfileContents(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native vpnImportPKCS12WithPassword(J[BLjava/lang/String;)[B
.end method

.method private native vpnImportProfile(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native vpnImportServerCert(J[B)V
.end method

.method private native vpnIsConnected(J)Z
.end method

.method private native vpnIsOperatingMode(JLcom/cisco/anyconnect/vpn/jni/OperatingMode;)Z
.end method

.method private native vpnIsRevocationEnabled(J)Z
.end method

.method private native vpnIsServiceAvailable(J)Z
.end method

.method private native vpnProcessEvents(J)V
.end method

.method private native vpnRequestImportLocalization(JLjava/lang/String;[B)Z
.end method

.method private native vpnRequestImportPKCS12(J[B)Z
.end method

.method private native vpnSavePreferences(JLcom/cisco/anyconnect/vpn/jni/PreferenceInfo;)Z
.end method

.method private native vpnSetBannerResponse(JZ)V
.end method

.method private native vpnSetCertBannerResponse(JZZ)V
.end method

.method private native vpnSetFipsMode(JZ)Z
.end method

.method private native vpnSetNewTunnelGroup(JLjava/lang/String;)V
.end method

.method private native vpnSetRevocationEnabled(JZ)Z
.end method

.method private native vpnSetStrictMode(JZ)Z
.end method

.method private native vpnUserSubmit(JLcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
.end method


# virtual methods
.method public Attach()Z
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnAttach(J)Z

    move-result v0

    return v0
.end method

.method public Connect(Lcom/cisco/anyconnect/vpn/jni/HostEntry;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)Z
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnConnect(JLcom/cisco/anyconnect/vpn/jni/HostEntry;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)Z

    move-result p1

    return p1
.end method

.method public CreateACImporter(Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)Lcom/cisco/anyconnect/vpn/jni/IACImporter;
    .locals 2

    .line 414
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnCreateImporter(JLcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;

    move-result-object p1

    return-object p1
.end method

.method public DeleteCertificates(ILjava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 409
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnDeleteCertificates(JI[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public DeleteProfileByName(Ljava/lang/String;)Z
    .locals 2

    .line 388
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnDeleteProfileByName(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public Destroy()V
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnDelete(J)V

    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    return-void
.end method

.method public Detach()V
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnDetach(J)V

    return-void
.end method

.method public Disconnect()V
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnDisconnect(J)V

    return-void
.end method

.method public EnumerateCertificates(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;",
            ">;"
        }
    .end annotation

    .line 403
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnEnumerateCertificates(JI)[Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;

    move-result-object p1

    .line 404
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public GetActiveLocale()Ljava/lang/String;
    .locals 2

    .line 430
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnGetActiveLocale(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAvailableLocales()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnGetAvailableLocales(J)[Ljava/lang/String;

    move-result-object v0

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public GetClientCertificates()Z
    .locals 2

    .line 346
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnGetClientCertificates(J)Z

    move-result v0

    return v0
.end method

.method public GetDefaultHostname()Ljava/lang/String;
    .locals 2

    .line 167
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnGetDefaultHostname(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetHostnames()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnGetHostnames(J)[Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public GetHosts()[Lcom/cisco/anyconnect/vpn/jni/HostEntry;
    .locals 2

    .line 359
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnGetHosts(J)[Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    move-result-object v0

    return-object v0
.end method

.method public GetPreferences()Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnGetPreferences(J)Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public GetProfileContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnGetProfileContents(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ImportPKCS12WithPassword([BLjava/lang/String;)[B
    .locals 2

    .line 383
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnImportPKCS12WithPassword(J[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public ImportProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 398
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnImportProfile(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ImportServerCert([B)V
    .locals 2

    .line 450
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnImportServerCert(J[B)V

    return-void
.end method

.method public Init(Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;)Z
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->Init(Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;Z)Z

    move-result p1

    return p1
.end method

.method public Init(Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;Z)Z
    .locals 3

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnCreate(Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public IsConnected()Z
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnIsConnected(J)Z

    move-result v0

    return v0
.end method

.method public IsOperatingMode(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)Z
    .locals 2

    .line 419
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnIsOperatingMode(JLcom/cisco/anyconnect/vpn/jni/OperatingMode;)Z

    move-result p1

    return p1
.end method

.method public IsRevocationEnabled()Z
    .locals 2

    .line 225
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnIsRevocationEnabled(J)Z

    move-result v0

    return v0
.end method

.method public IsVpnServiceAvailable()Z
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnIsServiceAvailable(J)Z

    move-result v0

    return v0
.end method

.method public ProcessEvents()V
    .locals 2

    .line 313
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnProcessEvents(J)V

    return-void
.end method

.method public RequestImportLocalization(Ljava/lang/String;[B)Z
    .locals 2

    .line 445
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnRequestImportLocalization(JLjava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public RequestImportPKCS12([B)Z
    .locals 2

    .line 378
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnRequestImportPKCS12(J[B)Z

    move-result p1

    return p1
.end method

.method public SavePreferences(Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;)Z
    .locals 2

    .line 293
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnSavePreferences(JLcom/cisco/anyconnect/vpn/jni/PreferenceInfo;)Z

    move-result p1

    return p1
.end method

.method public SetBannerResponse(Z)V
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnSetBannerResponse(JZ)V

    return-void
.end method

.method public SetCertBannerResponse(ZZ)V
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnSetCertBannerResponse(JZZ)V

    return-void
.end method

.method public SetFipsMode(Z)Z
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnSetFipsMode(JZ)Z

    move-result p1

    return p1
.end method

.method public SetNewTunnelGroup(Ljava/lang/String;)V
    .locals 2

    .line 341
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnSetNewTunnelGroup(JLjava/lang/String;)V

    return-void
.end method

.method public SetRevocationEnabled(Z)Z
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnSetRevocationEnabled(JZ)Z

    move-result p1

    return p1
.end method

.method public SetStrictMode(Z)Z
    .locals 2

    .line 230
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnSetStrictMode(JZ)Z

    move-result p1

    return p1
.end method

.method public UserSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->m_vpnHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;->vpnUserSubmit(JLcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    return-void
.end method
