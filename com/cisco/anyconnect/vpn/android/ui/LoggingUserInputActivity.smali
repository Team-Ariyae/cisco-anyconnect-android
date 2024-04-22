.class public Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "LoggingUserInputActivity.java"


# static fields
.field public static final EMAIL_PROB:Ljava/lang/String; = "problem_statement"

.field public static final EMAIL_STEPS:Ljava/lang/String; = "reproduce_steps"

.field public static final EMAIL_SUBMIT:Ljava/lang/String; = "submit"

.field public static final EMAIL_TIME:Ljava/lang/String; = "time_of_occurrence"


# instance fields
.field private final ENTITY_NAME:Ljava/lang/String;

.field private mEmailProblem:Ljava/lang/String;

.field private mEmailReproSteps:Ljava/lang/String;

.field private mEmailTime:Ljava/util/Date;

.field private mProblemET:Lcom/google/android/material/textfield/TextInputLayout;

.field private mReproduceET:Lcom/google/android/material/textfield/TextInputLayout;

.field private mTimeET:Lcom/google/android/material/textfield/TextInputLayout;

.field private mTimePicker:Lcom/google/android/material/timepicker/MaterialTimePicker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProblemET(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mProblemET:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReproduceET(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mReproduceET:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    const-string v0, "LoggingUserInputActivity"

    .line 39
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->ENTITY_NAME:Ljava/lang/String;

    return-void
.end method

.method private initLayout()V
    .locals 3

    const v0, 0x7f0d00d5

    .line 63
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->setContentView(I)V

    const v0, 0x7f0a0248

    .line 65
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mProblemET:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a0252

    .line 66
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mReproduceET:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a0157

    .line 67
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimeET:Lcom/google/android/material/textfield/TextInputLayout;

    .line 68
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mProblemET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mReproduceET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimeET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailProblem:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mProblemET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailProblem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailReproSteps:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mReproduceET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailReproSteps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailTime:Ljava/util/Date;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailTime:Ljava/util/Date;

    .line 83
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 84
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimeET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mProblemET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$1;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mReproduceET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$2;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimeET:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 116
    new-instance v1, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;

    invoke-direct {v1}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;-><init>()V

    const v2, 0x7f1102c8

    .line 117
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->setTitleText(Ljava/lang/CharSequence;)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;

    move-result-object v1

    .line 118
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->setTimeFormat(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailTime:Ljava/util/Date;

    .line 120
    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->setHour(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailTime:Ljava/util/Date;

    .line 121
    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->setMinute(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;

    move-result-object v1

    const v2, 0x7f120114

    .line 122
    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->setTheme(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->build()Lcom/google/android/material/timepicker/MaterialTimePicker;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimePicker:Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 126
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->addOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z

    .line 138
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimeET:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimeET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$$ExternalSyntheticLambda2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01d8

    .line 141
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;

    const v1, 0x7f1100e6

    .line 142
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f110050

    .line 143
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$$ExternalSyntheticLambda3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$$ExternalSyntheticLambda4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 69
    :cond_4
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "LoggingUserInputActivity"

    const-string v2, "failed to get edit text"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendResultBack(Z)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mProblemET:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailProblem:Ljava/lang/String;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mReproduceET:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailReproSteps:Ljava/lang/String;

    .line 179
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "problem_statement"

    .line 180
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailProblem:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reproduce_steps"

    .line 181
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailReproSteps:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "time_of_occurrence"

    .line 182
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailTime:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "submit"

    .line 183
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->setResult(ILandroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->finish()V

    return-void
.end method


# virtual methods
.method synthetic lambda$initLayout$0$com-cisco-anyconnect-vpn-android-ui-LoggingUserInputActivity(Ljava/text/SimpleDateFormat;Landroid/view/View;)V
    .locals 1

    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 128
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimePicker:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getHour()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/Date;->setHours(I)V

    .line 129
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimePicker:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getMinute()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 131
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimeET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailTime:Ljava/util/Date;

    return-void
.end method

.method synthetic lambda$initLayout$1$com-cisco-anyconnect-vpn-android-ui-LoggingUserInputActivity(Landroid/view/View;)V
    .locals 2

    .line 138
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimePicker:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initLayout$2$com-cisco-anyconnect-vpn-android-ui-LoggingUserInputActivity(Landroid/view/View;)V
    .locals 2

    .line 139
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mTimePicker:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initLayout$3$com-cisco-anyconnect-vpn-android-ui-LoggingUserInputActivity(Landroid/view/View;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mProblemET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mReproduceET:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 146
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->sendResultBack(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f11032a

    .line 148
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f110269

    .line 149
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initLayout$4$com-cisco-anyconnect-vpn-android-ui-LoggingUserInputActivity(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->sendResultBack(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "problem_statement"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailProblem:Ljava/lang/String;

    const-string v0, "reproduce_steps"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailReproSteps:Ljava/lang/String;

    const-string v0, "time_of_occurrence"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->mEmailTime:Ljava/util/Date;

    .line 59
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->initLayout()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->sendResultBack(Z)V

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
