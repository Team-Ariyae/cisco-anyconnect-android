.class public Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;
.source "DiagnosticsActivity.java"


# static fields
.field private static final CERT_MANAGEMENT_REQUEST_ID:I = 0x3

.field private static final ENTITY_NAME:Ljava/lang/String; = "DiagnosticsActivity"

.field private static final LOCALIZATION_MANAGEMENT_REQUEST_ID:I = 0x5

.field private static final LOGGING_REQUEST_ID:I = 0x6

.field private static final PROFILE_MANAGEMENT_REQUEST_ID:I = 0x4

.field private static final QR_SCAN_REQUEST_ID:I = 0x7


# instance fields
.field private onToolResult:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;-><init>()V

    .line 126
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;->onToolResult:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;

    return-void
.end method


# virtual methods
.method protected initializeToolList()Ljava/util/LinkedList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x3

    const-string v2, "com.cisco.anyconnect.vpn.android.CERTIFICATE_MANAGEMENT_SHOW_INTENT"

    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;->getDefaultOnClickHander(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    move-result-object v8

    .line 59
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    const v2, 0x7f1102cc

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f1102cd

    .line 60
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;)V

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.cisco.anyconnect.vpn.android.PROFILE_MANAGEMENT_SHOW_INTENT"

    const/4 v2, 0x4

    .line 67
    invoke-virtual {p0, v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;->getDefaultOnClickHander(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    move-result-object v8

    .line 70
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    const v2, 0x7f1102df

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f1102de

    .line 71
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;)V

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.cisco.anyconnect.vpn.android.LOCALIZATION_MANAGEMENT_SHOW_INTENT"

    const/4 v2, 0x5

    .line 78
    invoke-virtual {p0, v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;->getDefaultOnClickHander(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    move-result-object v8

    .line 81
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    const v2, 0x7f1102d2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f1102d0

    .line 82
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;)V

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.cisco.anyconnect.vpn.android.LOGGING_SHOW_INTENT"

    const/4 v2, 0x6

    .line 89
    invoke-virtual {p0, v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;->getDefaultOnClickHander(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    move-result-object v8

    .line 92
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    const v2, 0x7f1102db

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f1102da

    .line 93
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;)V

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isChromebook(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.cisco.anyconnect.vpn.android.QR_SCAN_SHOW_INTENT"

    const/16 v2, 0xd07

    .line 104
    invoke-virtual {p0, v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;->getDefaultOnClickHander(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    move-result-object v8

    .line 107
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    const v2, 0x7f1102ca

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f11026d

    .line 108
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd07

    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;->onToolResult:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;)V

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "DiagnosticsActivity"

    const-string v0, "onCreate()"

    .line 122
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11011e

    .line 123
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
