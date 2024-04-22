.class public final enum Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;
.super Ljava/lang/Enum;
.source "NVMConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/utils/NVMConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NATIVE_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

.field public static final enum COLLECTION_OFF:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

.field public static final enum COLLECTION_OFF_EXPORTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

.field public static final enum COLLECTION_ON:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

.field public static final enum NVMAGENT_STARTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

.field public static final enum UNKNOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;


# instance fields
.field private nativeState:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 149
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->UNKNOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    new-instance v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    const-string v2, "NVMAGENT_STARTING"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->NVMAGENT_STARTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    new-instance v2, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    const-string v5, "COLLECTION_ON"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->COLLECTION_ON:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    new-instance v5, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    const-string v7, "COLLECTION_OFF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->COLLECTION_OFF:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    new-instance v7, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    const-string v9, "COLLECTION_OFF_EXPORTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->COLLECTION_OFF_EXPORTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    aput-object v0, v9, v3

    aput-object v1, v9, v4

    aput-object v2, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 148
    sput-object v9, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput p3, p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->nativeState:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;
    .locals 1

    .line 148
    const-class v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;
    .locals 1

    .line 148
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->nativeState:I

    return v0
.end method
