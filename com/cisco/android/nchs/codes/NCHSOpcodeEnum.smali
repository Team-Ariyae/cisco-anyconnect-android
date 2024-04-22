.class public final enum Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;
.super Ljava/lang/Enum;
.source "NCHSOpcodeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum DISCONNECT:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum ERROR:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum GET_NETWORK_SERVICE_PROPERTY:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum INSTALL_APPLICATION_APK:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum INSTALL_NETWORK_COMPONENT:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum IS_NATIVE_SERVICE_RUNNING:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum IS_NETWORK_COMPONENT_INSTALLED:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum SERVICE_READY:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum SET_NETWORK_SERVICE_PROPERTY:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum START_NATIVE_SERVICE:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum STOP_NATIVE_SERVICE:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum UNINSTALL_APPLICATION_APK:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum UNINSTALL_NETWORK_COMPONENT:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum UPDATE_COMPONENT_STATE:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

.field public static final enum UPGRADE_APPLICATION_APK:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;


# instance fields
.field private mArgTypes:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

.field private mNumArgs:I

.field private mOpcode:B


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 24
    new-instance v0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "INSTALL_NETWORK_COMPONENT"

    invoke-direct {v0, v3, v4, v4, v2}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->INSTALL_NETWORK_COMPONENT:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 27
    new-instance v2, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v3, v5, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v8, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v8, v3, v4

    const-string v8, "UNINSTALL_NETWORK_COMPONENT"

    invoke-direct {v2, v8, v5, v5, v3}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v2, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->UNINSTALL_NETWORK_COMPONENT:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 30
    new-instance v3, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v8, v6, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v9, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v9, v8, v4

    sget-object v9, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v9, v8, v5

    const-string v9, "START_NATIVE_SERVICE"

    invoke-direct {v3, v9, v6, v6, v8}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v3, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->START_NATIVE_SERVICE:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 33
    new-instance v8, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v9, v6, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v10, v9, v4

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v10, v9, v5

    const-string v10, "STOP_NATIVE_SERVICE"

    invoke-direct {v8, v10, v7, v7, v9}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v8, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->STOP_NATIVE_SERVICE:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 36
    new-instance v9, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v10, v6, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v11, v10, v4

    sget-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v11, v10, v5

    const-string v11, "IS_NATIVE_SERVICE_RUNNING"

    invoke-direct {v9, v11, v1, v1, v10}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v9, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->IS_NATIVE_SERVICE_RUNNING:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 39
    new-instance v10, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v11, v5, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v12, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v12, v11, v4

    const-string v12, "IS_NETWORK_COMPONENT_INSTALLED"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v13, v11}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v10, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->IS_NETWORK_COMPONENT_INSTALLED:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 42
    new-instance v11, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v12, v7, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v14, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v14, v12, v4

    sget-object v14, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v14, v12, v5

    sget-object v14, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v14, v12, v6

    const-string v14, "SET_NETWORK_SERVICE_PROPERTY"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v15, v12}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v11, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->SET_NETWORK_SERVICE_PROPERTY:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 45
    new-instance v12, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v14, v6, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v16, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v16, v14, v4

    sget-object v16, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v16, v14, v5

    const-string v15, "GET_NETWORK_SERVICE_PROPERTY"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v13, v14}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v12, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->GET_NETWORK_SERVICE_PROPERTY:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 48
    new-instance v14, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v15, v6, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v17, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v17, v15, v4

    sget-object v17, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v17, v15, v5

    const-string v13, "INSTALL_APPLICATION_APK"

    const/16 v1, 0x8

    invoke-direct {v14, v13, v1, v1, v15}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v14, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->INSTALL_APPLICATION_APK:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 51
    new-instance v13, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v15, v5, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v18, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v18, v15, v4

    const-string v1, "UNINSTALL_APPLICATION_APK"

    const/16 v6, 0x9

    invoke-direct {v13, v1, v6, v6, v15}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v13, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->UNINSTALL_APPLICATION_APK:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 56
    new-instance v1, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v15, v7, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v20, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v20, v15, v4

    sget-object v20, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v20, v15, v5

    sget-object v20, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v19, 0x2

    aput-object v20, v15, v19

    const-string v6, "UPGRADE_APPLICATION_APK"

    const/16 v5, 0xa

    invoke-direct {v1, v6, v5, v5, v15}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v1, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->UPGRADE_APPLICATION_APK:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 61
    new-instance v6, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v15, v4, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const-string v5, "DISCONNECT"

    const/16 v4, 0xb

    invoke-direct {v6, v5, v4, v4, v15}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v6, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->DISCONNECT:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 64
    new-instance v5, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    new-array v15, v7, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v23, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v22, 0x0

    aput-object v23, v15, v22

    sget-object v23, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v21, 0x1

    aput-object v23, v15, v21

    sget-object v23, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v4, 0x2

    aput-object v23, v15, v4

    const-string v7, "UPDATE_COMPONENT_STATE"

    const/16 v4, 0xc

    invoke-direct {v5, v7, v4, v4, v15}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v5, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->UPDATE_COMPONENT_STATE:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 67
    new-instance v7, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    const/4 v15, 0x2

    new-array v4, v15, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget-object v15, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-object/from16 v24, v5

    const/4 v5, 0x0

    aput-object v15, v4, v5

    sget-object v15, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v21, 0x1

    aput-object v15, v4, v21

    const-string v15, "SERVICE_READY"

    const/16 v5, 0xd

    invoke-direct {v7, v15, v5, v5, v4}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v7, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->SERVICE_READY:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 70
    new-instance v4, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    const/4 v15, 0x0

    new-array v5, v15, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const-string v15, "ERROR"

    move-object/from16 v25, v7

    const/16 v7, 0xe

    invoke-direct {v4, v15, v7, v7, v5}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;-><init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V

    sput-object v4, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->ERROR:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    const/16 v5, 0xf

    new-array v5, v5, [Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    const/4 v15, 0x0

    aput-object v0, v5, v15

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v8, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v11, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v1, v5, v0

    const/16 v0, 0xb

    aput-object v6, v5, v0

    const/16 v0, 0xc

    aput-object v24, v5, v0

    const/16 v0, 0xd

    aput-object v25, v5, v0

    aput-object v4, v5, v7

    .line 18
    sput-object v5, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->$VALUES:[Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 78
    iput-byte p1, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->mOpcode:B

    .line 79
    iput-object p4, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->mArgTypes:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    .line 80
    array-length p1, p4

    iput p1, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->mNumArgs:I

    return-void
.end method

.method public static getOpCodeForCode(I)Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;
    .locals 5

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 108
    invoke-static {}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->values()[Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 110
    invoke-virtual {v3}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->getCode()B

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;
    .locals 1

    .line 18
    const-class v0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;
    .locals 1

    .line 18
    sget-object v0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->$VALUES:[Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    return-object v0
.end method


# virtual methods
.method public getArgTypes()[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->mArgTypes:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    return-object v0
.end method

.method public getCode()B
    .locals 1

    .line 85
    iget-byte v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->mOpcode:B

    return v0
.end method

.method public getNumArgs()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->mNumArgs:I

    return v0
.end method
