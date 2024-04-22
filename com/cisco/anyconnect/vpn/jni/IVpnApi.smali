.class public interface abstract Lcom/cisco/anyconnect/vpn/jni/IVpnApi;
.super Ljava/lang/Object;
.source "IVpnApi.java"


# virtual methods
.method public abstract Attach()Z
.end method

.method public abstract Connect(Lcom/cisco/anyconnect/vpn/jni/HostEntry;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)Z
.end method

.method public abstract CreateACImporter(Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)Lcom/cisco/anyconnect/vpn/jni/IACImporter;
.end method

.method public abstract DeleteCertificates(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract DeleteProfileByName(Ljava/lang/String;)Z
.end method

.method public abstract Destroy()V
.end method

.method public abstract Detach()V
.end method

.method public abstract Disconnect()V
.end method

.method public abstract EnumerateCertificates(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract GetActiveLocale()Ljava/lang/String;
.end method

.method public abstract GetAvailableLocales()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract GetClientCertificates()Z
.end method

.method public abstract GetDefaultHostname()Ljava/lang/String;
.end method

.method public abstract GetHostnames()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract GetHosts()[Lcom/cisco/anyconnect/vpn/jni/HostEntry;
.end method

.method public abstract GetPreferences()Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;
.end method

.method public abstract GetProfileContents(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract ImportPKCS12WithPassword([BLjava/lang/String;)[B
.end method

.method public abstract ImportProfile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract ImportServerCert([B)V
.end method

.method public abstract Init(Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;)Z
.end method

.method public abstract IsConnected()Z
.end method

.method public abstract IsOperatingMode(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)Z
.end method

.method public abstract IsRevocationEnabled()Z
.end method

.method public abstract IsVpnServiceAvailable()Z
.end method

.method public abstract ProcessEvents()V
.end method

.method public abstract RequestImportPKCS12([B)Z
.end method

.method public abstract SavePreferences(Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;)Z
.end method

.method public abstract SetBannerResponse(Z)V
.end method

.method public abstract SetCertBannerResponse(ZZ)V
.end method

.method public abstract SetFipsMode(Z)Z
.end method

.method public abstract SetNewTunnelGroup(Ljava/lang/String;)V
.end method

.method public abstract SetRevocationEnabled(Z)Z
.end method

.method public abstract SetStrictMode(Z)Z
.end method

.method public abstract UserSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
.end method
