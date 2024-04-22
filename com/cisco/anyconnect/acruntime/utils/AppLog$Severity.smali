.class public final enum Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;
.super Ljava/lang/Enum;
.source "AppLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/acruntime/utils/AppLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

.field public static final enum DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

.field public static final enum DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

.field public static final enum DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

.field public static final enum DBG_WARN:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "DBG_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v3, "DBG_WARN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v3, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v5, "DBG_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v5, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v7, "DBG_TRACE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 25
    sput-object v7, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->$VALUES:[Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;
    .locals 1

    .line 25
    const-class v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;
    .locals 1

    .line 25
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->$VALUES:[Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    return-object v0
.end method
