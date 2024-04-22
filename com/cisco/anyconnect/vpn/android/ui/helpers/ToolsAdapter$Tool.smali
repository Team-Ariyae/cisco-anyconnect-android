.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;
.super Ljava/lang/Object;
.source "ToolsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tool"
.end annotation


# instance fields
.field private final mClickCb:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

.field private final mDescription:Ljava/lang/String;

.field private mEnabled:Z

.field private final mName:Ljava/lang/String;

.field private final mRequestId:I

.field private final mResultCb:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDescription(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmName(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mDescription:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mRequestId:I

    .line 62
    iput-object p5, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mResultCb:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;

    .line 63
    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mClickCb:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    const/4 p3, 0x1

    .line 64
    iput-boolean p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mEnabled:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name, desc, and clickCb are required to not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickCB()Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mClickCb:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mRequestId:I

    return v0
.end method

.method public getResultCB()Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mResultCb:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;

    return-object v0
.end method

.method public hasCallback()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mResultCb:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->mEnabled:Z

    return-void
.end method
