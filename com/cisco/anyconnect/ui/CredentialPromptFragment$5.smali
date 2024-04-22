.class Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;
.super Ljava/lang/Object;
.source "CredentialPromptFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->updateGroupDropdownSelectorSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 382
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 383
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetautoSpCombo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 385
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {v2}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetautoSpCombo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 386
    iget-object v3, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {v3}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetautoSpCombo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 387
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 388
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x41400000    # 12.0f

    .line 389
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 394
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 395
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    const v3, 0x7f11001c

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 396
    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->measure(II)V

    if-lez v0, :cond_0

    .line 397
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {v2}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetcomboListSize(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    mul-int v2, v2, v1

    if-le v2, v0, :cond_0

    .line 398
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetautoSpCombo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setDropDownHeight(I)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetautoSpCombo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
