.class public Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "ViewPagerFragmentAdapter.java"


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->arrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
