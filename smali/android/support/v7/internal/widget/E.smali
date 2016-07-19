.class final Landroid/support/v7/internal/widget/E;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/C;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/C;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Landroid/support/v7/internal/widget/E;->a:Landroid/support/v7/internal/widget/C;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/C;B)V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/E;-><init>(Landroid/support/v7/internal/widget/C;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v7/internal/widget/E;->a:Landroid/support/v7/internal/widget/C;

    invoke-static {v0}, Landroid/support/v7/internal/widget/C;->a(Landroid/support/v7/internal/widget/C;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Landroid/support/v7/internal/widget/E;->a:Landroid/support/v7/internal/widget/C;

    invoke-static {v0}, Landroid/support/v7/internal/widget/C;->a(Landroid/support/v7/internal/widget/C;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/G;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/G;->a()Landroid/support/v7/app/b;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 560
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 565
    if-nez p2, :cond_0

    .line 566
    iget-object v1, p0, Landroid/support/v7/internal/widget/E;->a:Landroid/support/v7/internal/widget/C;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/E;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/b;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/support/v7/internal/widget/C;->a(Landroid/support/v7/internal/widget/C;Landroid/support/v7/app/b;Z)Landroid/support/v7/internal/widget/G;

    move-result-object p2

    .line 570
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 568
    check-cast v0, Landroid/support/v7/internal/widget/G;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/E;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/G;->a(Landroid/support/v7/app/b;)V

    goto :goto_0
.end method
