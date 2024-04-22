.class Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference$1;
.super Ljava/lang/Object;
.source "AnyConnectCheckboxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->-$$Nest$mupdateFromUi(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;Z)V

    return-void
.end method
