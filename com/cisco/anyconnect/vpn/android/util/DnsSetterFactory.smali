.class public Lcom/cisco/anyconnect/vpn/android/util/DnsSetterFactory;
.super Ljava/lang/Object;
.source "DnsSetterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/cisco/anyconnect/vpn/android/util/DnsSetter;
    .locals 1

    if-eqz p1, :cond_0

    .line 22
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/util/NativeDnsSetter;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/util/NativeDnsSetter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 24
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 26
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/util/Android50DnsSetter;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/util/Android50DnsSetter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 29
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
