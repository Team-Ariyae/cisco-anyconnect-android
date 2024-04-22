.class final enum Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;
.super Ljava/lang/Enum;
.source "LocalizationManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

.field public static final enum ImportServerL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

.field public static final enum RestoreDefaultL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;


# instance fields
.field private final mFailureMsg:I

.field private final mPrompt:Z

.field private final mPromptMsg:I

.field private final mRequestId:I

.field private final mRequestMsg:I

.field private final mSuccessMsg:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 56
    new-instance v9, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    const-string v1, "RestoreDefaultL10n"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f1102e4

    const v5, 0x7f1102e1

    const v6, 0x7f1102e5

    const/4 v7, 0x1

    const v8, 0x7f1102e3

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->RestoreDefaultL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    .line 63
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    const-string v11, "ImportServerL10n"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const v14, 0x7f1102d8

    const v15, 0x7f1102d6

    const v16, 0x7f1102d9

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->ImportServerL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 54
    sput-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZI)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mRequestId:I

    .line 80
    iput p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mRequestMsg:I

    .line 81
    iput p5, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mFailureMsg:I

    .line 82
    iput p6, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mSuccessMsg:I

    .line 83
    iput-boolean p7, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mPrompt:Z

    .line 84
    iput p8, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mPromptMsg:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;
    .locals 1

    .line 54
    const-class v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;
    .locals 1

    .line 54
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    return-object v0
.end method


# virtual methods
.method public getFailureMsg()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mFailureMsg:I

    return v0
.end method

.method public getPromptMsg()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mPromptMsg:I

    return v0
.end method

.method public getRequestId()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mRequestId:I

    return v0
.end method

.method public getRequestMsg()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mRequestMsg:I

    return v0
.end method

.method public getSuccessMsg()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mSuccessMsg:I

    return v0
.end method

.method public shouldPrompt()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->mPrompt:Z

    return v0
.end method
