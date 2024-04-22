.class public final enum Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;
.super Ljava/lang/Enum;
.source "UITranslator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

.field public static ENTITY_NAME:Ljava/lang/String;

.field public static final enum INSTANCE:Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

    aput-object v0, v1, v2

    .line 31
    sput-object v1, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

    const-string v0, "UITranslator"

    .line 35
    sput-object v0, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->ENTITY_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static GetFormattedLocale()Ljava/lang/String;
    .locals 3

    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Initialize(Landroid/content/Context;)V
    .locals 3

    .line 49
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

    iput-object p0, v0, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->mContext:Landroid/content/Context;

    .line 50
    sget-object p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->Initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->ENTITY_NAME:Ljava/lang/String;

    const-string v2, "ACTranslator failed to initialize."

    invoke-static {v0, v1, v2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static Invalidate()V
    .locals 1

    .line 65
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->Free()V

    return-void
.end method

.method public static RegisterListener(Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;)V
    .locals 1

    .line 94
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->RegisterListener(Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;)V

    return-void
.end method

.method public static UnregisterListener(Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;)V
    .locals 1

    .line 99
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->UnregisterListener(Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;)V

    return-void
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 2

    .line 75
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->Translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 85
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->Translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static translateTextInView(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    .line 106
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->ENTITY_NAME:Ljava/lang/String;

    const-string v1, "Unexpected NULL parameter in translateTextInView"

    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 112
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 116
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 117
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 119
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 120
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_2
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 127
    check-cast p0, Landroid/widget/TextView;

    .line 128
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;
    .locals 1

    .line 31
    const-class v0, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;
    .locals 1

    .line 31
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;

    return-object v0
.end method
