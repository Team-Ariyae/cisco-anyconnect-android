.class public Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NVMAupActivity.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMAupActivity"


# instance fields
.field private final AUP_ACTIVITY_BANNER:Ljava/lang/String;

.field private final AUP_BUTTON_ID:Ljava/lang/String;

.field private final AUP_LAYOUT_ID:Ljava/lang/String;

.field private final AUP_TEXT_ID:Ljava/lang/String;

.field private final R_ID:Ljava/lang/String;

.field private final R_LAYOUT:Ljava/lang/String;

.field private final R_STRING:Ljava/lang/String;

.field private meteredNWControlCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "id"

    .line 38
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->R_ID:Ljava/lang/String;

    const-string v0, "layout"

    .line 39
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->R_LAYOUT:Ljava/lang/String;

    const-string v0, "string"

    .line 40
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->R_STRING:Ljava/lang/String;

    const-string v0, "aup_txt"

    .line 41
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->AUP_TEXT_ID:Ljava/lang/String;

    const-string v0, "close_btn"

    .line 42
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->AUP_BUTTON_ID:Ljava/lang/String;

    const-string v0, "aup_layout"

    .line 43
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->AUP_LAYOUT_ID:Ljava/lang/String;

    const-string v0, "nvm_aup_banner"

    .line 44
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->AUP_ACTIVITY_BANNER:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->meteredNWControlCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;Landroid/content/Intent;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->notifyNVMService(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyNVMService(Landroid/content/Intent;)V
    .locals 4

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "aup_displayed"

    const/4 v2, 0x0

    .line 157
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 156
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "userpref_exportonmobiledata"

    .line 158
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 159
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private updateUI(Landroid/content/Intent;)V
    .locals 5

    .line 114
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cancelNotification(Landroid/content/Context;I)V

    const-string v0, "NVMAupActivity"

    if-eqz p1, :cond_5

    .line 117
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->meteredNWControlCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    const-string/jumbo v3, "userpref_exportonmobiledata"

    const/4 v4, 0x0

    .line 118
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string v1, "profilepref_ exportonmobiledata"

    const/4 v3, 0x1

    .line 119
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->meteredNWControlCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->meteredNWControlCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_1
    :goto_0
    const-string v1, "AUP"

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->meteredNWControlCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 128
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "Nothing to show"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->finish()V

    :cond_2
    if-eqz p1, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aup_txt"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 134
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0xf

    .line 135
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto :goto_1

    .line 137
    :cond_3
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "Textview with id aup_txt is not found"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_4
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "AUP String is empty"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_5
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "Intent is null"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->finish()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "NVMAupActivity"

    .line 50
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "string"

    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nvm_aup_banner"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->setTitle(I)V

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "Unable to remove default icon : "

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aup_layout"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->setContentView(I)V

    .line 65
    sget v1, Lcom/cisco/anyconnect/nvm/R$id;->export_control_checkbox:I

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->meteredNWControlCheckBox:Landroid/widget/CheckBox;

    .line 67
    new-instance v2, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity$1;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity$1;-><init>(Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->updateUI(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "close_btn"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 81
    new-instance v0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity$2;-><init>(Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 88
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "Button with id close_btn is not found"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "aup_displayed"

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->notifyNVMService(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->updateUI(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
