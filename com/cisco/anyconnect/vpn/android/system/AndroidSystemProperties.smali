.class public Lcom/cisco/anyconnect/vpn/android/system/AndroidSystemProperties;
.super Ljava/lang/Object;
.source "AndroidSystemProperties.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/system/ISystemProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
