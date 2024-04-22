.class public Lcom/cisco/anyconnect/vpn/jni/PromptEntry;
.super Ljava/lang/Object;
.source "PromptEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;,
        Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;
    }
.end annotation


# static fields
.field public static final PROMPT_ENTRY_NAMES:[Ljava/lang/String;

.field public static final PROMPT_ENTRY_NAME_BANNER:Ljava/lang/String; = "banner"

.field public static final PROMPT_ENTRY_NAME_GROUP_LIST:Ljava/lang/String; = "group_list"

.field public static final PROMPT_ENTRY_NAME_PASSWORD:Ljava/lang/String; = "password"

.field public static final PROMPT_ENTRY_NAME_PIN:Ljava/lang/String; = "pin"

.field public static final PROMPT_ENTRY_NAME_SECONDARY_PASSWORD:Ljava/lang/String; = "secondary_password"

.field public static final PROMPT_ENTRY_NAME_SECONDARY_USERNAME:Ljava/lang/String; = "secondary_username"

.field public static final PROMPT_ENTRY_NAME_SSO_TOKEN:Ljava/lang/String; = "sso-token"

.field public static final PROMPT_ENTRY_NAME_USERNAME:Ljava/lang/String; = "username"

.field public static final PROMPT_ENTRY_NAME_VERIFY_PIN:Ljava/lang/String; = "verify_pin"


# instance fields
.field public comboKeys:[Ljava/lang/String;

.field public comboValues:[Ljava/lang/String;

.field public isEnabled:Z

.field public isEntryGroup:Z

.field public isVisible:Z

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public singleAttributes:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;

.field public type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "secondary_username"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "secondary_password"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "group_list"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "banner"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "verify_pin"

    aput-object v2, v0, v1

    .line 48
    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->PROMPT_ENTRY_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrimmedLabel()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->label:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PromptEntry:\nlabel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nname: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nvalue: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ntype: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nisEntryGroup: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEntryGroup:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nisEnabled: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEnabled:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nisVisible: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nsingleAttributes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->singleAttributes:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
