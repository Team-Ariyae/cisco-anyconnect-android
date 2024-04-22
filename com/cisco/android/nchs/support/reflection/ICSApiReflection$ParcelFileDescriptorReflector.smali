.class public Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$ParcelFileDescriptorReflector;
.super Ljava/lang/Object;
.source "ICSApiReflection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelFileDescriptorReflector"
.end annotation


# static fields
.field public static final INVALID_FD:I = -0x1

.field private static final METHOD_NAME_DETACHFD:Ljava/lang/String; = "detachFd"

.field private static final METHOD_NAME_DUP:Ljava/lang/String; = "dup"

.field private static final METHOD_NAME_GETFD:Ljava/lang/String; = "getFd"

.field private static final PARAMS_DETACHFD:[Ljava/lang/Class;

.field private static final PARAMS_DUP:[Ljava/lang/Class;

.field private static final PARAMS_GETFD:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 143
    const-class v1, Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$ParcelFileDescriptorReflector;->PARAMS_DUP:[Ljava/lang/Class;

    new-array v0, v2, [Ljava/lang/Class;

    .line 147
    sput-object v0, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$ParcelFileDescriptorReflector;->PARAMS_GETFD:[Ljava/lang/Class;

    new-array v0, v2, [Ljava/lang/Class;

    .line 151
    sput-object v0, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$ParcelFileDescriptorReflector;->PARAMS_DETACHFD:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detachFD(Landroid/os/ParcelFileDescriptor;)I
    .locals 3

    .line 194
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "detachFd"

    sget-object v2, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$ParcelFileDescriptorReflector;->PARAMS_DETACHFD:[Ljava/lang/Class;

    invoke-static {v0, v1, v2, p0}, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;->-$$Nest$smreflectAndCallMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    .line 197
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ICSReflection"

    const-string v1, "reflection failed (null object returned)"

    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static dupFD(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 161
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$ParcelFileDescriptorReflector;->PARAMS_DUP:[Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "dup"

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v3, v2}, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;->-$$Nest$smreflectAndCallMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    if-nez p0, :cond_0

    .line 164
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ICSReflection"

    const-string v1, "reflection failed (null object returned)"

    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    return-object p0
.end method

.method public static getFD(Landroid/os/ParcelFileDescriptor;)I
    .locals 3

    .line 177
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFd"

    sget-object v2, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$ParcelFileDescriptorReflector;->PARAMS_GETFD:[Ljava/lang/Class;

    invoke-static {v0, v1, v2, p0}, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;->-$$Nest$smreflectAndCallMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    .line 180
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ICSReflection"

    const-string v1, "reflection failed (null object returned)"

    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 183
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
