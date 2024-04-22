.class public Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$LibCoreReflector;
.super Ljava/lang/Object;
.source "ICSApiReflection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LibCoreReflector"
.end annotation


# static fields
.field private static final AF_INET6_MEMBER_NAME:Ljava/lang/String; = "AF_INET6"

.field private static final AF_INET_MEMBER_NAME:Ljava/lang/String; = "AF_INET"

.field private static final ANDROID_L_API_LEVEL:I = 0x14

.field private static final LIBCORE_CLASS_NAME:Ljava/lang/String; = "libcore.io.Libcore"

.field private static final METHOD_NAME_SOCKET:Ljava/lang/String; = "socket"

.field private static final OS_CONSTANTS_CLASS_NAME:Ljava/lang/String;

.field private static final OS_MEMBER_NAME:Ljava/lang/String; = "os"

.field private static final PARAMS_SOCKET:[Ljava/lang/Class;

.field private static final SOCK_DGRAM_MEMBER_NAME:Ljava/lang/String; = "SOCK_DGRAM"

.field private static final SOCK_STREAM_MEMBER_NAME:Ljava/lang/String; = "SOCK_STREAM"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const-string v0, "libcore.io.OsConstants"

    goto :goto_0

    :cond_0
    const-string v0, "android.system.OsConstants"

    :goto_0
    sput-object v0, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$LibCoreReflector;->OS_CONSTANTS_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 226
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$LibCoreReflector;->PARAMS_SOCKET:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static socket(ZZ)Ljava/io/FileDescriptor;
    .locals 5

    const-string v0, "libcore.io.Libcore"

    const-string v1, "os"

    const/4 v2, 0x0

    .line 230
    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;->reflectAndGetDataMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ICSReflection"

    if-nez v0, :cond_0

    .line 233
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "osObj returned null"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "AF_INET6"

    goto :goto_0

    :cond_1
    const-string p1, "AF_INET"

    .line 238
    :goto_0
    sget-object v3, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$LibCoreReflector;->OS_CONSTANTS_CLASS_NAME:Ljava/lang/String;

    invoke-static {v3, p1, v2}, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;->reflectAndGetDataMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    .line 241
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "af_inet returned null"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    if-eqz p0, :cond_3

    const-string p0, "SOCK_STREAM"

    goto :goto_1

    :cond_3
    const-string p0, "SOCK_DGRAM"

    .line 247
    :goto_1
    invoke-static {v3, p0, v2}, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;->reflectAndGetDataMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_4

    .line 250
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "sock_stream returned null"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 254
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$LibCoreReflector;->PARAMS_SOCKET:[Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const/4 p0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    const-string p0, "socket"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;->-$$Nest$smreflectAndCallMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;

    return-object p0
.end method
