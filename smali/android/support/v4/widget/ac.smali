.class final Landroid/support/v4/widget/ac;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Landroid/support/v4/widget/ab;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ab;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 176
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mRefreshing:Z
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$000(Landroid/support/v4/widget/ab;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$100(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 179
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$100(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->start()V

    .line 180
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mNotify:Z
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$200(Landroid/support/v4/widget/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mListener:Landroid/support/v4/widget/ak;
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$300(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mListener:Landroid/support/v4/widget/ak;
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$300(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/ak;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/widget/ak;->onRefresh()V

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;
    invoke-static {v1}, Landroid/support/v4/widget/ab;->access$400(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getTop()I

    move-result v1

    # setter for: Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I
    invoke-static {v0, v1}, Landroid/support/v4/widget/ab;->access$802(Landroid/support/v4/widget/ab;I)I

    .line 198
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$100(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->stop()V

    .line 187
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$400(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/d;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # invokes: Landroid/support/v4/widget/ab;->setColorViewAlpha(I)V
    invoke-static {v0, v2}, Landroid/support/v4/widget/ab;->access$500(Landroid/support/v4/widget/ab;I)V

    .line 190
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mScale:Z
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$600(Landroid/support/v4/widget/ab;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    const/4 v1, 0x0

    # invokes: Landroid/support/v4/widget/ab;->setAnimationProgress(F)V
    invoke-static {v0, v1}, Landroid/support/v4/widget/ab;->access$700(Landroid/support/v4/widget/ab;F)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    iget v1, v1, Landroid/support/v4/widget/ab;->mOriginalOffsetTop:I

    iget-object v2, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I
    invoke-static {v2}, Landroid/support/v4/widget/ab;->access$800(Landroid/support/v4/widget/ab;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    # invokes: Landroid/support/v4/widget/ab;->setTargetOffsetTopAndBottom(IZ)V
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/ab;->access$900(Landroid/support/v4/widget/ab;IZ)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method
