.class public final enum Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;
.super Ljava/lang/Enum;
.source "RestrictionsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/restrictions/RestrictionsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

.field public static final enum FQDNS:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

.field public static final enum REGISTRATION:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 238
    new-instance v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    const-string v1, "REGISTRATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->REGISTRATION:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    .line 239
    new-instance v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    const-string v3, "FQDNS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->FQDNS:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 237
    sput-object v3, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->$VALUES:[Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;
    .locals 1

    .line 237
    const-class v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;
    .locals 1

    .line 237
    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->$VALUES:[Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    invoke-virtual {v0}, [Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    return-object v0
.end method
