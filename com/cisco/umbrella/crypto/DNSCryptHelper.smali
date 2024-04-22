.class public final Lcom/cisco/umbrella/crypto/DNSCryptHelper;
.super Ljava/util/Observable;
.source "DNSCryptHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DNSCryptHelper"

.field private static final instance:Lcom/cisco/umbrella/crypto/DNSCryptHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    invoke-direct {v0}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;-><init>()V

    sput-object v0, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->instance:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    .line 44
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Loading native simpledns library"

    const-string v2, "DNSCryptHelper"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "simpledns"

    .line 45
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Completed loading native simpledns library"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cisco/umbrella/crypto/DNSCryptHelper;
    .locals 1

    .line 39
    sget-object v0, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->instance:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    return-object v0
.end method

.method private native unInitDNSCrypt()V
.end method


# virtual methods
.method public changeSocketPort()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->setChanged()V

    .line 56
    invoke-virtual {p0}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->notifyObservers()V

    return-void
.end method

.method public native checkIfUmbrellaResolverReachable()Z
.end method

.method public native checkIfVAConfigured(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public cleanUp()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->unInitDNSCrypt()V

    return-void
.end method

.method public native decrypt([B)[B
.end method

.method public native encrypt([B)[B
.end method

.method public native getActivePort()I
.end method

.method public native initDNSCrypt()Z
.end method

.method public native refreshCerts()V
.end method
