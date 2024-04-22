.class final enum Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;
.super Ljava/lang/Enum;
.source "ACTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

.field public static final enum Initialized:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

.field public static final enum Uninitialized:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    const-string v1, "Uninitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->Uninitialized:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    .line 46
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    const-string v3, "Initialized"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->Initialized:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 43
    sput-object v3, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;
    .locals 1

    .line 43
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;
    .locals 1

    .line 43
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    return-object v0
.end method
