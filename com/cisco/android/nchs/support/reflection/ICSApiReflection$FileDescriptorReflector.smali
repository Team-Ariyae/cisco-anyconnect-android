.class public Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$FileDescriptorReflector;
.super Ljava/lang/Object;
.source "ICSApiReflection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDescriptorReflector"
.end annotation


# static fields
.field private static final METHOD_NAME_GET_INT:Ljava/lang/String; = "getInt$"

.field private static final PARAMS_GET_INT:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 107
    sput-object v0, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$FileDescriptorReflector;->PARAMS_GET_INT:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Ljava/io/FileDescriptor;)I
    .locals 3

    .line 116
    const-class v0, Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInt$"

    sget-object v2, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$FileDescriptorReflector;->PARAMS_GET_INT:[Ljava/lang/Class;

    invoke-static {v0, v1, v2, p0}, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection;->-$$Nest$smreflectAndCallMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    .line 119
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ICSReflection"

    const-string v1, "reflection failed (null object returned)"

    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
