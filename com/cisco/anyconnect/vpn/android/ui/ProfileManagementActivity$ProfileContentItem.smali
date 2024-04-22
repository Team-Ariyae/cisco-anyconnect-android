.class final enum Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;
.super Ljava/lang/Enum;
.source "ProfileManagementActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter$ExpandableListItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProfileContentItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;",
        ">;",
        "Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter$ExpandableListItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;

.field public static final enum PROFILE_CONTENT:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;


# instance fields
.field private final mStringResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 90
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;

    const v1, 0x7f110256

    const-string v2, "PROFILE_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;->PROFILE_CONTENT:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;

    aput-object v0, v1, v3

    .line 88
    sput-object v1, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;->mStringResource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;
    .locals 1

    .line 88
    const-class v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;
    .locals 1

    .line 88
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;

    return-object v0
.end method


# virtual methods
.method public getStringResource()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;->mStringResource:I

    return v0
.end method
