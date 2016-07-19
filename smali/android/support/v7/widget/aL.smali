.class final Landroid/support/v7/widget/aL;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/aJ;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 9529
    iput-object p1, p0, Landroid/support/v7/widget/aL;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;B)V
    .locals 0

    .prologue
    .line 9529
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aL;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/aY;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9533
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aY;->setIsRecyclable(Z)V

    .line 9534
    iget-object v0, p1, Landroid/support/v7/widget/aY;->mShadowedHolder:Landroid/support/v7/widget/aY;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/aY;->mShadowingHolder:Landroid/support/v7/widget/aY;

    if-nez v0, :cond_0

    .line 9535
    iput-object v1, p1, Landroid/support/v7/widget/aY;->mShadowedHolder:Landroid/support/v7/widget/aY;

    .line 9539
    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/aY;->mShadowingHolder:Landroid/support/v7/widget/aY;

    .line 9540
    # invokes: Landroid/support/v7/widget/aY;->shouldBeKeptAsChild()Z
    invoke-static {p1}, Landroid/support/v7/widget/aY;->access$6100(Landroid/support/v7/widget/aY;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9541
    iget-object v0, p0, Landroid/support/v7/widget/aL;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    # invokes: Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$6200(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9542
    iget-object v0, p0, Landroid/support/v7/widget/aL;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9545
    :cond_1
    return-void
.end method
