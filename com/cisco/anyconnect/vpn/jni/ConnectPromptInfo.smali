.class public Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;
.super Ljava/lang/Object;
.source "ConnectPromptInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;,
        Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;
    }
.end annotation


# static fields
.field public static final NEGATIVE_BUTTON_ID:I = 0x1

.field public static final NEUTRAL_BUTTON_ID:I = 0x3

.field public static final POSITIVE_BUTTON_ID:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public allowSaveCredentials:Z

.field public cancelButtonLabel:Ljava/lang/String;

.field public entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

.field public hasAuthenticationError:Z

.field public hasEnrollmentCA:Z

.field public hasError:Z

.field public isAutoSubmit:Z

.field public isCancelled:Z

.field public isEmpty:Z

.field public message:Ljava/lang/String;

.field public neutralButtonLabel:Ljava/lang/String;

.field public neutralButtonName:Ljava/lang/String;

.field public responseError:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

.field public shouldSaveCredentials:Z

.field public submitButtonName:Ljava/lang/String;

.field public type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public useEnrollmentCA:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->allowSaveCredentials:Z

    .line 69
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->shouldSaveCredentials:Z

    return-void
.end method


# virtual methods
.method public getCurrentGroup()Ljava/lang/String;
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 111
    iget-boolean v4, v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Combo:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 112
    iget-object v0, v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry;
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 93
    iget-object v4, v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasMultipleGroups()Z
    .locals 7

    .line 101
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 102
    iget-boolean v5, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v6, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Combo:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v5, v6, :cond_0

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectPromptInfo:\ntype: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nhasEnrollmentCA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->hasEnrollmentCA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nuseEnrollmentCA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->useEnrollmentCA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nisAutoSubmit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isAutoSubmit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
